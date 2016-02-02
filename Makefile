OCAMLC = ocamlc
GHC = ghc

PROGRAMS = euler1_ml euler1_hs

# default target
default: $(PROGRAMS)

# ----

# generic target for the ocaml stuff
%_ml: %.ml
	$(OCAMLC) $(OCAMLFLAGS) $< -o $@

# generic target for the haskell stuff
%_hs: %.hs
	$(GHC) $(GHCFLAGS) $< -o $@

clean:
	rm -f $(PROGRAMS)
	rm -f *.cmi *.cmo
	rm -f *.o *.hi

