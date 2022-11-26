from generator import Problem


problem = Problem('Extension 2', 'extension2_2', 'custom')

objects, init = problem.generate_problem(map=[(1, 2), (2, 3), (3, 4), (4, 1)])

# objects = [
#     ['Curiosity', 'rover'], 
#     ['doctor', 'oculista', 'personal'], 
#     ['patatas', 'zanahorias', 'suministro'], 
#     ['al1', 'almacen'], 
#     ['as1', 'as2', 'asentamiento']
# ]

# init = [
#     'aparcado Curiosity al1',
#     'conectado as1 al1', 'conectado al1 as1',
#     'conectado as2 al1', 'conectado al1 as2',
#     'en_base zanahoria al1',
#     'en_base patata al1',
#     'en_base doctor as1',
#     'en_base oculista as2',
#     'pedido zanahoria as1',
#     'pedido patata as1',
#     'pedido zanahoria as1',
#     'pedido doctor as2',
#     'pedido zanahoria as1',
#     'pedido oculista as1'
# ]


# objects, init = problem.generate_problem(2, 10, 2, 5, 2, [], 444)

print(problem.paths)
problem.write_problem(objects, init)
