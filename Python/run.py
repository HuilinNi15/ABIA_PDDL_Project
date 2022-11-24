from generator import Problem, Parameters


parameters = Parameters(['Curiosity'], ['doctor', 'oculista'], ['patatas', 'zanahorias'], ['al1'], ['as1', 'as2'])

problem = Problem('Extension 2', 'extension2_2', '2_22')
print(problem.paths)
problem.execute()