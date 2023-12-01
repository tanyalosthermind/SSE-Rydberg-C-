#include <iostream>
#include <string>
#include <map>
#include <vector>
#include <set>
#include <algorithm>
#include <cmath>
#include <cctype>
#include <fstream>
#include <iomanip>
#include <sstream>
#include <iostream>
#include <exception>
#include <string>
#include <cstdlib>      // std::rand, std::srand
#include <random>
#include <stdexcept> // error exception
#include <limits> // min, max of double
#include <map> // for map creation
#include <stack> // for stack usage
#include <cassert>
#include <functional>
#include <queue>
#include <cstdlib>
#include <chrono> //time of function execution
#include <iomanip>

// header files
#include "configuration.h"


using namespace std;

int main() {
    int Lx = 4;
    int Ly = 4;

    int n_sites = Lx * Ly;

    for (int i = 0; i < n_sites; i++){
        for (int j = 0; j < n_sites; j++){
            if (i == j){
                        continue;
            }
            int op = bond_to_operator(i, j, Lx, Ly);
            cout << "for (" << i << ", " << j << ") operator = " <<  op << endl;
            cout << "for operator = " << op << " site pair = (" << operator_to_bond(op, Lx, Ly)[0] << ", " << operator_to_bond(op, Lx, Ly)[1] << ")" << endl;
        }
    }

    for (int i = 0; i < 16; i++) {
            for (int j = i + 1; j < 16; j++) {
                cout << "vec min = " << vec_min(i,j,Lx,Ly) << endl;
            }
    }





    return 0;
}