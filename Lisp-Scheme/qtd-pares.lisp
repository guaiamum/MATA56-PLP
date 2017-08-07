(define (qtd-pares lista)
	(cond
		((null? lista) 0)
		((mult3 (car lista))
			(+1 (qtd-mult3 (cdr lista))))
		(else (qtd-mult3 (cdr lista)))))
