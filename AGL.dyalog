:Namespace AGL
    ##.∆a←819⌶⎕A
    ##.∆V←'AEIOU'
    ##.∆v←819⌶##.∆V
    ##.∆C←##.⎕A~##.∆V
    ##.∆c←##.∆a~##.∆v
    ##.∆H←16↑⎕D,⎕A
    ##.∆h←819⌶##.∆H
    ##.∆MK←⎕MKDIR
    ##.∆NA←⎕NAPPEND
    ##.∆NC←⎕NCREATE
    ##.∆ND←⎕NDELETE
    ##.∆NE←⎕NERASE
    ##.∆NX←⎕NEXISTS
    ##.∆NG←⎕NGET
    ##.∆NI←⎕NINFO
    ##.∆NPs←⎕NPARTS
    ##.∆NP←⎕NPUT
    ##.∆NG←⎕NREAD
    ##.∆NRn←⎕NRENAME
    ##.∆NRp←⎕NREPLACE
    ##.∆NRs←⎕NRESIZE
    ##.∆NS←⎕NSIZE
    ##.⎕FX'r←∆N' 'r←⎕NS⍬'
    ##.∆NT←⎕NTIE
    ##.∆NU←⎕NUNTIE
    ##.∆S←⎕SIGNAL
    ##.∆TG←⎕TGET
    ##.∆TI←⎕TID
    ##.∆TK←⎕TKILL
    ##.∆TN←⎕TNAME
    ##.∆TNs←⎕TNUMS
    ##.∆TPl←⎕TPOOL
    ##.∆TP←⎕TPUT
    ##.∆TR←⎕TREQ
    ##.ß←⎕TSYNC
    ##.∆U←⎕UCS
    ##.∆VI←⊃⎕VFI
    ##.∆FI←⊢/⎕VFI
    ##.∆VFI←//⎕VFI
    ##.∆X←⎕XML
    ##.ö←{⍺←⊢ ⋄ ⍺ (⍺⍺⍤⍵⍵) ⍵}
    ##.Ð←{⍺←⊢ ⋄ ⍺ (⍺⍺⌸⍵⍵) ⍵}
    ##.ë←{⍺←⊢ ⋄ ⍺ (⍺⍺⍠⍵⍵) ⍵}
    ##.ð←{⍺←⊢ ⋄ ⍺ (⍺⍺⌺⍵⍵) ⍵}
    ##.î←{⍺←⊢ ⋄ 0::⍵/⍳⍴⍵ ⋄ ⍺⍸⍵}
    ##.ç←{⍺←⊢ ⋄ 0::⍺⊂⍵⊣⎕ML←3 ⋄ ⍺⊆⍵}
    ##.ø←{11::((⊢=1∘(819⌶))-⊢=819⌶)⍵ ⋄ ⍺←⊢ ⋄ ⍺×⍵}       ⍝ case: ¯1=lower 0=\W 1=upper
    ##._←{11::t⊣(∊t)←((~0⌈##.ø)(819⌶)⊢)¨∊t←⍵ ⋄ ⍺←⊢ ⋄ ⍺-⍵} ⍝ swap case
    ##.Ø←{⍺←0 ⋄ s←⍺⊣⍵}      ⍝ shy
    ##.ê←{6::⊃0⍴⊂⍵ ⋄ ⍺⍷⍵}   ⍝ monad:type
    ##.ò←{⍺←⍵ ⋄ ⍺ ∘.⍺⍺ ⍵}   ⍝ normal monadic operator for ∘.
    ##.é←{⍺/⍵}
    ##.É←{⍺⌿⍵}
    ##.è←{⍺\⍵}
    ##.È←{⍺⍀⍵}
    ##.Ö←{⍺←⊢ ⋄ ⍺ ⍺⍺⍣(⍵⍵ ⍵)⊢⍵}             ⍝ repeat g(⍵) times
    ##.Ñ←{⍺←2 ⋄ ×≡⍺:⍉⍺⊤⍵ ⋄ ⍉⍵⊤⍨⍺/⍨1⌈⌈⍺⍟⌈/⍵} ⍝ default is base 2 + no transpose
    ##.ñ←{⍺←2 ⋄ ⍺⊥⍉⍵}                      ⍝ default is base 2 + no transpose
    ##.þ←{⎕IO←0 ⋄ Char←0 2∊⍨10|⎕DR ⋄ end←⊃⍵ ⋄ tail←1↓⍵ ⋄ charend←Char end ⋄ default←⎕UCS⍣charend⊢0 ⋄ ⍺←default ⋄ charbegins←Char¨¯2↑⍺ ⋄ lead←-(2-charend)⌊(≢⍺)⌊+/charend=charbegins ⋄ head←lead↓⍺ ⋄ begin←(¯1⌊lead)↑¯2↑default,lead↑⍺ ⋄ charend:head,tail,⍨⎕UCS(⎕UCS begin)∇ ⎕UCS end ⋄ from step←-⍨\2↑begin,begin+×end-begin ⋄ head,tail,⍨from+step×⍳0⌈1+⌊(end-from)÷step+step=0}
    ##.ì←{11::819⌶⍵ ⋄ ⍺←⊢ ⋄ ⍺⌊⍵}                   ⍝ lowercase chars
    ##.í←{11::1(819⌶)⍵ ⋄ ⍺←⊢ ⋄ ⍺⌈⍵}                ⍝ uppercase chars
    ##.Ü←{0=⎕NC'⍺':⍵⍵{11::⍺⍺ ⍵ ⋄ ⍺⍺⍣¯1⊢⍵}⍺⍺ ⍵⍵ ⍵ ⋄ ⍵⍵{11::⍺⍺ ⍵ ⋄ ⍺⍺⍣¯1⊢⍵}(⍵⍵ ⍺) ⍺⍺ ⍵⍵ ⍵}     ⍝ under
    ##.ä←{⍺←⊢ ⋄ ⍺ (⍺⍺ ⍵⍵) ⍵}                              ⍝ atop
    ##.Ä←{⍵ ⍺⍺ ⍵⍵ ⍵} ⍝ fork
    ##.Ç←{⍺←⊢ ⋄ 11::⍺{⍺←' ' ⋄ ''≡⍺:⍵ ⋄ (1↓⍺)∘∇¨⍵{⎕ML←3 ⋄⍺⊆⍵}⍨⍵≠⊃⍺}⍵ ⋄ r←⍺÷⍵}   ⍝ char: cut at ⍺[1] (default=space) then cut each at ⍺[2] ...
    ##.Ý←{⍺←2 ⋄ ⍵*÷⍺}                                               ⍝ sqrt
    ##.á←{⍎'⍵[⍋↑⍣(|≡⍵)⊢⍵',']',⍨';'⍴⍨¯1+≢⍴⍵}                      ⍝ 0⍋⍵ sorts ⍵ up - even nested
    ##.à←{⍎'⍵[⍒↑⍣(|≡⍵)⊢⍵',']',⍨';'⍴⍨¯1+≢⍴⍵}                      ⍝ 0⍒⍵ sorts ⍵ down - even nested
    ##.ï←{⍎⍺,'←⍵'}                                              ⍝ 'name'← returns ⍵ but assign to the name in ⍺
:EndNamespace
