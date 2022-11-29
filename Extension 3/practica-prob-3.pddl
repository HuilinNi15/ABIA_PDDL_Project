(define (problem RoversSuministrosPersonal)
    (:domain BasesMarte_extension3)

    (:objects
        as1 as2 as3 as4 - asentamiento
        al1 - almacen
        Curiosity - rover
        zanahoria patata - suministro
        doctor - personal
        a001 a002 a003 a004 a005 a006 a007 a008 a009 a010 - idpedido
    )

    (:init
        (= (p) 2)
        (= (s) 1)
        (= (PersonalCargado Curiosity) 0)
        (= (SuministroCargado Curiosity) 0)
        (= (CombustibleRestante Curiosity) 0)
        (= (DecresimientoCombusitible) 1)
        (= (CombustibleTotal) 0)
        (= (AcumPrioridad) 0)
        (aparcado Curiosity al1)
        (conectado as1 al1)
        (conectado al1 as1)
        (conectado as2 al1)
        (conectado al1 as2)
        (conectado as3 al1)
        (conectado al1 as3)
        (conectado as4 al1)
        (conectado al1 as4)
        (en_base zanahoria al1)
        (en_base zanahoria al1)
        (en_base patata al1)
        (en_base patata al1)
        (en_base doctor as1)
        (en_base doctor as1)
        (pedido zanahoria as1 a001)
        (pedido zanahoria as2 a002)
        (pedido zanahoria as3 a003)
        (pedido zanahoria as4 a004)
        (pedido patata as1 a005)
        (pedido patata as3 a006)
        (pedido patata as4 a007)
        (pedido doctor as1 a008)
        (pedido doctor as2 a009)
        (pedido doctor as3 a010)

        (= (Prioridad a001) 1)
        (= (Prioridad a002) 2)
        (= (Prioridad a003) 3)
        (= (Prioridad a004) 3)
        (= (Prioridad a005) 3)
        (= (Prioridad a006) 2)
        (= (Prioridad a007) 1)
        (= (Prioridad a008) 3)
        (= (Prioridad a009) 1)
        (= (Prioridad a010) 2)
    )

    (:goal
        (forall
            (?t - transportable)
            (suministrado ?t))
    )

    (:metric maximize
        (AcumPrioridad)
    )
)