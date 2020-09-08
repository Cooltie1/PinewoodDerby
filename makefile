CFLAGS=-std=c++11 -g

main: main.o Race.o Car.o Panda.o Rocket.o
	g++ $(CFLAGS) main.o Race.o Car.o Panda.o Rocket.o -o main
  
main.o: main.cpp Race.h
	g++ $(CFLAGS) -c main.cpp
  	
Race.o: Race.cpp Race.h CarInterface.h Rocket.h Panda.h RaceInterface.h Car.h
	g++ $(CFLAGS) -c Race.cpp

Car.o: Car.cpp Car.h CarInterface.h 
	g++ $(CFLAGS) -c Car.cpp
  	
Panda.o: Panda.cpp Panda.h Car.h CarInterface.h 
	g++ $(CFLAGS) -c Panda.cpp
  	
Rocket.o: Rocket.cpp Rocket.h Car.h CarInterface.h 
	g++ $(CFLAGS) -c Rocket.cpp

clean:
	rm main.o Race.o Car.o Panda.o Rocket.o