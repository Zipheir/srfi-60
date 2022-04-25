(module srfi-60

(;exports
  logand bitwise-and logior bitwise-ior logxor bitwise-xor lognot
  bitwise-not bitwise-if bitwise-merge logtest any-bits-set? logcount
  bit-count integer-length log2-binary-factors first-set-bit logbit?
  bit-set? copy-bit bit-field copy-bit-field ash arithmetic-shift
  rotate-bit-field reverse-bit-field integer->list list->integer)

(import scheme
  (chicken base)
  (chicken bitwise)
  (chicken platform)
  bitwise-utils)

(register-feature! 'srfi-60)

(define logand              bitwise-and)
(define logior              bitwise-ior)
(define logxor              bitwise-xor)
(define lognot              bitwise-not)
(define logtest             bitwise-any?)
(define logcount            bitwise-count)
(define logbit?             bitwise-nth?)
(define ash                 arithmetic-shift)
(define bit-field           bitwise-field)
(define copy-bit-field      bitwise-field-copy)
(define rotate-bit-field    bitwise-field-rotate)
(define reverse-bit-field   bitwise-field-reverse)
(define log2-binary-factors bitwise-first-set)
(define (copy-bit k n b)    (bitwise-set-nth n k b))
(define bitwise-if          bitwise-merge)
(define any-bits-set?       bitwise-any?)
(define bit-count           bitwise-count)
(define first-set-bit       bitwise-first-set)
(define bit-set?            bitwise-nth?)

) ;module srfi-60
