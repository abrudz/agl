:Namespace AGL
    a←819⌶⎕A        ⍝ lower abc
    w←819⌶W←'AEIOU' ⍝ voWels
    k←819⌶K←⎕A~W          ⍝ Consonants
    h←819⌶H←16↑⎕D,⎕A   ⍝ Hex digits
    _←{11::t⊣(∊t)←((~0⌈ø)(819⌶)⊢)¨∊t←⍵ ⋄ ⍺←⊢ ⋄ ⍺-⍵} ⍝ swap case
    Ä←{⍵ ⍺⍺ ⍵⍵ ⍵} ⍝ fork
    á←{⍎'⍵[⍋↑⍣(|≡⍵)⊢⍵',']',⍨';'⍴⍨¯1+≢⍴⍵}                      ⍝ 0⍋⍵ sorts ⍵ up - even nested
    à←{⍎'⍵[⍒↑⍣(|≡⍵)⊢⍵',']',⍨';'⍴⍨¯1+≢⍴⍵}                      ⍝ 0⍒⍵ sorts ⍵ down - even nested
    ä←{⍺←⊢ ⋄ ⍺⍺ ⍺ ⍵⍵ ⍵} ⍝ atop
    A←⎕NAPPEND
    ç←{(⊂⍺),⊆⍵} ⍝ link (connect)
    Ç←{⍺←⊢ ⋄ 11::⍺{⍺←' ' ⋄ ''≡⍺:⍵ ⋄ (1↓⍺)∘∇¨⍵⊆⍨⍵≠⊃⍺}⍵ ⋄ r←⍺÷⍵}   ⍝ char: cut at ⍺[1] (default=space) then cut each at ⍺[2] ...
    C←⎕NCREATE
    ⍝Ð
    ⍝ð
    D←⎕NDELETE
    é←{⍺/⍵}
    è←{⍺\⍵}
    É←{⍺⌿⍵}
    È←{⍺⍀⍵}
    ⍝ë
    ê←{⊃0⍴⊂⍵}   ⍝ monad:type
    E←⎕NERASE
    F←{⍺←⊢ ⋄ ⊃⌽⍺ ⎕VFI ⍵}
    G←⎕NGET
    G←⎕NREAD
    ï←{⍎⍺,'←⍵'}                                              ⍝ 'name'← returns ⍵ but assign to the name in ⍺
    ⍝î
    í←{11::1(819⌶)⍵ ⋄ ⍺←⊢ ⋄ ⍺⌈⍵}                ⍝ uppercase chars
    ì←{11::819⌶⍵ ⋄ ⍺←⊢ ⋄ ⍺⌊⍵}                   ⍝ lowercase chars
    Î←{⍺←⊢ ⋄ ⍺ (⍺⍺⍣¯1) ⍵} ⍝ Inverse
    Í←{⍺←⊢ ⋄ ⍺ (⍺⍺⍣⍣≡) ⍵}  ⍝ power-Infinity
    Ì←{⍺←⊢ ⋄ ⍺ (⍺⍺⍣⍣≢) ⍵}  ⍝ until Indifferent
    Ï←{⍺←⊢ ⋄ ⍺ (⍺⍺⍣⍣2) ⍵}  ⍝ twIce
    I←⎕NINFO
    M←⎕MKDIR
    ⎕FX'r←N' 'r←⎕NS⍬'
    Ñ←{⍺←2 ⋄ ×≡⍺:⍉⍺⊤⍵ ⋄ ⍉⍵⊤⍨⍺/⍨1⌈⌈⍺⍟⌈/⍵} ⍝ default is base 2 + no transpose
    ñ←{⍺←2 ⋄ ⍺⊥⍉⍵}                      ⍝ default is base 2 + no transpose
    ⍝ö
    Ö←{⍺←⊢ ⋄ ⍺ ⍺⍺⍣(⍵⍵ ⍵)⊢⍵}             ⍝ repeat g(⍵) times
    ò←{⍺←⍵ ⋄ ⍺∘.⍺⍺ ⍵}   ⍝ normal monadic operator for ∘.
    Ø←{⍺←0 ⋄ s←⍺⊣⍵}      ⍝ shy
    ø←{11::((⊢=1∘(819⌶))-⊢=819⌶)⍵ ⋄ ⍺←⊢ ⋄ ⍺×⍵}       ⍝ case: ¯1=lower 0=\W 1=upper
    P←⎕NPUT
    Ps←⎕NPARTS
    R←⎕NREPLACE
    Rn←⎕NRENAME
    Rs←⎕NRESIZE
    S←⎕SIGNAL
    ß←⎕TSYNC
    Sz←⎕NSIZE
    T←⎕NTIE
    Tg←⎕TGET
    þ←{⎕IO←0 ⋄ Char←0 2∊⍨10|⎕DR ⋄ end←⊃⍵ ⋄ tail←1↓⍵ ⋄ charend←Char end ⋄ default←⎕UCS⍣charend⊢0 ⋄ ⍺←default ⋄ charbegins←Char¨¯2↑⍺ ⋄ lead←-(2-charend)⌊(≢⍺)⌊+/charend=charbegins ⋄ head←lead↓⍺ ⋄ begin←(¯1⌊lead)↑¯2↑default,lead↑⍺ ⋄ charend:head,tail,⍨⎕UCS(⎕UCS begin)∇ ⎕UCS end ⋄ from step←-⍨\2↑begin,begin+×end-begin ⋄ head,tail,⍨from+step×⍳0⌈1+⌊(end-from)÷step+step=0}
    Ti←⎕TID
    Tk←⎕TKILL
    Tl←⎕TPOOL
    Tn←⎕TNAME
    Tp←⎕TPUT
    Tr←⎕TREQ
    Ts←⎕TNUMS
    Ü←{0=⎕NC'⍺':⍵⍵{11::⍺⍺ ⍵ ⋄ ⍺⍺⍣¯1⊢⍵}⍺⍺ ⍵⍵ ⍵ ⋄ ⍵⍵{11::⍺⍺ ⍵ ⋄ ⍺⍺⍣¯1⊢⍵}(⍵⍵ ⍺)⍺⍺ ⍵⍵ ⍵}     ⍝ under
    U←⎕UCS
    Ut←⎕NUNTIE
    V←⊃⎕VFI
    Vf←//⎕VFI
    X←⎕XML
    Xs←⎕NEXISTS
    Ý←{⍺←2 ⋄ ⍵*÷⍺}                                               ⍝ sqrt
    y←{⍺⍺ ⍵} ⍝ ignore left
:EndNamespace
