import os
import pathlib


class Parameters():
    def __init__(self, rovers, people, supplies, warehouses, settlements):
        self.rovers      = rovers
        self.people      = people
        self.supplies    = supplies
        self.warehouses  = warehouses
        self.settlements = settlements


class Problem():
    def __init__(self, level = 'Nivel basico', problem = '1') -> None:
        self.level = level
        self.problem = problem
        self.paths = self.find_paths()


    def find_paths(self) -> dict:
        project_path = str(pathlib.Path().resolve())
        file_path = str(pathlib.Path(__file__).parent.resolve())

        folder_path = file_path[len(project_path):]
        read_output = '.' + folder_path.replace('\\', '/') + '/output.txt'
        
        path = file_path[:-6].replace('\\', '/')
        executable = path + 'metricff.exe'
        domain = path + self.level + '/practica-domain-' + self.level.lower().replace(" ", "") + '.pddl'
        problem = path + self.level + '/practica-prob-' + self.problem + '.pddl'
        write_problem = '.' + problem[len(project_path):]
        output = path + r'Python/output.txt'

        return {'executable': executable, 
                'domain': domain, 
                'problem': problem, 
                'output': output, 
                'read_output': read_output,
                'write_problem': write_problem}


    def generate_problem(self, objects, init) -> Parameters:
        assert self.problem == "custom", "The Problem should be custom"

        rovers      = []
        people      = []
        supplies    = []
        warehouses  = []
        settlements = []
        return Parameters(rovers, people, supplies, warehouses, settlements)


    def write_problem(self, params) -> None:
        assert self.problem == "custom", "The Problem should be custom"
        with open(self.paths['write_problem'], 'r') as f:
            lines = f.readlines()

        print(lines)
        
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
