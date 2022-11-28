from generator import Problem


problem = Problem('Nivel basico', 'nivel_basico', 'custom')

objects, init = problem.generate_problem()
problem.write_problem(objects, init)
problem.execute()
problem.read_output()
