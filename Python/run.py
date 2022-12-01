from generator import Problem
import random as rand

problem = Problem('Extension 3', 'extension3', '3')
print(problem.paths)


n_rovers = 1
suministros = 2
personal = 2

mars_map = [(1, 2), (2, 3)]
warehouses = [2]
settlements = [1, 3]

_map = 0.5

for _ in range(1):
    seed = rand.randint(1, 1000000000)
    # seed = 637798822

    # objects, init = problem.generate_problem(
    # n_rovers, suministros, personal, mars_map, warehouses, settlements, r_map, seed)

    # problem.write_problem(objects, init)
    problem.execute(optim=True)
    problem.read_output()
    print(f'Seed: {seed}')
    print('------------------------------------------')
