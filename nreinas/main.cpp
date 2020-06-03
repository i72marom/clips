//============================================================================
// Name        : main.cpp
// Author      : 
// Version     :
// Date        :
//============================================================================

/////////////////////////////////////////////////////
//EDITA ÚNICAMENTE LAS LÍNEAS ASOCIADAS A TAREAS POR HACER (marcadas entre un bloque TODO)
/////////////////////////////////////////////////////


#include "State.h"
#include <iostream>
#include <cstdlib>
#include <vector>
#include <stack> //Fíjate en que se está utilizando la clase stack para implementar frontera como una pila
using namespace std;

class QueensState: private State {

public:
	/**
	 * This function allows the user to set the number of queens of the problem.
	 * It should be passed as a pointer to an int variable with the desired value.
	 */
	static void setParameters(void *parameters);

	/**
	 * This function returns the initial state for the queens problem. An empty board
	 */
	static State* getInitialState();

	/**
	 * Destructor
	 */
	virtual ~QueensState();
};

int main() {

	int numQueens;
	cout << "¿Con cuántas reinas deseas que se resuelva el problema?" << endl;
	cin >> numQueens;

	QueensState::setParameters(&numQueens);

	State *initialState = QueensState::getInitialState();

	/////////////////////////////////////////
	// TODO programar aquí la búsqueda que se desee aplicar
	/////////////////////////////////////////
	stack <State*> frontier;
	frontier.push(initialState);
	vector<State*>* sucesores;

	while (!frontier.empty()){
		if (frontier.top()->isObjective()) {
			frontier.top()->print();
			break;
		}
		sucesores = frontier.top()->getSuccessors();
		frontier.pop();
		for (int i = 0; i < sucesores->size(); ++i) {
			frontier.push(sucesores->front());
			sucesores->erase(sucesores->begin());
		}
	}
	//////////////////////////////////////////
	// Fin bloque TODO
	//////////////////////////////////////////
	
	if (frontier.empty())
		cout << "There is no solution for " << numQueens << " queens" << endl;
	
	return 0;
}
