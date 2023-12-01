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
//#include "configuration.h"
//#include "sampling.h"
//#include "diagonal_update.h"
//#include "cluster_update.h"
#include "simulation.h"

using namespace std;
using namespace std::chrono;

//rand(time(NULL));
random_device rd;
mt19937 rng(rd());
uniform_real_distribution<double> dis(0.0, 1.0);

int main() {
    double d = 1.1;
    double Omega = 1.0;
    double Rb = 1.2;
    double a = 1.0;
    double cutoff = 4 * a;
    double eps = 0.5;
    int Lx = 8;
    int Ly = 8;
    double beta = 8.0;
    
    auto start = high_resolution_clock::now();
    Simulation S(d, Omega, Rb, a, cutoff, eps, Lx, Ly, beta, 1000, 400);
    auto stop = high_resolution_clock::now();
    //auto duration = duration_cast<seconds>(stop - start);
    duration<double> duration = stop - start;
    double time = duration.count();
    //cout << "Time taken by simulation: " << fixed << setprecision(10) << time << " seconds" << endl;
    cout << fixed << setprecision(15) << time  << endl;
    cout << "L = " << Lx << "; Energy per site = " <<  S.Es_Eerrs[0] << " error = " << S.Es_Eerrs[1]  << " at T = " << 1/beta << endl;
    cout << "L = " << Lx << "; Particle density  = " <<  S.Ns_Nerrs[0] << " error = " << S.Ns_Nerrs[1]  << " at T = " << 1/beta << endl;
    cout << "L = " << Lx << "; Magnetization per site = " <<  S.Ms_Merrs[0] << " error = " << S.Ms_Merrs[1]  << " at T = " << 1/beta << endl;
    /*
    cout << "n = " << site(0, 2, Lx, Ly) << endl;

    Configuration Config(d, Omega, Rb, a, cutoff, eps, Lx, Ly, beta);
    cout << "potential = " << Config.potential(0, 2) << endl;
    cout << "initial spins: " << endl;
    for (int i = 0; i < Config.spins.size(); i++){
        cout << "site = " << i << " spin = "<< Config.spins[i] << endl;
    }
    cout << endl;

    cout << "operator string: " << endl;
    for (int i = 0; i < Config.op_string.size(); i++) {
        cout << "p = " << i << " op = " << Config.op_string[i] << endl;
    }
    cout << endl;

    cout << "vec min = " << vec_min(0,1,Lx,Ly) << endl;
    */
/*
    for (int i = 0; i < 16; i++) {
            for (int j = i + 1; j < 16; j++) {
                cout << "vec min = " << vec_min(i,j,Lx,Ly) << endl;
            }
    }
*/
/*
    cout << "potential" << endl;
    vector<double> V = Config.V_i();
    for (int i = 0; i < V.size(); i++) {
        cout << "i = " << i << " V[i] = " << V[i] << endl;
    }
    cout << endl;

    cout << "delta_b" << endl;
    vector<double> db = Config.db_i();
    for (int i = 0; i < db.size(); i++) {
        cout << "i = " << i << " db[i] = " << db[i] << endl;
    }
    cout << endl;

    cout << "C array" << endl;
    vector<double> C = Config.C_i(db, V);
    for (int i = 0; i < C.size(); i++) {
        cout << "i = " << i << " C[i] = " << C[i] << endl;
    }
    cout << endl;
    
    cout << "probabilities" << endl;
    Probability P(db, V, C, Config.Omega, Config.Lx, Config.Ly);
    for (int i = 0; i < P.Pfull.size(); i++) {
        for (int j = 0; j < P.Pfull[i].size(); j++) {
            cout << "for " << "(" << i << ", " << j << ") Pij = " << P.Pfull[i][j] << endl;
        }
    }
    cout << endl;

    cout <<"cumulative" << endl;
    for (int i = 0; i < P.Pcumulative.size(); i++) {
        cout << "i = " << i << " Pc[i] = " << P.Pcumulative[i] << endl;
    }
    cout << endl;

    cout << "------- DIAGONAL " << endl;
    int n = diagonal_update(Config.spins, Config.op_string, db, V, C, P.Pfull, P.Pcumulative, Config.beta);
    cout << "n = " << n << endl;

    cout << "after update spins: " << endl;
    for (int i = 0; i < Config.spins.size(); i++){
        cout << "site = " << i << " spin = "<< Config.spins[i] << endl;
    }
    cout << endl;

    cout << "operator string: " << endl;
    for (int i = 0; i < Config.op_string.size(); i++) {
        cout << "p = " << i << " op = " << Config.op_string[i] << endl;
    }
    cout << endl;

    cout << "------- OFF-DIAGONAL " << endl;
    */
    /*
    Vertexlist Vertex(Config.spins, Config.op_string);
    cout << "linked vertex list: " << endl;
    for (int i = 0; i < Vertex.vertex_list.size(); i++) {
        cout << "v = " << i << " vertex_list[v] = " << Vertex.vertex_list[i] << endl;
    }
    cout << endl;
    cout << "first vertex at site list: " << endl;
    for (int i = 0; i < Vertex.first_vertex_at_site.size(); i++) {
        cout << "i = " << i << " " << Vertex.first_vertex_at_site[i] << endl;
    }
    cout << endl;
    cout << "last vertex at site list: " << endl;
    for (int i = 0; i < Vertex.last_vertex_at_site.size(); i++) {
        cout << "i = " << i << " " << Vertex.last_vertex_at_site[i] << endl;
    }
    cout << endl;
    */
   /*
   cluster_update(Config.spins, Config.op_string, db, V, C);
   cout << "after off-diag. update spins: " << endl;
    for (int i = 0; i < Config.spins.size(); i++){
        cout << "site = " << i << " spin = "<< Config.spins[i] << endl;
    }
    cout << endl;

    cout << "operator string: " << endl;
    for (int i = 0; i < Config.op_string.size(); i++) {
        cout << "p = " << i << " op = " << Config.op_string[i] << endl;
    }
    cout << endl;
    */


    return 0;
}