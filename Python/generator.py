import pathlib
import random
import subprocess
import shlex


class Problem():

    def __init__(self, level='Extension 1', domain='nivelbasico', problem='1') -> None:
        self.level = level
        self.domain = domain
        self.problem = problem
        self.paths = self.__find_paths()

    def __find_paths(self) -> dict:
        project_path = str(pathlib.Path().resolve())
        file_path = str(pathlib.Path(__file__).parent.resolve())

        folder_path = file_path[len(project_path):]
        read_output = '.' + folder_path.replace('\\', '/') + '/output.txt'

        path = file_path[:-6].replace('\\', '/')
        executable = path + 'metricff.exe'
        domain = path + self.level + '/practica-domain-' + self.domain + '.pddl'
        problem = path + self.level + '/practica-prob-' + self.problem + '.pddl'
        write_problem = '.' + problem[len(project_path):]
        output = path + r'Python/output.txt'

        return {'executable': executable,
                'domain': domain,
                'problem': problem,
                'output': output,
                'read_output': read_output,
                'write_problem': write_problem}

    def generate_problem(self, n_rovers=1, suministros=4, personal=4, map=[(1, 2), (2, 3), (3, 4), (4, 1)], warehouses=[], settlements=[], r_map=0.5, seed=1234):
        assert self.problem == "custom", "The Problem should be custom"
        assert len(map) >= 2, "Map too small"
        assert n_rovers > 0 and (
            suministros > 0 or personal > 0), "To little supplies"
        init = []
        rand = random.Random(seed)

        # ---------------------------------- BASES ----------------------------------
        bases = {}
        priorities = []
        if self.level == 'Extension 3':  # -------------------------- EXTENSION 3
            for i in range(suministros + personal):
                priorities.append(f'id{i}')
                priority = rand.randint(1, 3)
                init.append(f"= (Prioridad id{i}) {priority}")
            priorities.append('idpedido')

        for i in map:
            for j in i:
                if j not in bases:
                    bases[j] = ""

        if not warehouses and not settlements:
            minimum = rand.choices(list(bases.keys()), k=3)
            bases[minimum[0]] = f"as{minimum[0]}"
            settlements.append(bases[minimum[0]])
            bases[minimum[1]] = f"as{minimum[1]}"
            settlements.append(bases[minimum[1]])
            bases[minimum[2]] = f"al{minimum[2]}"
            warehouses.append(bases[minimum[2]])

            for i in bases.keys():
                if bases[i] == "":
                    base = rand.choices(['as', 'al'], weights=[
                                        r_map, 1 - r_map], k=1)[0]
                    bases[i] = base + str(i)
                    if base == 'al':
                        warehouses.append(bases[i])
                    else:
                        settlements.append(bases[i])
        else:
            for i in warehouses:
                bases[i] = f"al{i}"

            for i in settlements:
                bases[i] = f"as{i}"

            warehouses = [f"al{i}" for i in warehouses]
            settlements = [f"as{i}" for i in settlements]

        for i in map:
            init.append(f'conectado {bases[i[0]]} {bases[i[1]]}')
            init.append(f'conectado {bases[i[1]]} {bases[i[0]]}')

        # Esto se podría eliminar???
        if len(warehouses) > 0:
            warehouses.append('almacen')
        if len(settlements) > 0:
            settlements.append('asentamiento')

        # ---------------------------------- ROVERS ----------------------------------
        rovers = []
        for i in range(n_rovers):
            rovers.append(f'rover{i}')
            base = rand.choice(list(bases.keys()))
            init.append(f'aparcado {rovers[i]} {bases[base]}')
            if self.level != 'Nivel basico':  # -------------------------- EXTENSIONES 1, 2, 3
                init.append(f'(= (PersonalCargado {rovers[i]}) 0)')
                init.append(f'(= (SuministroCargado {rovers[i]}) 0)')
                if self.level != 'Extension 1':  # -------------------------- EXTENSIONES 2, 3
                    init.append(f'(= (CombustibleRestante {rovers[i]}) 10)')
        rovers.append('rover')

        # ------------------------------ TRANSPORTABLES ------------------------------
        people = []
        for i in range(personal):
            people.append(f'p{i}')
            base = rand.choice(settlements[:-1])
            init.append(f'en_base {people[i]} {base}')
            base_pedido = rand.choice(settlements[:settlements.index(
                base)] + settlements[settlements.index(base) + 1:-1])
            if self.level == 'Extension 3':  # -------------------------- EXTENSION 3
                init.append(f'pedido {people[i]} {base_pedido} {i}')
            else:
                init.append(f'pedido {people[i]} {base_pedido}')

        people.append('personal')

        supplies = []
        for i in range(suministros):
            supplies.append(f's{i}')
            base = rand.choice(warehouses[:-1])
            init.append(f'en_base {supplies[i]} {base}')
            base_pedido = rand.choice(settlements[:-1])
            if self.level == 'Extension 3':  # -------------------------- EXTENSION 3
                init.append(
                    f'pedido {supplies[i]} {base_pedido} {personal + i}')
            else:
                init.append(f'pedido {supplies[i]} {base_pedido}')
        supplies.append('suministro')

        if self.level == 'Extension 3':  # -------------------------- EXTENSION 3
            return [rovers, people, supplies, warehouses, settlements, priorities], init
        else:
            return [rovers, people, supplies, warehouses, settlements], init

    def write_problem(self, objects, init) -> None:
        assert self.problem == "custom", "The Problem should be custom"

        lines = [
            f'(define (problem RoversSuministrosPersonal) (:domain BasesMarte_{self.domain})\n',
            '\n',
            '    (:objects\n'
        ]

        objects_lines = []
        for i in objects:
            string = "        "
            for j in i[:-1]:
                string += j + " "
            if len(string) > 0:
                string += "- " + i[-1] + "\n"
                objects_lines.append(string)

        lines += objects_lines
        lines += [
            '    )\n',
            '\n',
            '    (:init\n'
        ]

        init_lines = []
        if self.level != 'Nivel basico':
            init_lines += '        (= (p) 2)\n        (= (s) 1)\n'
            if self.level != 'Extension 1':
                init_lines += '        (= (CombustibleTotal) 0)\n'
                init_lines += '        (= (DecresimientoCombusitible) 0)\n'
        for j in init:
            init_lines.append(f'        ({j})\n')

        lines += init_lines
        lines += [
            '    )\n',
            '\n',
            '    (:goal (forall (?t - transportable) (suministrado ?t)))\n'
        ]

        if self.level == 'Extension 2':
            lines + ['    (:metric minimize (CombustibleTotal))\n']

        elif self.level == 'Extension 3':
            lines += ['    (:metric maximize (AcumPrioridad))\n']
        lines += ['\n',
                  ')\n']

        input = ""
        for i in lines:
            input += i
        # print(input)
        print(self.paths['write_problem'])
        with open(self.paths['write_problem'], 'w') as file:
            file.writelines(lines)

    def execute(self, optim=False) -> None:
        O = " -O " if optim else ""
        cmd = f'"{self.paths["executable"]}" {O}-o "{self.paths["domain"]}" -f "{self.paths["problem"]}"'
        output = subprocess.run(shlex.split(cmd), capture_output=True).stdout
        output = str(output).replace('\\n', '\n')
        print(output)
        with open(self.paths["output"], 'w') as f:
            f.writelines(str(output))

    def read_output(self):
        with open(self.paths['read_output']) as f:
            lines = f.readlines()

        steps = []
        times = []

        add_steps = False
        add_times = False
        for line in lines:
            if line[:4] == "step":
                add_steps = True

            if line[:4] == "time":
                add_times = True

            if add_times:
                if len(line) > 8:
                    line = line[15:-1].split()
                    times.append(line)

            elif add_steps:
                if len(line) > 8:
                    line = line[11:-1].split()
                    steps.append(line)

        print('------------------------------------------')
        print(f"Step: {len(steps)}")
        print(f"Time: {times[6][0]}")
        print(f"easy actions: {times[0][3]}")
        print(f"hard actions: {times[0][5]}")
        print(f"facts: {times[1][5]}")
        print(f"actions: {times[1][8]}")
        print(f"relevant facts: {times[2][6]}")
        print(f"relevant fluents: {times[2][9]}")
        print(f"states: {times[5][4]}")
        print(f"depth: {times[5][11]}")
        return steps, times
