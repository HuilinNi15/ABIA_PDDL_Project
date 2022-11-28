(define (problem RoversSuministrosPersonal) (:domain BasesMarte_extension2_2)

    (:objects
        rover0 - rover
        p0 p1 p2 p3 - personal
        s0 s1 s2 s3 - suministro
        al1 al3 - almacen
        as4 as2 - asentamiento
    )

    (:init
        (conectado al1 as2)
        (conectado as2 al1)
        (conectado as2 al3)
        (conectado al3 as2)
        (conectado al3 as4)
        (conectado as4 al3)
        (conectado as4 al1)
        (conectado al1 as4)
        (aparcado rover0 al1)
        (en_base p0 as4)
        (pedido p0 as2)
        (en_base p1 as2)
        (pedido p1 as4)
        (en_base p2 as4)
        (pedido p2 as2)
        (en_base p3 as4)
        (pedido p3 as2)
        (en_base s0 al3)
        (pedido s0 as2)
        (en_base s1 al1)
        (pedido s1 as4)
        (en_base s2 al1)
        (pedido s2 as4)
        (en_base s3 al1)
        (pedido s3 as2)
    )

    (:goal (forall (?t - transportable) (suministrado ?t)))

)
