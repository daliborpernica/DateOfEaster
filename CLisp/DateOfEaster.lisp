; Date of Easter
; Based on algorithm by Jean Meeus, Astronomical Algorithms, 1998, p. 67 

(loop
    (format t "Enter a year:")
    (setq x (read))
    (when (> x 1582) (return x))
    (format t "Year earlier than 1583 is not allowed!~%")
)

(setq a (rem x 19))
(setq b (truncate x 100))
(setq c (rem x 100))
(setq d (truncate b 4))
(setq e (rem b 4))
(setq f (truncate (+ b 8) 25))
(setq g (truncate (+ (- b f) 1) 3))
(setq h (rem (- (+ (* 19 a) b 15) d g) 30))
(setq i (truncate c 4))
(setq k (rem c 4))
(setq l (rem (- (+ 32 (* 2 e) (* 2 i)) h k) 7))
(setq m (truncate (+ a (* 11 h) (* 22 l)) 451))
(setq z (- (+ h l 114) (* 7 m)))
(setq n (truncate z 31))
(setq p (+ (rem z 31) 1))

(case n
    (3 (format t "March ~d" p))
    (4 (format t "April ~d" p))
)
