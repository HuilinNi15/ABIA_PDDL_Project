(define (problem RoversSuministrosPersonal) (:domain BasesMarte_extension2_2)

    (:objects
        as1 as2 as3 as4 - asentamiento
        al1 - almacen
        Curiosity Spirit - rover
        zanahoria patata - suministro
        doctor oculista - personal
    )

    (:init
        (= (p) 2)
        (= (s) 1)

        (= (PersonalCargado Curiosity) 0)
        (= (SuministroCargado Curiosity) 0)
        (= (CombustibleRestante Curiosity) 10)

        (= (PersonalCargado Spirit) 0)
        (= (SuministroCargado Spirit) 0)
        (= (CombustibleRestante Spirit) 12)

        (= (CombustibleTotalUtilizado) 0)

        (aparcado Curiosity al1)
        (aparcado Spirit as4)

        (conectado as1 al1)
        (conectado al1 as1)

        (conectado as4 al1)
        (conectado al1 as4)

        (conectado as3 as2)
        (conectado as2 as3)

        (conectado as4 as3)
        (conectado as3 as4)

        (conectado as4 as1)
        (conectado as1 as4)

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

    (:metric minimize
        (CombustibleTotalUtilizado)
    )
)