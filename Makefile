all:
	happy -gca src/ParGrammar.y
	alex -g src/LexGrammar.x
	cd src/ && ghc --make Main.hs -o ../interpreter

clean:
	-rm -f *.log *.aux *.hi *.o *.dvi *.hs *.txt *.x *.y

distclean: clean
	-rm -f DocGrammar.* LexGrammar.* ParGrammar.* LayoutGrammar.* SkelGrammar.* PrintGrammar.* TestGrammar.* AbsGrammar.* TestGrammar ErrM.* SharedString.* ComposOp.* grammar.dtd XMLGrammar.* Makefile*

