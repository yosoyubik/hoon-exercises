::  Tower of Hanoi generator
::  https://en.wikipedia.org/wiki/Tower_of_Hanoi#Recursive_solution
::
::  > +hanoi 3
:: "[1 -> 3] [1 -> 2] [3 -> 2] [1 -> 3] [2 -> 1] [2 -> 3] [1 -> 3] "
::
:-  %say
|=  [^ [[disks=@ ~] ~]]
:-  %noun
=+  [l=1 m=2 r=3]
|-  ^-  tape
?:  =(disks 0)  ~
?:  =(disks 1)  "[{<l>} -> {<r>}] "
;:  weld
  $(disks (dec disks), m r, r m)
  $(disks 1)
  $(disks (dec disks), l m, m l)
==
