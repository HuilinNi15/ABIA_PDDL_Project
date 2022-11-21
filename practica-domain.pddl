(define (domain BasesMarte)

(:requirements :adl :fluents)

(:types bases rovers personal suministros - objects
        asentamientos almacenes - bases
)

(:predicates 
    (aparcado ?rover - rovers ?base - bases)
)


(:functions 
    (personalDisponible)
    (numeroPeticiones)
)

(:action action_name
    :parameters ()
    :precondition (and )
    :effect (and )
)


)
