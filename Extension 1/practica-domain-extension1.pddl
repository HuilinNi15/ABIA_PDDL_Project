(define (domain BasesMarte_extension1)

    (:requirements :adl :fluents)

    (:types 
        base rover transportable - objects 
        asentamiento almacen - base
        personal suministro - transportable
    )

    (:predicates 
        (aparcado ?r - rover ?b - base)
        (conectado ?a - base ?b - base) 
        (pedido ?t - transportable ?a - asentamiento)
        (en_base ?t - transportable ?b - base)
        (en_rover ?t - transportable ?r - rover)
        (suministrado ?t - transportable)

    (:functions 
        (CapacidadPersonal)
        (CapacidadSuministro)
    )

    (:action mover
        :parameters (?r - rover ?ori - base ?des - base)
        :precondition (and (aparcado ?r ?ori) (conectado ?ori ?des)) 
        :effect (and 
                (aparcado ?r ?des) 
                (not (aparcado ?r ?ori))
        )
    )

    (:action cargar_personal
        :parameters (?p - personal ?r - rover ?b - base)
        :precondition (and 
                    (en_base ?p ?b) (aparcado ?r ?b)
                    (> (CapacidadPersonal) 0))
        :effect (and 
                (en_rover ?p ?r) (not (en_base ?p ?b))
                (decrease (CapacidadPersonal) 1)
        )
    )

    (:action cargar_suministro
        :parameters (?s - suministro ?r - rover ?b - base)
        :precondition (and 
                    (en_base ?s ?b) (aparcado ?r ?b)
                    (> (CapacidadSuministro) 0))
        :effect (and 
                (en_rover ?t ?r) (not (en_base ?t ?b))
                (decrease (CapacidadSuministro) 1)
        )
    )

    (:action descargar
        :parameters (?t - transportable ?r - rover ?a - asentamiento)
        :precondition (and (en_rover ?t ?r) (pedido ?t ?a) (aparcado ?r ?a))
        :effect (and 
                (suministrado ?t)
                (not (pedido ?t ?a)) 
                (not (en_rover ?t ?r)))
    )
)
