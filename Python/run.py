from generator import Problem


problem = Problem('Extension 3', 'nivel_basico', 'custom')

objects, init = problem.generate_problem()
problem.write_problem(objects, init)
problem.execute()
problem.read_output()
