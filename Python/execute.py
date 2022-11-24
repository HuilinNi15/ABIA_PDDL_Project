import os
import pathlib


def execute(nivel = 'Nivel Basico', problema = '1'):
    path = str(pathlib.Path(__file__).parent.resolve())
    path = path[:-6].replace('\\', '/')

    executable = path + 'metricff.exe'
    domain = '"' + path + nivel + '/practica-domain-' + nivel.lower().replace(" ", "") + '.pddl"'
    problem = '"' + path + nivel + '/practica-prob-' + problema + '.pddl"'
    output = '"' + path + r'Python/output.txt"'

    cmd = f'{executable} -o {domain} -f {problem} > {output}'
    os.system(cmd)
