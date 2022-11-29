(define (problem RoversSuministrosPersonal) (:domain BasesMarte_nivel_basico)

    (:objects
        rover0 - rover
        p0 p1 p2 p3 - personal
        s0 s1 s2 s3 - suministro
        al1 al3 - almacen
        as1 as4 as2 - asentamiento
        id0 id1 id2 id3 id4 id5 id6 id7 - idpedido
    )

    (:init
        (= (p) 2)
        (= (s) 1)
        (= (CombustibleTotal) 0)
        (= (DecresimientoCombusitible) 0)
        (= (Prioridad id0) 2)
        (= (Prioridad id1) 1)
        (= (Prioridad id2) 1)
        (= (Prioridad id3) 1)
        (= (Prioridad id4) 3)
        (= (Prioridad id5) 1)
        (= (Prioridad id6) 3)
        (= (Prioridad id7) 3)
        (conectado al1 as2)
        (conectado as2 al1)
        (conectado as2 al3)
        (conectado al3 as2)
        (conectado al3 as4)
        (conectado as4 al3)
        (conectado as4 al1)
        (conectado al1 as4)
        (aparcado rover0 al3)
        ((= (PersonalCargado rover0) 0))
        ((= (SuministroCargado rover0) 0))
        ((= (CombustibleRestante rover0) 10))
        (en_base p0 as2)
        (pedido p0 as4 0)
        (en_base p1 as2)
        (pedido p1 as4 1)
        (en_base p2 as1)
        (pedido p2 as4 2)
        (en_base p3 as1)
        (pedido p3 as4 3)
        (en_base s0 al1)
        (pedido s0 as2 4)
        (en_base s1 al3)
        (pedido s1 as1 5)
        (en_base s2 al1)
        (pedido s2 as2 6)
        (en_base s3 al3)
        (pedido s3 as1 7)
    )

    (:goal (forall (?t - transportable) (suministrado ?t)))
    (:metric maximize (AcumPrioridad))

)
