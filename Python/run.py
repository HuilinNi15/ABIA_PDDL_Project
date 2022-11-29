from generator import Problem


problem = Problem('Nivel basico', 'nivel_basico', 'custom')
print(problem.paths)


n_rovers = 1
suministros = 4
personal = 4
mars_map = [(1, 2), (2, 3), (3, 4), (4, 1)]
r_map = 0.5
seed = 1234

objects, init = problem.generate_problem(
    n_rovers, suministros, personal, mars_map, r_map, seed)

problem.write_problem(objects, init)
problem.execute()
problem.read_output()
