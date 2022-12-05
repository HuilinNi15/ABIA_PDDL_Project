from generator import Problem
import random as rand
import pandas as pd

problem = Problem('Nivel basico', 'nivel_basico', 'custom')
print(problem.paths)


n_rovers = 2
suministros = 20
personal = 10
optim = True

mars_map = [(1, 2), (2, 3), (3, 4)]
warehouses = [1, 3]
settlements = [4, 2]
r_map = 0.5

seeds = [1]

n = len(seeds)
results = []
for seed in seeds:
    warehouses = []
    settlements = []
    objects, init = problem.generate_problem(
        n_rovers, suministros, personal, mars_map, warehouses, settlements, r_map, seed)

    problem.write_problem(objects, init)
    problem.execute(optim)
    steps, times, result = problem.read_output()
    results.append(result)
mean = []

df = pd.DataFrame(results)
df = df.astype(float)
mean = df.mean()

print(results[0])
print('------------------------------------------')
print(f"Step: {mean[0]}")
print(f"Time: {mean[1]}")
print(f"easy actions: {mean[2]}")
print(f"hard actions: {mean[3]}")
print(f"facts: {mean[4]}")
print(f"actions: {mean[5]}")
print(f"relevant facts: {mean[6]}")
print(f"relevant fluents: {mean[7]}")
print(f"states: {mean[8]}")
print(f"depth: {mean[9]}")
print('------------------------------------------')
