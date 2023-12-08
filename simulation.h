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

complex<double> getAverage_complex(vector<complex<double> > const& v) {
    if (v.empty()) {
        return 0;
    }
    return accumulate(v.begin(), v.end(), complex<double>(0.0, 0.0)) / static_cast<double>(v.size());
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

template<typename T1>
double getStd_inter(std::vector<T1> const& v, int size) {
    double mean;
    if (v.empty()) {
        mean = 0;
    }
    mean = accumulate(v.begin(), v.end(), 0.0) / size;
    vector<double> diff(size);
    //transform(v.begin(), v.end(), diff.begin(),
    //bind2nd(minus<double>(), mean));
    transform(v.begin(), v.end(), diff.begin(), [mean](double x) { return x - mean; }); //for c++17 standard
    double sq_sum = inner_product(diff.begin(), diff.end(), diff.begin(), 0.0);
    double stdev = sqrt(sq_sum / size);
    return stdev;
}

complex<double> getStd_complex(std::vector<complex<double> > const& v) {
    complex<double> mean(0.0, 0.0);
    if (v.empty()) {
        mean = complex<double>(0.0, 0.0);
    }
    mean = accumulate(v.begin(), v.end(), complex<double>(0.0, 0.0)) / static_cast<double>(v.size());
    vector<complex<double> > diff(v.size());
    //transform(v.begin(), v.end(), diff.begin(),
    //bind2nd(minus<double>(), mean));
    transform(v.begin(), v.end(), diff.begin(), [mean](complex<double> x) { return x - mean; }); //for c++17 standard
    complex<double> sq_sum = inner_product(diff.begin(), diff.end(), diff.begin(), complex<double>(0.0, 0.0));
    complex<double> stdev = sqrt(sq_sum / static_cast<double>(v.size()));
    return stdev;
}

complex<double> getStd_complex_inter(std::vector<complex<double> > const& v, int size) {
    complex<double> mean(0.0, 0.0);
    if (v.empty()) {
        mean = complex<double>(0.0, 0.0);
    }
    mean = accumulate(v.begin(), v.end(), complex<double>(0.0, 0.0)) / static_cast<double>(size);
    vector<complex<double> > diff(size);
    //transform(v.begin(), v.end(), diff.begin(),
    //bind2nd(minus<double>(), mean));
    transform(v.begin(), v.end(), diff.begin(), [mean](complex<double> x) { return x - mean; }); //for c++17 standard
    complex<double> sq_sum = inner_product(diff.begin(), diff.end(), diff.begin(), complex<double>(0.0, 0.0));
    complex<double> stdev = sqrt(sq_sum / static_cast<double>(size));
    return stdev;
}

class Simulation{
public:
    //int n_updates_measure;
    vector <double> Es_Eerrs;
    vector <double> Ns_Nerrs;
    vector <double> Ms_Merrs;
    vector <complex<double> > Fs_Ferrs;

    Simulation (double d, double Omega, double Rb, double a, double cutoff, double eps, int Lx, int Ly, double beta, double kx, double ky, int n_updates_measure, int n_bins, bool line, int line_step){
        Configuration Config (d, Omega, Rb, a, cutoff, eps, Lx, Ly, beta, kx, ky);
        int n_sites = Config.spins.size();
        vector<double> Vi = Config.V_i();
        vector<double> dbi = Config.db_i();
        vector<double> Ci = Config.C_i(dbi, Vi);
        Probability P(dbi, Vi, Ci, Config.Omega, Config.Lx, Config.Ly);
        //vector<vector<double> > Pij = P.Pfull;
        //vector<double> Pc = P.Pcumulative;

        vector<int> stag = get_staggering(Config.Lx, Config.Ly);
        vector<complex<double> > sites_12 = get_power(Config.kx, Config.ky, Config.Lx, Config.Ly);
        vector<complex<double> > sites_21 = get_power(Config.ky, Config.kx, Config.Lx, Config.Ly);
        double c_sum = init_c(Config.spins, Ci, Config.Omega);
        
        ofstream output_e("energy.txt");
        ofstream output_n("density.txt");
        ofstream output_m("magnetization.txt");
        ofstream output_f("order_param.txt");

        ofstream output_res("results.txt");

        output_e.clear();
        output_n.clear();
        output_m.clear();
        output_f.clear();
        output_res.clear();

        cout << "thermalization..." << endl;
        Config.op_string = thermalize(Config.spins, Config.op_string, dbi, Vi, Ci, P.Pfull, P.Pcumulative, Config.beta, 100000, line, line_step);
        vector<double> Es(n_bins, 0.0);
        vector<double> Ns(n_bins, 0.0);
        vector<double> Ms(n_bins, 0.0);
        vector <complex<double> > Fs(n_bins, complex<double>(0.0, 0.0));

        cout << "begin measurement..." << endl;
        for (int n_bin = 0; n_bin < n_bins; n_bin++){
            Measurement Meas;
            Meas.measure(Config.spins, Config.op_string, dbi, Vi, Ci, P.Pfull, P.Pcumulative, stag, sites_12, sites_21, Config.beta, n_updates_measure, line, line_step);
            double n_mean = getAverage(Meas.ns);
            double E = (- n_mean/Config.beta) / n_sites + c_sum;
            double num_mean = getAverage(Meas.nums);
            double N = num_mean / n_sites;
            double ms_mean = getAverage(Meas.ms);
            double M = ms_mean / n_sites;
            complex<double> f_mean = getAverage_complex(Meas.f);
            complex<double> F = f_mean / static_cast<double>(n_sites);
            Es[n_bin] = E;
            Ns[n_bin] = N;
            Ms[n_bin] = M;
            Fs[n_bin] = F;
            output_e << E << "\n";
            output_e.flush();
            output_n << N << "\n";
            output_n.flush();
            output_m << M << "\n";
            output_m.flush();
            output_f << F << "\n";
            output_f.flush();

            //output_res.clear();
            output_res.seekp(0);
            output_res << "Number of calculated bins: " << n_bin + 1 << "\n";
            //output_res << "Energy per site = " << getAverage(Es) << " ± " << getStd(Es) / sqrt(n_bin + 1) << "\n";
            output_res << "Energy per site = " << accumulate(Es.begin(), Es.end(), 0.0) / (n_bin + 1) << " ± " << getStd_inter(Es, n_bin + 1) / sqrt(n_bin + 1) << "\n";
            output_res << "Density = " << accumulate(Ns.begin(), Ns.end(), 0.0) / (n_bin + 1) << " ± " << getStd_inter(Ns, n_bin + 1) / sqrt(n_bin + 1) << "\n";
            output_res << "Magnetization per site = " << accumulate(Ms.begin(), Ms.end(), 0.0) / (n_bin + 1) << " ± " << getStd_inter(Ms, n_bin + 1) / sqrt(n_bin + 1) << "\n";
            output_res << "Order parameter = " <<  accumulate(Fs.begin(), Fs.end(), complex<double>(0.0, 0.0)) / static_cast<double>((n_bin + 1)) << " ± " << getStd_complex_inter(Fs, n_bin + 1) / sqrt(n_bin + 1) << "\n";
            output_res.flush();
            
        }
        Es_Eerrs.push_back(getAverage(Es));
        Es_Eerrs.push_back(getStd(Es) / sqrt(n_bins));
        Ns_Nerrs.push_back(getAverage(Ns));
        Ns_Nerrs.push_back(getStd(Ns) / sqrt(n_bins));
        Ms_Merrs.push_back(getAverage(Ms));
        Ms_Merrs.push_back(getStd(Ms) / sqrt(n_bins));
        Fs_Ferrs.push_back(getAverage_complex(Fs));
        Fs_Ferrs.push_back(getStd_complex(Fs) / sqrt(n_bins));
        output_e.close();
        output_n.close();
        output_m.close();
        output_f.close();
        output_res.close();
    }
    
};



#endif // SIMULATION_H_INCLUDED