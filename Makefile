location.hh : grammar.yy
	bison grammar.yy -o parser.cc -H
	
parser.cc : src/grammar.yy
	bison grammar.yy -o parser.cc -H
	
parser.hh : grammar.yy
	bison grammar.yy -o parser.cc -H

