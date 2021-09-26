todo: main mpi
main: main.cpp
	g++ -pthread -o main main.cpp -Ilibarff libarff/arff_attr.cpp libarff/arff_data.cpp libarff/arff_instance.cpp libarff/arff_lexer.cpp libarff/arff_parser.cpp libarff/arff_scanner.cpp libarff/arff_token.cpp libarff/arff_utils.cpp libarff/arff_value.cpp -fopenmp
mpi: mpi.cpp
	mpic++ mpi.cpp -o mpi
clean:
	rm main mpi