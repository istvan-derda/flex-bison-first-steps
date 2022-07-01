calc-parser : calc++.o driver.o parser.o scanner.o
	g++ -o calc-parser calc++.o driver.o parser.o scanner.o

calc++.o : calc++.cc parser.hh
	g++ -c calc++.cc
	
driver.o : driver.cc
	g++ -c driver.cc 
	
scanner.o : scanner.cc
	g++ -c scanner.cc
	
parser.o : parser.cc
	g++ -c parser.cc 
	
scanner.cc : scanner.l
	lex --outfile scanner.cc scanner.l

location.hh : grammar.yy
	bison grammar.yy -o parser.cc -H
	
parser.cc : grammar.yy
	bison grammar.yy -o parser.cc -H
	
parser.hh : grammar.yy
	bison grammar.yy -o parser.cc -H
	
clean : 
	rm *.o scanner.cc parser.cc parser.hh location.hh

