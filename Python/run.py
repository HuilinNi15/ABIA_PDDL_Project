from generator import Problem
import random as rand

problem = Problem('Nivel basico', 'nivel_basico', 'custom')
print(problem.paths)


n_rovers = 1
suministros = 100
personal = 100

mars_map = [(1, 2), (2, 3)]

warehouses = [2]
settlements = [1, 3]

r_map = 0.5
seed = rand.randint(1, 1000000000)
# seed = 1234

objects, init = problem.generate_problem(
    n_rovers, suministros, personal, mars_map, warehouses, settlements, r_map, seed)

problem.write_problem(objects, init)
problem.execute(optim=False)
problem.read_output()
print(seed)
