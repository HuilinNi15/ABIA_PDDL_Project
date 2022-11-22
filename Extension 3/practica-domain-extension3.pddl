(define (domain BasesMarte_extension3)

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
    )

    (:functions
        (PersonalCargado)
        (SuministroCargado)
    )

    (:action action_name
        :parameters ()
        :precondition (and )
        :effect (and )
    )
)
