#ifndef DIAGONAL_UPDATE_H_INCLUDED
#define DIAGONAL_UPDATE_H_INCLUDED

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

#include "configuration.h"
#include "sampling.h"


using namespace std;

extern random_device rd;
extern mt19937 rng;
extern uniform_real_distribution<double> dis;

int diagonal_update(vector<int>& spins, vector<int>& op_string, const vector<double>& dbi, const vector<double>& Vi, const vector<double>& Ci, const vector< vector<double> >& Pij, const vector<double>& Pc, double beta){
    int n_sites = spins.size();
    int Lx = static_cast<int>(sqrt(n_sites));
    int Ly = static_cast<int>(sqrt(n_sites));
    int M = op_string.size();

    //int n = static_cast<int>(count_if(op_string.begin(), op_string.end(), [](int op) { return op != -1; }));
    int n = 0;
    for (std::vector<int>::const_iterator it = op_string.begin(); it != op_string.end(); ++it) {
    if (*it != -1) {
        n++;
    }
    }
    //cout << "n = " << n;

    double norm = 0.0;
    for (int i = 0; i < n_sites; i++) {
        for (int j = 0; j < n_sites; j++) {
            norm += Pij[i][j];
        }
    }
    //cout << "norm = " << norm << endl;
    double prob_ratio = norm * beta;
    for (int p = 0; p < M; ++p) {
        int op = op_string[p];
        if (op == -1){
            int index1 = sample(Pc);
            int index2 = sample(Pij[index1]);
            int s0 = index1;
            int s1 = index2;
            double prob = prob_ratio / (M - n);
            if (dis(rng) < prob){
                if (s0 == s1) {
                    op_string[p] = 2 * s0;
                    n++;
                } else {
                    int vec = vec_min(s0, s1, Lx, Ly);
                    double V = Vi[vec];
                    double C = Ci[vec];
                    double db = dbi[vec];
                    double W_actual = 0.0;
                    if (spins[s0] == -1 && spins[s1] == -1){
                        W_actual = C;
                    } else if (spins[s0] == -1 && spins[s1] == 1){
                        W_actual = db + C;
                    } else if (spins[s0] == 1 && spins[s1] == -1){
                        W_actual = db + C;
                    } else if (spins[s0] == 1 && spins[s1] == 1){
                        W_actual = -V + 2 * db + C;
                    }
                    double W_sampled = Pij[s0][s1];
                    //cout << "sampled s0 = " << s0 << " s1 = " << s1 << endl;
                    //cout << "sampled W = " << W_sampled << " W_actual = " << W_actual << " for spins = " << spins[s0] << " " << spins[s1] << endl;
                    double ratio = W_actual / W_sampled;
                    if (dis(rng) < ratio){
                        op_string[p] = bond_to_operator(s0, s1, Lx, Ly);
                        n++;
                    }
                }
            }
        } else if ((op % 2 == 0 && op < 2 * n_sites) || op >= 2 * n_sites) {
            double prob = (M - n + 1) / prob_ratio;
            if (dis(rng) < prob){
                op_string[p] = -1;
                n--;
            }
        } else if (op % 2 != 0 && op < 2 * n_sites){
            array<int, 2> bond = operator_to_bond(op, Lx, Ly);
            if (bond[0] != bond[1]){
                throw runtime_error("off diag operator not on site!");
            }
            int site = bond[0];
            spins[site] = - spins[site];
        }
    }
    return n;
}

#endif // DIAGONAL_UPDATE_H_INCLUDED