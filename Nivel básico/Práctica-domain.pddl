(define (domain BasesMarte)

    (:requirements :adl)

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
    )

    (:action mover
        :parameters (?r - rover ?ori - base ?des - base)
        :precondition (and (aparcado ?r ?ori) (conectado ?ori ?des)) 
        :effect (and 
                (aparcado ?r ?des) 
                (not (aparcado ?r ?ori))
        )
    )

    (:action cargar
        :parameters (?t - transportable ?r - rover ?b - base)
        :precondition (and (en_base ?t ?b) (aparcado ?r ?b))
        :effect (and 
                (en_rover ?t ?r)
                (not (en_base ?t ?b))
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