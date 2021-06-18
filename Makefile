OBJDIR = ./obj

all : 
		cd $(OBJDIR) && make
clean:
		cd $(OBJDIR) && make clean

depend:
		cd $(OBJDIR) && make depend
 

info.o : info.cpp info.h
		g++ -c ./class/info.cpp
window.o : window.cpp window.h
		g++ -c ./class/window.cpp
main.o : main.cpp window.h
		g++ -c main.cpp
main : info.o window.o main.o
		g++ info.o window.o main.o -o main