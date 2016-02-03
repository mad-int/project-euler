Project Euler Code
==================

This is some code for the problems stated in project euler, see [Project Euler](https://projecteuler.net).


OCaml Notes
-----------

The OCaml-code is in the files with ending "ml".
I use
- OCaml version 4.02.3
- with Batteries included version 2.3
- utop version 1.18

You can load files in utop (the OCaml-shell) in the following way:
```
#use "filename";;
```
(with the hashmark).
Afterwards the functions of the file should be listed
and can be called (without hashmark).

To initialise OCaml with batteries I use the file
[ocamlinit](https://github.com/ocaml-batteries-team/batteries-included/blob/master/ocamlinit)
from the OCaml-with-Batteries-Repo (on Github) as ~/.ocamlinit
and I added additionally the following lines there
```
#use "topfind";;
#camlp4o;;
```
(with hashmarks) to activated the extended syntax support for streams.
See [Stream Expressions](http://mirror.ocamlcore.org/ocaml-tutorial.org/stream_expressions.html).
But I think this extended syntax is nowhere to be used here as streams suck anyway.


Haskell Notes
-------------

The Haskell-code is in the files with ending "hs".
I use Glasgow Haskell Complation System (ghc) version 7.10.3
with its interpreter called "ghci".

You can load files in ghci in the following way:
```
:load euler1.hs
```
The function of the file aren't listed then,
so you have to look them up in the source-code.
They can be started afterwards.

