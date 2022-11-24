from generator import Problem, Parameters


parameters = Parameters(['Curiosity'], ['doctor', 'oculista'], ['patatas', 'zanahorias'], ['al1'], ['as1', 'as2'])

problem = Problem('Nivel basico', 'custom')
print(problem.paths)
problem.write_problem(parameters)