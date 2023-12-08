#ifndef MEASURE_H_INCLUDED
#define MEASURE_H_INCLUDED

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
#include <array>
#include <iomanip>
#include <complex>

#include "configuration.h"
#include "sampling.h"
#include "diagonal_update.h"
#include "cluster_update.h"

#define _USE_MATH_DEFINES
#include <math.h>

using namespace std;
using namespace std::chrono;

extern random_device rd;
extern mt19937 rng;
extern uniform_real_distribution<double> dis;

vector<int> thermalize(vector<int>& spins, vector<int>& op_string, vector<double>& dbi, vector<double>& V_i, vector<double>& C_i, vector<vector<double> >& Pij, 
    vector<double>& Pc, double beta, int n_updates_warmup, bool line, int line_step){
        for (int i = 0; i < n_updates_warmup; i++){
            int n = diagonal_update(spins, op_string, dbi, V_i, C_i, Pij, Pc, beta);
            cluster_update(spins, op_string, dbi, V_i, C_i, line, line_step);
            int M_old = op_string.size();
            int M_new = n + n / 3;
            if (M_new > M_old){
                op_string.resize(M_new, -1);
            }
            //cout << "resized to " << op_string.size();
        }
        return op_string;
    }

vector<int> get_staggering(int Lx, int Ly) {
    int n_sites = Lx * Ly;
    vector<int> stag(n_sites, 0);
    for (int x = 0; x < Lx; x++) {
        for (int y = 0; y < Ly; y++) {
            int s = site(x, y, Lx, Ly);
            stag[s] = pow(-1, x + y);
        }
    }
    return stag;
}

double staggered_magnetization(vector<int>& spins, vector<int>& stag) {
    double M = 0.0;
    for (int i = 0; i < spins.size(); i++) {
        M += 0.5 * spins[i] * stag[i];
    }
    return M;
}

// for order parameter

vector<complex<double> > get_power(double kx, double ky, int Lx, int Ly) {
    int n_sites = Lx * Ly;
    //complex<double> j = sqrt(-1);
    complex<double> j(0.0, 1.0);
    //cout << j << endl;
    vector<complex<double> > sites(n_sites, complex<double>(0.0, 0.0));
    for (int x = 0; x < Lx; x++) {
        for (int y = 0; y < Ly; y++) {
            int s = site(x, y, Lx, Ly);
            sites[s] = exp(j * (kx * x + ky * y));
            if (abs(sites[s].imag()) < 1e-10){
                sites[s].imag(0.0);
            }
        }
    }
    return sites;
}

complex<double> order_parameter(vector<int>& spins, vector<complex<double> >& sites) {
    complex<double> FT (0.0, 0.0);
    for (int i = 0; i < spins.size(); i++) {
        if (spins[i] == 1){ // spin up
            FT += static_cast<double>(spins[i]) * sites[i];
        }
    }
    return FT;
}

class Measurement{
public:
    //int n_updates_measure;
    vector <int> ns;
    vector <int> nums;
    vector <int> ms;
    vector <complex<double> > f;

    void measure (vector<int>& spins, vector<int>& op_string, vector<double>& dbi, vector<double>& V_i, vector<double>& C_i, vector<vector<double> >& Pij, 
    vector<double>& Pc, vector<int> stag, vector<complex<double> >& sites_12, vector<complex<double> >& sites_21, double beta, int n_updates_measure, bool line, int line_step){
        for (int i = 0; i < n_updates_measure; i++){
            //cout << "measure iteration = " << i  << endl;
            auto start = high_resolution_clock::now();
            int n = diagonal_update(spins, op_string, dbi, V_i, C_i, Pij, Pc, beta);
            //cout << "n = " << n << endl;
            cluster_update(spins, op_string, dbi, V_i, C_i, line, line_step);
            ns.push_back(n);
            int ni = count(spins.begin(), spins.end(), 1);
            nums.push_back(ni);
            ms.push_back(abs(staggered_magnetization(spins, stag)));
            //complex<double> j = sqrt(-1); 
            complex<double> f_12 = abs(order_parameter(spins, sites_12));
            complex<double> f_21 = abs(order_parameter(spins, sites_21));
            f.push_back((f_12 + f_21) / 2.0);
            auto stop = high_resolution_clock::now();
            //auto duration = duration_cast<seconds>(stop - start);
            duration<double> duration = stop - start;
            double time = duration.count();
            //cout << fixed << setprecision(15) << time  << endl;
            //cout << "Time taken by one sweep: " << fixed << setprecision(10)  << time << " seconds" << endl;
        }
    }


    
};



#endif // MEASURE_H_INCLUDED