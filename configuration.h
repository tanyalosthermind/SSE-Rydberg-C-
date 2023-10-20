#ifndef CONFIGURATION_H_INCLUDED
#define CONFIGURATION_H_INCLUDED

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


using namespace std;

//random_device rd;
//mt19937 rng(rd());

extern random_device rd;
extern mt19937 rng;

int site (int x, int y, int Lx, int Ly){
        return y * Lx + x;
}

array<int, 2> site_to_xy(int n, int Lx, int Ly){
        int x_n = n % Lx;
        int y_n = n / Lx;
        array<int, 2> v;
        v[0] = x_n;
        v[1] = y_n;
        return v;
}

int bond_to_operator(int s0, int s1, int Lx, int Ly){
        int n_sites = Lx * Ly;
        int k = 2 * n_sites - 1;
        int op = -1;

        if (s0 != s1) {
            for (int i = 0; i < n_sites; i++){
                for (int j = 0; j < n_sites; j++){
                    if (i == j){
                        continue;
                    }
                    k++;
                    if (i == s0 && j == s1) {
                        op = k;
                    }
                }
            }
        }
        return op;
}

array<int, 2> operator_to_bond(int op, int Lx, int Ly) {
    int n_sites = Lx * Ly;
    int k = 2 * n_sites - 1;
    array<int, 2> bond;

    if (op < 2 * n_sites) {
        bond[0] = op / 2;
        bond[1] = op / 2;
    }
    else if (op >= 2 * n_sites) {
        for (int i = 0; i < n_sites; i++) {
            for (int j = 0; j < n_sites; j++) {
                if (i == j) {
                    continue;
                }
                k++;
                if (op == k) {
                    bond[0] = i;
                    bond[1] = j;
                    // return bond;
                }
            }
        }
    }
    return bond;
}

double distance_pbc (int s0, int s1, int Lx, int Ly){
    array<int, 2> xy_0 = site_to_xy(s0, Lx, Ly);
    array<int, 2> xy_1 = site_to_xy(s1, Lx, Ly);
    int dx = abs(xy_1[0] - xy_0[0]);
    int dy = abs(xy_1[1] - xy_0[1]);
    if (dx > Lx / 2){
        dx = Lx - dx;
    } else if (dx < - Lx / 2 + 1){
        dx = Lx + dx;
    }
    if (dy > Ly / 2){
        dy = Ly - dy;
    } else if (dy < - Ly / 2 + 1){
        dy = Ly + dy;
    }
    return hypot(dx, dy);
}

int vec_min(int s0, int s1, int Lx, int Ly) {
    array<int, 2> xy_0 = site_to_xy(s0, Lx, Ly);
    array<int, 2> xy_1 = site_to_xy(s1, Lx, Ly);
    int dx = abs(xy_1[0] - xy_0[0]);
    int dy = abs(xy_1[1] - xy_0[1]);
    //cout << "dx = " << dx << " dy = " << dy << endl;
    if (dx > Lx / 2){
        dx = Lx - dx;
    } else if (dx < - Lx / 2 + 1){
        dx = Lx + dx;
    }
    if (dy > Ly / 2){
        dy = Ly - dy;
    } else if (dy < - Ly / 2 + 1){
        dy = Ly + dy;
    }
    //cout << "new: dx = " << dx << " dy = " << dy << endl;
    int size_x = Lx / 2 + 1;
    int size_y = Ly / 2 + 1;
    vector<vector<int> > vec_list(size_x, vector<int>(size_y, 0));
    int nc = 0;
    for (int dx_ = 0; dx_ <= Lx / 2; dx_++){
        for (int dy_ = 0; dy_ <= Ly / 2; dy_++) {
            if (dx_ <= dy_){
                vec_list[dx_][dy_] = vec_list[dy_][dx_] = nc;
                nc++;
            }
        }
    }
    return vec_list[dx][dy];
}


class Configuration{
public:
    int Lx;
    int Ly;
    double beta;
    double d;
    double Omega;
    double Rb;
    double a;
    double cutoff;
    double eps;

    vector<int> spins;
    vector<int> op_string;

    Configuration(double d_, double Omega_, double Rb_, double a_, double cutoff_, double eps_, int Lx_, int Ly_, double beta_){
        d = d_;
        Omega = Omega_;
        Rb = Rb_;
        a = a_;
        cutoff = cutoff_;
        eps = eps_;
        Lx = Lx_;
        Ly = Ly_;
        beta = beta_;

        int n_sites = Lx * Ly;
        int M = 20;
        vector <int> range_N;
        for (int i = 0; i < n_sites; i++) {
            range_N.push_back(i);
        }
        shuffle(range_N.begin(), range_N.end(), rng); 
        for (int i = 0; i < range_N.size(); i++) {
            spins.push_back(2* (range_N[i] % 2) - 1);
        }
        for (int p = 0; p < M; p++) {
            op_string.push_back(-1);
        }
    }

    double potential(int s0, int s1){
        double dist = distance_pbc(s0, s1, Lx, Ly);
        //cout << "distance = " << dist << endl;
        if (dist == 0.0) {
            throw std::invalid_argument("PBC distance zero in potential!");
        } else if (dist > cutoff) {
            return 0.0;
        } else {
            double rij = dist / a;
            return std::pow(Rb / rij, 6);
        }

    }

    vector<double> V_i(){
        int n_sites = Lx * Ly;
        int size_v =  (Lx / 2 + 1) * (Lx / 2 + 2) / 2;
        vector<double> Vi(size_v, 0.0);
        for (int i = 0; i < n_sites; i++) {
            for (int j = i + 1; j < n_sites; j++) {
                int vec = vec_min(i, j, Lx, Ly);
                //cout << vec << endl;
                Vi[vec] = potential(i, j) / 2;
            }
        }
        return Vi;
    }

    vector<double> db_i(){
        int n_sites = Lx * Ly;
        int size_v =  (Lx / 2 + 1) * (Lx / 2 + 2) / 2;
        vector<double> db(size_v, 0.0);
        double d_norm = 0.0;
        int i1 = site(Lx / 2, Ly / 2, Lx, Ly);
        for (int j1 = 0; j1 < n_sites; j1++) {
            if (j1 != i1){
                double dist = distance_pbc(i1, j1, Lx, Ly);
                if (dist <= cutoff){
                    cout << "r = " << dist << endl;
                    d_norm += 1.0;
                }
            }
        }
        //cout << "d_norm = " <<  d_norm << endl;
        for (int i = 0; i < n_sites; i++) {
            for (int j = i + 1; j < n_sites; j++) {
                int vec = vec_min(i, j, Lx, Ly); 
                double dist = distance_pbc(i, j, Lx, Ly); 
                if (dist > cutoff) {
                    db[vec] = 0.0;
                } else {
                    //cout << "for " << "(" << i << ", " << j << ") dist = " << dist << endl;
                    db[vec] = d / d_norm / 2.0;
                }
            }
    }
        return db;
    }

    vector<double> C_i(const vector<double>& dbi, const vector<double>& V){
        int n_sites = Lx * Ly;
        int size_v =  (Lx / 2 + 1) * (Lx / 2 + 2) / 2;
        vector<double> Ci(size_v, 0.0);
        for (int i = 0; i < n_sites; i++) {
            for (int j = i + 1; j < n_sites; j++) {
                int vec = vec_min(i, j, Lx, Ly); 
                double Vi = V[vec];
                double db = dbi[vec];
                Ci[vec] = abs(min(0.0, min(db, 2.0 * db - Vi))) + eps * abs(min(db, 2.0 * db - Vi));
                if (Ci[vec] < 0.0000000000000001) {
                    Ci[vec] = 0.0;
                }
            }
        }

        return Ci;
    }
    

};

#endif // CONFIGURATION_H_INCLUDED