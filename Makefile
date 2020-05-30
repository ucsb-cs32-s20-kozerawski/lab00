
#helloWorld.cpp  Andrea Anez for UCSB CS32 S20
#Edited by: Andrea Anez 
# minimal Hello World! program for testing Makefiles

CXX=clang++
# CXX=g++
lab00Test: lab00Test.o tddFuncs.o arrayFuncs.o
	${CXX} lab00Test.o tddFuncs.o arrayFuncs.o -o lab00Test
helloWorld: helloWorld.o
	${CXX} helloWorld.o -o helloWorld
helloWorld.o: helloWorld.cpp
	${CXX} -c helloWorld.cpp
clean: 
	/bin/rm -f *.o helloWorld lab00Test