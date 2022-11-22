import os
import pathlib

path = str(pathlib.Path(__file__).parent.resolve())
path = path[:-6].replace('\\', '/')

domain = '"' + path + r'Nivel basico/practica-domain-nivelbasico.pddl"'
problem = '"' + path + r'Nivel basico/practica-prob-1.pddl"'
executable = path + 'metricff.exe'

comand = f"{executable} -o {domain} -f {problem}"


stream = os.system(comand)
output = stream.read()

print(output)
