import os
import pathlib


def generate_problem():
    pass


def execute():
    path = str(pathlib.Path(__file__).parent.resolve())
    path = path[:-6].replace('\\', '/')

    executable = path + 'metricff.exe'
    domain = '"' + path + r'Nivel basico/practica-domain-nivelbasico.pddl"'
    problem = '"' + path + r'Nivel basico/practica-prob-1.pddl"'
    output = '"' + path + r'Python/output.txt"'

    cmd = f'{executable} -o {domain} -f {problem} > {output}'
    os.system(cmd)


def read_output():
    with open('./python/output.txt') as f:
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

    print(steps)
    print(times)


execute()
read_output()
