(define (domain BasesMarte_extension3)

    (:requirements :adl :typing :fluents)

    (:types
        base rover transportable idpedido - objects
        asentamiento almacen - base
        personal suministro - transportable
    )

    (:predicates
        (aparcado ?r - rover ?b - base)
        (conectado ?a - base ?b - base)
        (pedido ?t - transportable ?a - asentamiento ?id - idpedido)
        (en_base ?t - transportable ?b - base)
        (en_rover ?t - transportable ?r - rover)
        (suministrado ?t - transportable)
    )

    (:functions
        (PersonalCargado ?r - rover)
        (SuministroCargado ?r - rover)
        (CombustibleRestante ?r - rover)
        (DecrecimientoCombusitible)
        (CombustibleTotal)
        (Prioridad ?id - idpedido)
        (AcumPrioridad) ; función que acumula la prioridad de los pedidos que se van entregando
        (p) ;capacidad máxima de personal por rover
        (s) ;capacidad máxima de suministro por rover
    )

    (:action mover
        :parameters (?r - rover ?ori - base ?des - base)
        :precondition (and (aparcado ?r ?ori) (conectado ?ori ?des) (> (CombustibleRestante ?r) 0))
        :effect (and
            (aparcado ?r ?des)
            (not (aparcado ?r ?ori))
            (decrease
                (CombustibleRestante ?r)
                (DecrecimientoCombusitible))
            (increase (CombustibleTotal) 1)
        )
    )

    (:action cargar_personal
        :parameters (?p - personal ?r - rover ?a - asentamiento)
        :precondition (and
            (en_base ?p ?a) (aparcado ?r ?a)
            (< (PersonalCargado ?r) (p))
            (= (SuministroCargado ?r) 0)
        )
        :effect (and
            (en_rover ?p ?r) (not (en_base ?p ?a))
            (increase (PersonalCargado ?r) 1)
        )
    )

    (:action cargar_suministro
        :parameters (?s - suministro ?r - rover ?a - almacen)
        :precondition (and
            (en_base ?s ?a) (aparcado ?r ?a)
            (< (SuministroCargado ?r) (s))
            (= (PersonalCargado ?r) 0)
        )
        :effect (and
            (en_rover ?s ?r) (not (en_base ?s ?a))
            (increase (SuministroCargado ?r) 1)
        )
    )

    (:action descargar_personal
        :parameters (?p - personal ?r - rover ?a - asentamiento ?id - idpedido)
        :precondition (and (en_rover ?p ?r) (pedido ?p ?a ?id) (aparcado ?r ?a))
        :effect (and
            (suministrado ?p)
            (not (pedido ?p ?a ?id))
            (not (en_rover ?p ?r))
            (decrease (PersonalCargado ?r) 1)
            (increase (AcumPrioridad) (Prioridad ?id))
        )
    )

    (:action descargar_suministro
        :parameters (?s - suministro ?r - rover ?a - asentamiento ?id - idpedido)
        :precondition (and (en_rover ?s ?r) (pedido ?s ?a ?id) (aparcado ?r ?a))
        :effect (and
            (suministrado ?s)
            (not (pedido ?s ?a ?id))
            (not (en_rover ?s ?r))
            (decrease (SuministroCargado ?r) 1)
            (increase (AcumPrioridad) (Prioridad ?id))
        )
    )
)