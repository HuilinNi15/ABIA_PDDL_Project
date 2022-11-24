(define (problem RoversSuministrosPersonal)
    (:domain BasesMarte_extension3)

    (:objects
        as1 as2 - asentamiento
        al1 - almacen
        Curiosity - rover
        zanahoria patata - suministro
        doctor oculista - personal
        a001 a002 a003 a004 a005 a006 - idpedido
    )

    (:init
        (= (p) 2)
        (= (s) 1)
        (= (PersonalCargado Curiosity) 0)
        (= (SuministroCargado Curiosity) 0)
        (= (CombustibleUtilizado Curiosity) 0)
        (= (CombustibleTotal) 0)
        (aparcado Curiosity al1)
        (conectado as1 al1)
        (conectado al1 as1)
        (conectado as2 al1)
        (conectado al1 as2)
        (en_base zanahoria al1)
        (en_base patata al1)
        (en_base doctor as1)
        (en_base oculista as2)
        (pedido zanahoria as1 a001)
        (pedido patata as1 a002)
        (pedido zanahoria as1 a003)
        (pedido doctor as2 a004)
        (pedido zanahoria as1 a005)
        (pedido oculista as1 a006)
        (= (Priodidad a001) 1)
        (= (Priodidad a002) 2)
        (= (Priodidad a003) 3)
        (= (Priodidad a004) 1)
        (= (Priodidad a005) 2)
        (= (Priodidad a006) 3)
    )

    (:goal
        (forall
            (?t - transportable)
            (suministrado ?t))
    )

    (:metric minimize
        (CombustibleTotal)
    )
)