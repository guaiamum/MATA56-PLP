
(define (maximo x y)
  (cond
    ((> x y) x)
    (else y)))

(maximo 50 50)

(fold-right maximo -99 '(2 4 345 34 3 3 2 12))

;;;;;;;;;;;;;;;;;;;;;;;;

(define (mapeia f lista)
  (cond
    ((null? lista) '())
    (else 
      (cons
        (f (car lista))
        (mapeia f (cdr lista))))))

;;;;;;;;;;;;;;;;;

(define (all f lista)
  (cond
    ((null? lista) #t)
    (else
      (and (f (car lista))
           (all f (cdr lista))))))

(define (all f lista)
  (or
    (null? lista)
    (and (f (car lista))
         (all f (cdr lista)))))

;;;;;;;;;;;;;;;;;;;;;;

(define (par x) (= (mod x 2) 0))
(define (todos-pares lista)
  (cond
    ((null? lista) #t)
    (else
      (and (par (car lista))
           (todos-pares (cdr lista))))))


;;;;;;;;;;;;;;;;;;;;;;;;

(define (filtra criterio lista)
  (cond
    ((null? lista) '())
    ((not (criterio (car lista)))
      (filtra criterio (cdr lista)))
    (else
      (cons (car lista)
            (filtra criterio (cdr lista))))))

(teste '(8.2 9.8)
       (filtra
           (lambda (x) (>= x 7.0))
           '(5.8 8.2 6.0 9.8))

(teste '(5.8 6.0)
       (filtra
           (lambda (x) (< x 7.0))
           '(5.8 8.2 6.0 9.8))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (par x) (= 0 (mod x 2)))

(define (filtra-pares lista)
  (cond
    ((null? lista) '())
    ((not (par (car lista)))
      (filtra-pares (cdr lista)))
    (else
      (cons (car lista)
            (filtra-pares (cdr lista))))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (par x) (= 0 (mod x 2)))

(define (mult3 x) (= 0 (mod x 3)))

(define (qtd f lista)
  (cond
    ((null? lista) 0)
    ((f (car lista))
      (+ 1 (qtd f (cdr lista))))
    (else (qtd f (cdr lista)))))

(teste 3 (qtd par '(1 2 3 4 5 6)))
  
(define (qtd-mult3 lista)
  (cond
    ((null? lista) 0)
    ((mult3 (car lista))
      (+ 1 (qtd-mult3 (cdr lista))))
    (else (qtd-mult3 (cdr lista)))))


(define (qtd-pares lista)
  (cond
    ((null? lista) 0)
    ((par (car lista))
      (+ 1 (qtd-pares (cdr lista))))
    (else (qtd-pares (cdr lista)))))

; testes
(teste 0 (qtd-pares '()))
(teste 0 (qtd-pares '(1 3 5)))
(teste 1 (qtd-pares '(2)))
(teste 3 (qtd-pares '(1 2 3 4 5 6)))
