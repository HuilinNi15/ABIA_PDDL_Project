(define (problem RoversSuministrosPersonal) (:domain BasesMarte_extension2_1)

    (:objects
        rover0 - rover
        p0 p1 - personal
        s0 s1 - suministro
        al2 - almacen
        as1 as3 - asentamiento
    )

    (:init
        (= (p) 2)
        (= (s) 1)
        (= (CombustibleTotal) 0)
        (= (DecrecimientoCombusitible) 0)
        (conectado as1 al2)
        (conectado al2 as1)
        (conectado al2 as3)
        (conectado as3 al2)
        (aparcado rover0 al2)
        (= (PersonalCargado rover0) 0)
        (= (SuministroCargado rover0) 0)
        (= (CombustibleRestante rover0) 10)
        (en_base p0 as3)
        (pedido p0 as1)
        (en_base p1 as3)
        (pedido p1 as1)
        (en_base s0 al2)
        (pedido s0 as3)
        (en_base s1 al2)
        (pedido s1 as1)
    )

    (:goal (forall (?t - transportable) (suministrado ?t)))

)
