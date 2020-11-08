;;;; "logical.scm", bit access and operations for integers for Scheme
;;; Copyright (C) 1991, 1993, 2001, 2003, 2005 Aubrey Jaffer
;
;Permission to copy this software, to modify it, to redistribute it,
;to distribute modified versions, and to use it for any purpose is
;granted, subject to the following restrictions and understandings.
;
;1.  Any copy made of this software must include this copyright notice
;in full.
;
;2.  I have made no warranty or representation that the operation of
;this software will be error-free, and I am under no obligation to
;provide any services, by way of maintenance, update, or otherwise.
;
;3.  In conjunction with products arising from the use of this
;material, there shall be no use of my name in any advertising,
;promotional, or sales literature without prior written consent in
;each case.

;;; chicken-specific module

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
  bitwise-utils)

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
