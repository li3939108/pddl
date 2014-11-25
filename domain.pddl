(define 
(domain hanoi)
(:requirements :strips)
(:predicates 
	(clear ?x)
	(on ?x ?y)
	(smaller ?x ?y)
	(center ?x))

(:action moveToCenter
	:parameters (?disc ?from ?to)
	:precondition (and 
		(smaller ?to ?disc) 
		(on ?disc ?from) 
		(clear ?disc) 
		(clear ?to)
		(center ?to)  )
	:effect (and 
		(clear ?from) 
		(on ?disc ?to) 
		(not (on ?disc ?from))  
		(not (clear ?to))
		(center ?disc)  ) )
(:action moveFromCenter
	:parameters (?disc ?from ?to)
	:precondition (and 
		(smaller ?to ?disc) 
		(on ?disc ?from) 
		(clear ?disc) 
		(clear ?to)
		(center ?disc)  )
	:effect (and 
		(clear ?from) 
		(on ?disc ?to) 
		(not (on ?disc ?from))  
		(not (clear ?to))
		(not (center ?disc) )  ) ))
