(import srfi-1 srfi-60 test)

(test-group
 "srfi-60"
 (test
  "logand/bitwise-and"
  "1000"
  (number->string (logand #b1100 #b1010) 2))
 (test
  "logior/bitwise-ior"
  "1110"
  (number->string (logior #b1100 #b1010) 2))
 (test
  "logxor/bitwise-xor"
  "110"
  (number->string (logxor #b1100 #b1010) 2))
 (test
  "lognot/bitwise-not"
  "-10000001"
  (number->string (lognot #b10000000) 2))
 (test
  "logtest/any-bit-set? no"
  #f
  (logtest #b0100 #b1011))
 (test-assert
  "logtest/any-bit-set? yes"
  (logtest #b0100 #b0111))
 (test
  "logcount"
  4
  (logcount #b10101010))
 (test
  "logcount zero"
  0
  (logcount 0))
 (test
  "logcount negative"
  1
  (logcount -2))
 (test
  "integer-length"
  8
  (integer-length #b10101010))
 (test
  "integer-length zero"
  0
  (integer-length 0))
 (test
  "integer-length four"
  4
  (integer-length #b1111))
 (test
  "log2-binary-factors/first-set-bit"
  '(4 0 1 0 2 0 1 0 3 0 1 0 2 0 1 0 -1
      0 1 0 2 0 1 0 3 0 1 0 2 0 1 0 4)
  (map log2-binary-factors (iota 33 -16)))
 (test
  "logbit?/bit-set?"
  '(#t #f #t #t #f)
  (map (lambda (n) (logbit? n #b1101)) (iota 5)))
 (test
  "copy-bit zero unary"
  "1"
  (number->string (copy-bit 0 0 #t) 2))
 (test
  "copy-bit zero centenial"
  "100"
  (number->string (copy-bit 2 0 #t) 2))
 (test
  "copy-bit negative"
  "1011"
  (number->string (copy-bit 2 #b1111 #f) 2))
 (test
  "bit-field first half"
  "1010"
  (number->string (bit-field #b1101101010 0 4) 2))
 (test
  "bit-field second half"
  "10110"
  (number->string (bit-field #b1101101010 4 9) 2))
 (test
  "copy-bit-field positive"
  "1101100000"
  (number->string (copy-bit-field #b1101101010 0 0 4) 2))
 (test
  "copy-bit-field negative"
  "1101101111"
  (number->string (copy-bit-field #b1101101010 -1 0 4) 2))
 (test
  "copy-bit-field long negative"
  "110100111110000"
  (number->string (copy-bit-field #b110100100010000 -1 5 9) 2))
 (test
  "ash/arithmetic-shift positive"
  "1000"
  (number->string (ash #b1 3) 2))
 (test
  "ash/arithmetic-shift negative"
  "101"
  (number->string (ash #b1010 -1) 2))
 (test
  "rotate-bit-field short positive"
  "10"
  (number->string (rotate-bit-field #b0100 3 0 4) 2))
 (test
  "rotate-bit-field short negative"
  "10"
  (number->string (rotate-bit-field #b0100 -1 0 4) 2))
 (test
  "rotate-bit-field long negative"
  "110100010010000"
  (number->string (rotate-bit-field #b110100100010000 -1 5 9) 2))
 (test
  "rotate-bit-field long positive"
  "110100000110000"
  (number->string (rotate-bit-field #b110100100010000 1 5 9) 2))
 (test
  "reverse-bit-field"
  "e5"
  (number->string (reverse-bit-field #xa7 0 8) 16)))

