(define (problem RoversSuministrosPersonal) (:domain BasesMarte_nivel_basico)
    
    (:objects 
        as1 as2 - asentamiento
        al1 - almacen 
        Curiosity - rover
        zanahoria patata - suministro
        doctor oculista - personal
    )

    (:init
        (aparcado Curiosity al1)
        (conectado as1 al1) (conectado al1 as1)
        (conectado as2 al1) (conectado al1 as2)
        (en_base zanahoria al1)
        (en_base patata al1)
        (en_base doctor as1)
        (en_base oculista as2)
        (pedido zanahoria as1)
        (pedido patata as1)
        (pedido zanahoria as1)
        (pedido doctor as2)
        (pedido zanahoria as1)
        (pedido oculista as1)
    )

    (:goal (forall (?t - transportable) (suministrado ?t)))
    
)

