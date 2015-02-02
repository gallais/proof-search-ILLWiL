Proof Search for ILLWiL
=======================

Intuitionistic Linear Logic With Leftovers (ILLWiL) is a generalisation of
Intuitionistic Linear Logic enjoying a notion of weakening which is well-suited
for correct by construction proof search.

This repository aims at presenting the material used in the paper "Certified
Proof Search for Intuitionistic Linear Logic" in a self-contained manner.

Directory tree
--------------

* `equality/` contains a patched version of the subset of Nils Anders Danielsson's
library for "Bag equivalence via a Proof-Relevant Membership Relation"
([abstract](http://www.cse.chalmers.se/~nad/publications/danielsson-bag-equivalence.html),
[darcs repository](http://www.cse.chalmers.se/~nad/repos/equality/)) necessary
to typecheck our project. The [patch](https://github.com/gallais/potpourri/blob/master/agda/lps/nad.diff)
allows us to use both his library and the standard one without conflicts.

* `stdlib/` contains a copy of the subset of Agda's standard library necessary
to typecheck our project. It was extracted from the latest stable release at the
time of writing the paper (i.e. version 0.9).

* `lps/` contains our development.

* `papers/` contains two versions of our paper: the one submitted as well as
an extended version with more proofs and more comments about the datastructures
used.

* `fonts/` contains the XITS fonts necessary to compile the tex files. You can
put them in ~/.fonts/

Compilation
-----------

![build status](https://travis-ci.org/gallais/proof-search-ILLWiL.svg?branch=master)

