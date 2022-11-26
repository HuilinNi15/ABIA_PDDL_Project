import os
import pathlib
import random


class Problem():
    def __init__(self, level = 'Nivel basico', domain = 'nivelbasico', problem = '1') -> None:
        self.level = level
        self.domain = domain
        self.problem = problem
        self.paths = self.find_paths()


    def find_paths(self) -> dict:
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


    def generate_problem(self, n_rovers=1, n_transportables=6, r_transportables=0.5, map=[(1, 2), (2, 3), (3, 4), (4, 1)], r_map=0.5, seed=1234):
        assert self.problem == "custom", "The Problem should be custom"

        init = []

        # ---------------------------------- BASES ----------------------------------
        bases = {}
        warehouses  = []
        settlements = []
        rand = random.Random(seed)
        for i in map:
            if i[0] not in bases:
                base = rand.choices(['as', 'al'], weights=[r_map, 1 - r_map], k=1)[0]
                bases[i[0]] = base + str(i[0])
                if base == 'as':
                    warehouses.append(bases[i[0]])
                else: 
                    settlements.append(bases[i[0]])
            if i[1] not in bases:
                base = rand.choices(['as', 'al'], weights=[r_map, 1 - r_map], k=1)[0]
                bases[i[1]] = base + str(i[1])
                if base == 'as':
                    warehouses.append(bases[i[1]])
                else: 
                    settlements.append(bases[i[1]])
            init.append(f'conectado {bases[i[0]]} {bases[i[1]]}')


        # ---------------------------------- ROVERS ----------------------------------
        rovers      = []
        

        people      = []
        supplies    = []
        return [rovers, people, supplies, warehouses, settlements], []


    def write_param(self, param):
        string = ""
        for i in param: 
            string += i
        if len(string) > 0:
            return string

    def write_problem(self, objects, init) -> None:
        assert self.problem == "custom", "The Problem should be custom"
        with open(self.paths['write_problem'], 'r') as f:
            lines = f.readlines()

        added_lines = []
        for i in objects:
            string = "        "
            for j in i[:-1]:
                string += j + " "
            if len(string) > 0:
                string += "- " + i[-1] + "\n"
                added_lines.append(string)
        
        for j in init:
            pass

        with open(self.paths['write_problem'], 'w') as file:
            file.writelines(lines)


    def execute(self) -> None:
        cmd = f'{self.paths["executable"]} -o "{self.paths["domain"]}" -f "{self.paths["problem"]}" > "{self.paths["output"]}"'
        os.system(cmd)

    
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
                    line = line[15:-1]
                    line = [line[:4], line[5:]]
                    times.append(line)

            elif add_steps:
                if len(line) > 8:
                    line = line[11:-1].split()
                    steps.append(line)
