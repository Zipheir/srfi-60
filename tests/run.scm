(import (srfi 1)
        (srfi 60)
        test)

(test-group "srfi-60"
 (test "logand/bitwise-and" #b1000 (logand #b1100 #b1010))
 (test "logior/bitwise-ior" #b1110 (logior #b1100 #b1010))
 (test "logxor/bitwise-xor" #b110 (logxor #b1100 #b1010))
 (test "logtest/any-bit-set? no" #f (logtest #b0100 #b1011))
 (test "logtest/any-bit-set? yes" #t (logtest #b0100 #b0111))
 (test "logcount" 4 (logcount #b10101010))
 (test "logcount zero" 0 (logcount 0))
 (test "logcount negative" 1 (logcount -2))
 (test "integer-length" 8 (integer-length #b10101010))
 (test "integer-length zero" 0 (integer-length 0))
 (test "integer-length four" 4 (integer-length #b1111))

 (test "log2-binary-factors/first-set-bit"
       '(4 0 1 0 2 0 1 0 3 0 1 0 2 0 1 0 -1
         0 1 0 2 0 1 0 3 0 1 0 2 0 1 0 4)
       (map log2-binary-factors (iota 33 -16)))

 (test "logbit?/bit-set?"
       '(#t #f #t #t #f)
       (map (lambda (n) (logbit? n #b1101)) (iota 5)))

 (test "copy-bit zero unary" 1 (copy-bit 0 0 #t))
 (test "copy-bit zero centenial" #b100 (copy-bit 2 0 #t))
 (test "copy-bit negative" #b1011 (copy-bit 2 #b1111 #f))
 (test "bit-field first half" #b1010 (bit-field #b1101101010 0 4))
 (test "bit-field second half" #b10110 (bit-field #b1101101010 4 9))

 (test "copy-bit-field positive"
       #b1101100000
       (copy-bit-field #b1101101010 0 0 4))

 (test "copy-bit-field negative"
       #b1101101111
       (copy-bit-field #b1101101010 -1 0 4))

 (test "copy-bit-field long negative"
       #b110100111110000
       (copy-bit-field #b110100100010000 -1 5 9))

 (test "ash/arithmetic-shift positive" #b1000 (ash #b1 3))
 (test "ash/arithmetic-shift negative" #b101 (ash #b1010 -1))

 (test "rotate-bit-field short positive"
       #b10
       (rotate-bit-field #b0100 3 0 4))

 (test "rotate-bit-field short negative"
       #b10
       (rotate-bit-field #b0100 -1 0 4))

 (test "rotate-bit-field long negative"
       #b110100010010000
       (rotate-bit-field #b110100100010000 -1 5 9))

 (test "rotate-bit-field long positive"
       #b110100000110000
       (rotate-bit-field #b110100100010000 1 5 9))

 (test "reverse-bit-field" #xe5 (reverse-bit-field #xa7 0 8))
 )
