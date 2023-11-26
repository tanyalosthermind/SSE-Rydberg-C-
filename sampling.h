#ifndef SAMPLING_H_INCLUDED
#define SAMPLING_H_INCLUDED

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


using namespace std;

extern random_device rd;
extern mt19937 rng;
extern uniform_real_distribution<double> dis;

int get_index_from_cumulative_table(vector<double> probabilities, double r) {
    double norm = accumulate(probabilities.begin(), probabilities.end(), 0.0);
    int index = -1;
    for (size_t i = 0; i < probabilities.size(); ++i) {
        probabilities[i] = probabilities[i] / norm;
        if (i) { 
            probabilities[i] += probabilities[i - 1];
        }
        if (index == -1 && r <= probabilities[i]) {
            index = i;
        }
    }
    if (index == -1) index = probabilities.size() - 1;
    return index;
}

int sample(const vector<double>& probabilities) {
    // Generate a random number between 0 and 1
    double r = dis(rng);
    return get_index_from_cumulative_table(probabilities, r);
}

class Probability{
public:
    vector<double> Pcumulative;
    vector<vector<double> > Pfull;

    Probability(const vector<double>& dbi, const vector<double>& Vi, const vector<double>& Ci, double Omega, int Lx, int Ly){
        int n_sites = Lx * Ly;

        vector<vector<double> > prob_dist(n_sites, vector<double>(n_sites, 0.0));
        for (int i = 0; i < n_sites; i++) {
            for (int j = i; j < n_sites; j++) {
                int vec = vec_min(i, j, Lx, Ly);
                if (i == j){
                    prob_dist[i][j] = Omega / 2;
                } else {
                    double V = Vi[vec];
                    double db = dbi[vec];
                    double C = Ci[vec];
                    double W1 = C;
                    double W2 = db + C;
                    double W3 = db + C;
                    double W4 = -V + 2.0 * db + C;
                    prob_dist[i][j] = max(W1, max(W2, max(W3, W4)));
                    prob_dist[j][i] = max(W1, max(W2, max(W3, W4)));
                }
            }
        }
        Pfull = std::move(prob_dist);

        vector<double> Pc(n_sites, 1.0 / n_sites);
        Pcumulative = std::move(Pc);
    }
};



#endif // SAMPLING_H_INCLUDED