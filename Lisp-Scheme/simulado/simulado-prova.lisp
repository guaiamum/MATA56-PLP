(define (eh-impar num) 
  (odd? num))

(teste #f (eh-impar 2))
(teste #t (eh-impar 3))

;-----------------
(teste #t (pair? '(2 3)))
(teste #f (pair? 2))

;-----------------
(define (tem-impar lista)
  (cond
    ; lista vazia
    ((null? lista) #f)
   	((odd? (car lista)) #t)
    (else 
     (tem-impar (cdr lista))))
  )
     
(teste #t (tem-impar '(1)))

; ---
(define (eh-impar num) 
  (odd? num))
; ---
(define (tem-impar lista)
  ; ---
  (cond
    ; lista vazia
    ((null? lista) #f)
    ; 1o elemento da lista é uma lista
    ((pair? (car lista)) (tem-impar (car lista)))
    ; 1o elemento da lista satisfaz à propriedade
    ((eh-impar (car lista)) #t)
    ; caso contrário
    (else (tem-impar (cdr lista)))
  )
  ; ---
)

(teste #t (tem-impar '(2 (3) 4)))
; --- escreva no mínimo 2 casos de teste
(teste #f (tem-impar '()))
(teste #t (tem-impar '(1 2 3 4)))
;----------------- 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; se quiser, pode definir funções auxiliares
(define (qntd lista)
 (cond
    ; lista vazia é 0
    ((null? lista) 0)
  	;else + 1
    (else (+ 1 (qntd (cdr lista))))))

(teste 3 (qntd '(1 2 3)))
;;;;;;;;;;;;p
(define (lista-par lista)
  (cond 
   ((even? (qntd lista)) #t)
   (else #f)))
;(teste #t (lista-par '(m a t a 5 6)))
; --- Crie no mínimo 2 testes adicionais
(teste #f (lista-par '(1 2 3)))
(teste #t (lista-par '(1 '())))
(teste #f (lista-par '(1 '(2 3) 2)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (filtro f lista)
  (cond
    ((null? lista) '())
    ((f (car lista)) 
      (cons
        (car lista)
        (filtro f (cdr lista))))
   (else 
     (filtro f (cdr lista)))))

;;;;;;
(teste '(7 9) (filtro (lambda (x) (> x 5)) '(7 4 3 9)))
(teste '(5 5) (filtro (lambda (x) (= x 5)) '(7 5 5 9)))
