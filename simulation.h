#ifndef SIMULATION_H_INCLUDED
#define SIMULATION_H_INCLUDED

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
#include <fstream>

#include "configuration.h"
#include "sampling.h"
#include "diagonal_update.h"
#include "cluster_update.h"
#include "measure.h"


using namespace std;
using namespace std::chrono;

extern random_device rd;
extern mt19937 rng;
extern uniform_real_distribution<double> dis;

double init_c(vector<int>& spins, vector<double>& C_i, double Omega) {
    int n_sites = spins.size();
    int Lx = static_cast<int>(sqrt(n_sites));
    int Ly = static_cast<int>(sqrt(n_sites));
    double c = Omega * 0.5;
    for (int i = 0; i < n_sites; i++) {
        for (int j = 0; j < n_sites; j++) {
            int vec = vec_min(i, j, Lx, Ly);
            if (i != j) {
                c += C_i[vec] / n_sites;
            }
        }
    }
    return c;
}

// mean of vector
template<typename T>
double getAverage(std::vector<T> const& v) {
    if (v.empty()) {
        return 0;
    }
    return accumulate(v.begin(), v.end(), 0.0) / v.size();
}
// standard deviation
template<typename T1>
double getStd(std::vector<T1> const& v) {
    double mean;
    if (v.empty()) {
        mean = 0;
    }
    mean = accumulate(v.begin(), v.end(), 0.0) / v.size();
    vector<double> diff(v.size());
    //transform(v.begin(), v.end(), diff.begin(),
    //bind2nd(minus<double>(), mean));
    transform(v.begin(), v.end(), diff.begin(), [mean](double x) { return x - mean; }); //for c++17 standard
    double sq_sum = inner_product(diff.begin(), diff.end(), diff.begin(), 0.0);
    double stdev = sqrt(sq_sum / v.size());
    return stdev;
}

class Simulation{
public:
    //int n_updates_measure;
    vector <double> Es_Eerrs;
    vector <double> Ns_Nerrs;
    vector <double> Ms_Merrs;

    Simulation (double d, double Omega, double Rb, double a, double cutoff, double eps, int Lx, int Ly, double beta, int n_updates_measure, int n_bins){
        Configuration Config (d, Omega, Rb, a, cutoff, eps, Lx, Ly, beta);
        int n_sites = Config.spins.size();
        vector<double> Vi = Config.V_i();
        vector<double> dbi = Config.db_i();
        vector<double> Ci = Config.C_i(dbi, Vi);
        Probability P(dbi, Vi, Ci, Config.Omega, Config.Lx, Config.Ly);
        //vector<vector<double> > Pij = P.Pfull;
        //vector<double> Pc = P.Pcumulative;

        vector<int> stag = get_staggering(Config.Lx, Config.Ly);
        double c_sum = init_c(Config.spins, Ci, Config.Omega);
        
        ofstream output_e("energy.txt");
        ofstream output_n("density.txt");
        ofstream output_m("magnetization.txt");
        output_e.clear();
        output_n.clear();
        output_m.clear();

        cout << "thermalization..." << endl;
        Config.op_string = thermalize(Config.spins, Config.op_string, dbi, Vi, Ci, P.Pfull, P.Pcumulative, Config.beta, 100000);
        vector<double> Es(n_bins, 0.0);
        vector<double> Ns(n_bins, 0.0);
        vector<double> Ms(n_bins, 0.0);

        cout << "begin measurement..." << endl;
        for (int n_bin = 0; n_bin < n_bins; n_bin++){
            Measurement Meas;
            Meas.measure(Config.spins, Config.op_string, dbi, Vi, Ci, P.Pfull, P.Pcumulative, stag, Config.beta, n_updates_measure);
            double n_mean = getAverage(Meas.ns);
            double E = (- n_mean/Config.beta) / n_sites + c_sum;
            double num_mean = getAverage(Meas.nums);
            double N = num_mean / n_sites;
            double ms_mean = getAverage(Meas.ms);
            double M = ms_mean / n_sites;
            Es[n_bin] = E;
            Ns[n_bin] = N;
            Ms[n_bin] = M;
            output_e << E << "\n";
            output_n << N << "\n";
            output_m << M << "\n";
        }
        Es_Eerrs.push_back(getAverage(Es));
        Es_Eerrs.push_back(getStd(Es) / sqrt(n_bins));
        Ns_Nerrs.push_back(getAverage(Ns));
        Ns_Nerrs.push_back(getStd(Ns) / sqrt(n_bins));
        Ms_Merrs.push_back(getAverage(Ms));
        Ms_Merrs.push_back(getStd(Ms) / sqrt(n_bins));
        output_e.close();
        output_n.close();
        output_m.close();
    }
    
};



#endif // SIMULATION_H_INCLUDED