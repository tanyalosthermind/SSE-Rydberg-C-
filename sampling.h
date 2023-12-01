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


/*
int binary_search_(const vector<double>& cumulative_probs, double r) {
    int low = 0;
    int high = cumulative_probs.size() - 1;
    int mid;
    while (low < high) {
        mid = (low + high) / 2;
        if (r <= cumulative_probs[mid]) {
            high = mid;
        } else {
            low = mid + 1;
        }
    }
    return low;
}
*/
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

/*
vector<double> cumulative_table(const vector<double>& probabilities){
    vector <double> copy_prob = probabilities;
    double norm = accumulate(copy_prob.begin(), copy_prob.end(), 0.0);
    for (int i = 0; i < copy_prob.size(); i++){
        copy_prob[i] = copy_prob[i] / norm;
    }
    vector<double> cumulative_probs(copy_prob.size());
    partial_sum(copy_prob.begin(), copy_prob.end(), cumulative_probs.begin());
    return cumulative_probs;
}
*/

int sample(const vector<double>& probabilities) {
    //vector<double> cumulative_probs = cumulative_table(probabilities);
    // Generate a random number between 0 and 1
    double r = dis(rng);
    // Use binary search to find the corresponding outcome
    //int index = binary_search_(cumulative_probs, r);
    //int index = binary_search(cumulative_probs, 0.45);
    //return index;
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
        //Pfull = prob_dist;
        Pfull = std::move(prob_dist);

        vector<double> Pc(n_sites, 1.0 / n_sites);
        //Pcumulative = Pc;
        Pcumulative = std::move(Pc);
    }
};



#endif // SAMPLING_H_INCLUDED