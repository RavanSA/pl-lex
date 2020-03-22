hw1:
	lex hw1.l
run:
	cc lex.yy.c -lfl

clean:
	rm hw1.l
	
