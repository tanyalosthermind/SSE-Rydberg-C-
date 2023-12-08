#ifndef CLUSTER_UPDATE_H_INCLUDED
#define CLUSTER_UPDATE_H_INCLUDED

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

void change_type(int v0, vector<int> & op_string, int n_sites){
    int p = v0 / 4;
    if (op_string[p] < 2 * n_sites && op_string[p] % 2 != 0) {
        op_string[p]--;
    } else if (op_string[p] < 2 * n_sites && op_string[p] % 2 == 0) {
        op_string[p]++;
    }
}

void prob(int spins0, int spins1, int vec, vector<double>& f_p, vector<double>& dbi, vector<double>& V_i, vector<double>& C_i, vector<int>& prob_in, int n_sites){
    double db = dbi[vec];
    if (spins0 == -1 && spins1 == -1){
        f_p[0] += log(db + C_i[vec]);
        f_p[1] += log(C_i[vec]);
    } else if (spins0 == 1 && spins1 == 1){
        f_p[0] += log(db + C_i[vec]);
        f_p[1] += log(- V_i[vec] + 2 * db + C_i[vec]);
    } else if (spins0 == -1 && spins1 == 1){
        f_p[0] += log(- V_i[vec] + 2 * db + C_i[vec]);
        f_p[1] += log(db + C_i[vec]);
    } else if (spins0 == 1 && spins1 == -1){
        f_p[0] += log(C_i[vec]);
        f_p[1] += log(db + C_i[vec]);
    }
}

class Vertexlist {
public:
    vector <int> vertex_list;
    vector <int> first_vertex_at_site;
    vector <int> last_vertex_at_site;
    vector <int> spin_m;
    int max_ghostlegs;

    
    Vertexlist(vector<int> & spins, vector<int> & op_string){
        max_ghostlegs = 4;
        int n_sites = spins.size();
        int Lx = static_cast<int>(sqrt(n_sites));
        int Ly = static_cast<int>(sqrt(n_sites));
        int M = op_string.size();
        int n_ghostlegs = max_ghostlegs * M;
        //vector<int> vertex_list_(n_ghostlegs, 0);
        //vertex_list = vertex_list_;
        vertex_list = vector<int>(n_ghostlegs, 0);
        //for (int i = 0; i < n_ghostlegs; i++){ 
        //    vertex_list.push_back(0); 
        //}
        //vector<int> first_vertex_at_site_(n_sites, -1);
        //vector<int> last_vertex_at_site_(n_sites, -1);
        //first_vertex_at_site = first_vertex_at_site_;
        //last_vertex_at_site = last_vertex_at_site_;
        first_vertex_at_site = std::move(vector<int>(n_sites, -1));
        last_vertex_at_site = std::move(vector<int>(n_sites, -1));
        spin_m = vector<int>(n_ghostlegs, 0);
        //for (int i = 0; i < n_sites; i++){ 
        //    first_vertex_at_site.push_back(-1); 
        //    last_vertex_at_site.push_back(-1);
        //}
        int v0, v1, v2, v3;
        int op = -1;
        for (int p = 0; p < M; p++){ // go through an operator string. ? p = vertex ?
            //cout << "p = " << p << endl;
            v0 = p * max_ghostlegs; //left incoming leg to the vertex
            op = op_string[p];
            if (op == -1){ //identity operator
                // ignore it for constructing/flipping clusters: mark as visited & disconnected
                vertex_list.at(v0) = -2;
                vertex_list.at(v0+1) = -2;
                vertex_list.at(v0+2) = -2;
                vertex_list.at(v0+3) = -2;
            } else if (op >= 2 * n_sites){ // H1b: bond operator with 4 legs
                v1 = v0 + 1; // right incoming leg to the vertex
                array<int, 2> v = operator_to_bond(op, Lx, Ly);
                int i = v[0];
                int j = v[1];
                v2 = last_vertex_at_site[i]; // outcoming legs
                v3 = last_vertex_at_site[j];
                if (v2 == -1){ //no operator encountered at this site before
                    first_vertex_at_site[i] = v0;
                } else { //encountered an operator at this vertex before -> create link
                    vertex_list[v2] = v0;
                    vertex_list[v0] = v2;
                }
                if (v3 == -1){ // similar for the other site
                    first_vertex_at_site[j] = v1;
                } else {
                    vertex_list[v3] = v1;
                    vertex_list[v1] = v3;
                }
                last_vertex_at_site[i] = v0 + 2;  // left outgoing vertex of op
                last_vertex_at_site[j] = v0 + 3;  // right outgoing vertex of op
                spin_m[v0] = spins[i];
                spin_m[v0 + 1] = spins[j];
                spin_m[v0 + 2] = spins[i];
                spin_m[v0 + 3] = spins[j];
            } else if (op < 2 * n_sites){ // H±1a: site operator with 2 legs: v0 incoming and v2 outcoming
                array<int, 2> v = operator_to_bond(op, Lx, Ly);
                int i = v[0];
                v2 = last_vertex_at_site[i];
                if (v2 == -1){
                    first_vertex_at_site[i] = v0;
                } else {
                    vertex_list[v2] = v0;
                    vertex_list[v0] = v2;
                }
                last_vertex_at_site[i] = v0 + 2;
                //mark the ghostlegs as visited
                vertex_list.at(v0+1) = -2;
                vertex_list.at(v0+3) = -2;
                if (op % 2 == 1){
                    spins[i] = - spins[i];
                }
                spin_m[v0] = spins[i];
                spin_m[v0 + 1] = spins[i];
                spin_m[v0 + 2] = spins[i];
                spin_m[v0 + 3] = spins[i];
            }
        }
        // now we need to connect vertices between top and bottom: PBC in imaginary time
        for (int s0 = 0; s0 < n_sites; s0++){
            v0 = first_vertex_at_site[s0];
            if (v0 != -1){  // there is an operator acting on that site -> create link
                v1 = last_vertex_at_site[s0];
                vertex_list[v1] = v0;
                vertex_list[v0] = v1;
            }
        }

        // debugging
        //v0 = 0;
        int leg_counter = 0;
        int n_id = 0;
        int n_offd = 0;
        int n_1a = 0;
        int n_1b = 0;

        for (int i = 0; i < M; i++){
            if (op_string[i] == -1){
                n_id++;
            } else if (op_string[i] < 2 * n_sites && op_string[i] % 2 != 0){
                n_offd++;
            } else if (op_string[i] < 2 * n_sites && op_string[i] % 2 == 0){
                n_1a++;
            } else if (op_string[i] >= 2 * n_sites) {
                n_1b++;
            }
        }
        int n_legs = 4 * n_1b + 2 * n_1a + 2 * n_offd;
        for (int v = 0; v < n_ghostlegs; v++){
            if (vertex_list[v] != -2){
                leg_counter++;
                if (v !=  vertex_list[vertex_list[v]]){
                    cout << "leg = " << v << " vertex_list[vertex_list[v]] = " << vertex_list[vertex_list[v]] << endl;
                    throw invalid_argument( "ALERT: inconsistent list" );
                }
            }
        }
        if (leg_counter != n_legs){
            throw invalid_argument( "ALERT: linked list has missing links, leg_counter != n_legs" );
        }
    }

    void clusterupdate(vector<int>& spins, vector<int>& op_string, vector<int>& vertex_list, vector<int>& first_vertex_at_site,
     vector<double>& dbi, vector<double>& V_i, vector<double>& C_i){
        int n_sites = spins.size();
        int Lx = static_cast<int>(sqrt(n_sites));
        int Ly = static_cast<int>(sqrt(n_sites));
        int M = op_string.size();
        int n_ghostlegs = max_ghostlegs * M;
        vector<int> color(n_ghostlegs, 0);
        vector<int> stack_legs(n_ghostlegs, -1);
        bool finished;

        int nc = 0;
        for (int v0 = 0; v0 < n_ghostlegs; v0 += 4) {
            if (vertex_list[v0] < 0) {
                continue;
            }
            if (color[v0] > 0){
                continue;
            }
            nc++;
            int vs = v0;
            int v1 = v0;
            int nd = 0;
             while (true) {
                while(true) {
                    color[v1] = nc;
                    if (op_string[v1 / 4] >= 2 * n_sites){
                        if (color[v1 ^ 1] == 0){
                            nd++;
                            stack_legs[nd] = v1 ^ 1;
                        }
                    }
                    int v2 = vertex_list[v1];
                    color[v2] = nc;
                    if (op_string[v2 / 4] < 2 * n_sites){
                        break;
                    } else if (op_string[v2 / 4] >= 2 * n_sites){
                        v1 = v2 ^ 2;
                        if (color[v2 ^ 1] == 0){
                            nd++;
                            stack_legs[nd] = v2 ^ 1;
                        }
                    }
                    if (v1 == vs){
                        break;
                    }
                }

                if (!(op_string[vs / 4] < 2 * n_sites)){
                    v1 = vs ^ 2;
                    while (true) {
                        color[v1] = nc;
                        if (op_string[v1 / 4] >= 2 * n_sites){
                            if (color[v1 ^ 1] == 0){
                                nd++;
                                stack_legs[nd] = v1 ^ 1;
                            }
                        }
                        int v2 = vertex_list[v1];
                        if (v2 == vs){
                            break;
                        }
                        color[v2] = nc;
                        if (op_string[v2 / 4] < 2 * n_sites){
                            break;
                        } else {
                            v1 = v2 ^ 2;
                            if (color[v2 ^ 1] == 0){
                                nd++;
                                stack_legs[nd] = v2 ^ 1;
                            }
                        }
                    }
                }
                while (true) {
                    finished = false;
                    if (nd == 0){
                        finished = true;
                        break;
                    }
                    vs = stack_legs[nd];
                    v1 = stack_legs[nd];
                    nd--;
                    if (!(color[v1] > 0)){
                        break;
                    }
                }
                if (finished == true){
                    break;
                }
             }
        }

        int nc1 = nc;
        vector<int> flip(nc1, 0);
        vector<vector<double> > f_p(nc1, vector<double>(2, 1.0));
        for (int p = 0; p < M; p++) {
            int op = op_string[p];
            if (op == -1){
                continue;
            } else if (op >= 2 * n_sites){
                array<int, 2> bond = operator_to_bond(op, Lx, Ly);
                int s1 = bond[0];
                int s2 = bond[1];
                int vec = vec_min(s1, s2, Lx, Ly);
                double db = dbi[vec];
                nc = color[4 * p];
                if (spins[s1] == -1 && spins[s2] == -1){
                    f_p[nc - 1][0] *=  - V_i[vec] + 2 * db + C_i[vec];
                    f_p[nc - 1][1] *=  C_i[vec];
                } else if (spins[s1] == 1 && spins[s2] == 1){
                    f_p[nc - 1][0] *=  C_i[vec];
                    f_p[nc - 1][1] *=  - V_i[vec] + 2 * db + C_i[vec];
                }
            } else if (op < 2 * n_sites){
                array<int, 2> bond = operator_to_bond(op, Lx, Ly);
                int s1 = bond[0];
                //int s2 = bond[1];
                //nc = color[4 * p];
                if (op % 2 != 0){
                    spins[s1] = - spins[s1];
                }
            }
        }

        double w;
        for (int i_nc = 0; i_nc < nc1; i_nc ++){
            if (f_p[i_nc][1] == 0.0) {
                w = 0.0;
            } else {
                w = f_p[i_nc][0] / f_p[i_nc][1];
            }
            if (abs(w - 1.0) < 0.00000001){
                w = 0.5;
            }
            if (dis(rng) < w){
                flip[i_nc] = 1;
            }
        }
        for (int v0 = 0; v0 < n_ghostlegs; v0 += 2) {
            if (vertex_list[v0] < 0){
                continue;
            }
            if (op_string[v0 / 4] < 2 * n_sites){
                if (flip[color[v0] - 1] == 1){
                    change_type(v0, op_string, n_sites);
                    vertex_list[v0] = -1;
                } else {
                    vertex_list[v0] = -2;
                }
            } else if (op_string[v0 / 4] >= 2 * n_sites){
                if (flip[color[v0] - 1] == 1){
                    vertex_list[v0] = -1;
                    vertex_list[v0 + 1] = -1;
                } else {
                    vertex_list[v0] = -2;
                    vertex_list[v0 + 1] = -2;
                }
            }
        }
        for (int i = 0; i < n_sites; i++) {
            if (first_vertex_at_site[i] != -1){
                if (vertex_list[first_vertex_at_site[i]] == -1){
                    spins[i] = - spins[i];
                }
            } else {
                if (dis(rng) < 0.5){
                    spins[i] = - spins[i];
                }
            }
        }
    }

    
    /*
    Vertexlist(vector<int> & spins, vector<int> & op_string){
        max_ghostlegs = 4;
        int n_sites = spins.size();
        int Lx = static_cast<int>(sqrt(n_sites));
        int Ly = static_cast<int>(sqrt(n_sites));
        int M = op_string.size();
        int n_ghostlegs = max_ghostlegs * M;
        vector<int> vertex_list_(n_ghostlegs, 0);
        vertex_list = vertex_list_;
        //for (int i = 0; i < n_ghostlegs; i++){ 
        //    vertex_list.push_back(0); 
        //}
        vector<int> first_vertex_at_site_(n_sites, -1);
        vector<int> last_vertex_at_site_(n_sites, -1);
        first_vertex_at_site = first_vertex_at_site_;
        last_vertex_at_site = last_vertex_at_site_;
        //for (int i = 0; i < n_sites; i++){ 
        //    first_vertex_at_site.push_back(-1); 
        //    last_vertex_at_site.push_back(-1);
        //}
        int v0, v1, v2, v3;
        int op = -1;
        for (int p = 0; p < M; p++){
            v0 = p * max_ghostlegs;
            //int v1 = v0 + 1;
            op = op_string[p];
            if (op == -1){
                vertex_list[v0] = -2;
                vertex_list[v0 + 1] = -2;
                vertex_list[v0 + 2] = -2;
                vertex_list[v0 + 3] = -2;
            } else if (op >= 2 * n_sites){
                v1 = v0 + 1; //??
                array<int, 2> bond = operator_to_bond(op, Lx, Ly);
                int s0 = bond[0];
                int s1 = bond[1];
                v2 = last_vertex_at_site[s0];
                v3 = last_vertex_at_site[s1];
                if (v2 == -1){
                    first_vertex_at_site[s0] = v0;
                } else {
                    vertex_list[v2] = v0;
                    vertex_list[v0] = v2;
                }
                if (v3 == -1){
                    first_vertex_at_site[s1] = v1;
                } else {
                    vertex_list[v3] = v1;
                    vertex_list[v1] = v3;
                }
                last_vertex_at_site[s0] = v0 + 2;
                last_vertex_at_site[s1] = v0 + 3;
            } else if (op < 2 * n_sites){
                array<int, 2> bond = operator_to_bond(op, Lx, Ly);
                int s0 = bond[0];
                int s1 = bond[1];
                if (s0 != s1){
                    throw invalid_argument("site operator not on site!");
                }
                v2 = last_vertex_at_site[s0];
                if (v2 == -1){
                    first_vertex_at_site[s0] = v0;
                } else {
                    vertex_list[v2] = v0;
                    vertex_list[v0] = v2;
                }
                last_vertex_at_site[s0] = v0 + 2;
                vertex_list[v0 + 1] = -2;
                vertex_list[v0 + 3] = -2;
            }
        }

        for (int s0; s0 < n_sites; s0++){
            v0 = first_vertex_at_site[s0];
            if (v0 != -1){
                v1 = last_vertex_at_site[s0];
                vertex_list[v1] = v0;
                vertex_list[v0] = v1;
            }
        }

        // debugging
        v0 = 0;
        int leg_counter = 0;
        int n_id = 0;
        int n_offd = 0;
        int n_1a = 0;
        int n_1b = 0;

        for (int i = 0; i < M; i++){
            if (op_string[i] == -1){
                n_id++;
            } else if (op_string[i] < 2 * n_sites && op_string[i] % 2 != 0){
                n_offd++;
            } else if (op_string[i] < 2 * n_sites && op_string[i] % 2 == 0){
                n_1a++;
            } else if (op_string[i] >= 2 * n_sites) {
                n_1b++;
            }
        }
        int n_legs = 4 * n_1b + 2 * n_1a + 2 * n_offd;

        for (int v = 0; v < n_ghostlegs; v++){
            cout << vertex_list[v] << " ";
        }
        cout << endl;

        for (int v = 0; v < n_ghostlegs; v++){
            if (vertex_list[v] != -2){
                cout << "leg = " << v << " vertex_list[vertex_list[v]] = " << vertex_list[vertex_list[v]] << endl;
            }
        }
        for (int v = 0; v < n_ghostlegs; v++){
            if (vertex_list[v] != -2){
                leg_counter++;
                if (v !=  vertex_list[vertex_list[v]]){
                    cout << "leg = " << v << " vertex_list[vertex_list[v]] = " << vertex_list[vertex_list[v]] << endl;
                    throw invalid_argument( "ALERT: inconsistent list" );
                }
            }
        }
        if (leg_counter != n_legs){
            throw invalid_argument( "ALERT: linked list has missing links, leg_counter != n_legs" );
        }
    }
    */

   void lineupdate(vector<int>& spins, vector<int>& op_string, vector<int>& vertex_list, vector<int>& first_vertex_at_site, vector<int>& spin_m,
     vector<double>& dbi, vector<double>& V_i, vector<double>& C_i){
        int n_sites = spins.size();
        int Lx = static_cast<int>(sqrt(n_sites));
        int Ly = static_cast<int>(sqrt(n_sites));
        int M = op_string.size();
        int n_ghostlegs = max_ghostlegs * M;
        vector<double> f_p(2, 1.0);
        bool loop = false;
        vector<int> prob_in(2, 0);
        int v0 = -1;
        int i_count = 0;
        for (i_count; i_count < 3000; i_count++){
            int factor = static_cast<int>(dis(rng) * M);
            v0 = factor * max_ghostlegs;
            if (op_string[v0 / 4] < 2 * n_sites && op_string[v0 / 4] >= 0){
                break;
            }
        }
        if (i_count >= 3000 - 1){
            return;
        }
        //cout << "agreed on vertex " << v0 << " with count " << i_count << endl;
        array<int, 2> bond = operator_to_bond(op_string[v0 / 4], Lx, Ly);
        int s0 = bond[0];
        //int s1 = bond[1];
        int vs = v0;
        int v1 = vs;
        while (true) {
            array<int, 2> v = operator_to_bond(op_string[v1 / 4], Lx, Ly);
            int s1 = v[0];
            int s2 = v[1];
            if (s1 != s2){
                int vec = vec_min(s1, s2, Lx, Ly);
                int spins0 = spin_m[v1];
                int spins1 = spin_m[v1 ^ 1];
                prob(spins0, spins1, vec, f_p, dbi, V_i, C_i, prob_in, n_sites);
                //cout << "1) fp = " << f_p[0] << " " << f_p[1] << endl;
            }
            int v2 = vertex_list[v1];
            if (op_string[v2 / 4] < 2 * n_sites){
                break;
            } else {
                v1 = v2 ^ 2;
            }
            if (v1 == vs){
                loop = true;
                break;
            }
        }

        if (!(op_string[vs / 4] < 2 * n_sites) && !loop){
            v1 = vs ^ 2;
            while (true){
                int v2 = vertex_list[v1];
                if (v2 == vs){
                    break;
                }
                if (op_string[v2 / 4] < 2 * n_sites){
                    break;
                } else {
                    v1 = v2 ^ 2;
                }
                array<int, 2> v = operator_to_bond(op_string[v1 / 4], Lx, Ly);
                int s1 = v[0];
                int s2 = v[1];
                if (s1 != s2){
                    int vec = vec_min(s1, s2, Lx, Ly);
                    int spins0 = spin_m[v1];
                    int spins1 = spin_m[v1 ^ 1];
                    prob(spins0, spins1, vec, f_p, dbi, V_i, C_i, prob_in, n_sites);
                    //cout << "2) fp = " << f_p[0] << " " << f_p[1] << endl;
                }
            }
        }
        double w = exp(f_p[0] - f_p[1]); // ???
        //cout << "w = " << w << endl;
        vs = v0;
        v1 = vs;

        if (dis(rng) < w){
            if (op_string[vs / 4] < 2 * n_sites){
                change_type(vs, op_string, n_sites);
            }
            while (true){
                int v2 = vertex_list[v1];
                vertex_list[v1] = -1;
                vertex_list[v2] = -1;
                if (op_string[v2 / 4] < 2 * n_sites){
                    change_type(v2, op_string, n_sites);
                    break;
                } else {
                    v1 = v2 ^ 2;
                }
                if (v1 == vs){
                    loop = true;
                    break;
                }
            }
            if (!(op_string[vs / 4] < 2 * n_sites) && !(loop)){
                v1 = vs ^ 2;
                while (true){
                    int v2 = vertex_list[v1];
                    vertex_list[v1] = -1;
                    vertex_list[v2] = -1;
                    if (v2 == vs){
                        break;
                    }
                    if (op_string[v2 / 4] < 2 * n_sites){
                        change_type(v2, op_string, n_sites);
                        break;
                    } else {
                        v1 = v2 ^ 2;
                    }
                }
            }
        }

        for (int i = 0; i < n_sites; i++) {
            if (first_vertex_at_site[i] != -1){
                if (vertex_list[first_vertex_at_site[i]] == -1){
                    spins[i] = - spins[i];
                }
            } else {
                if (dis(rng) < 0.5){
                    spins[i] = - spins[i];
                }
            }
        }
     }

};

void cluster_update (vector<int>& spins, vector<int>& op_string, vector<double>& dbi, vector<double>& V_i, vector<double>& C_i, bool line, int line_step){
    if (line){
        for (int i = 0; i < line_step; i++){
            //cout << "iteration of line update " << i << endl;
            Vertexlist V = Vertexlist(spins, op_string);
            V.lineupdate(spins, op_string, V.vertex_list, V.first_vertex_at_site, V.spin_m, dbi, V_i, C_i);
        }
    } else {
        Vertexlist V = Vertexlist(spins, op_string);
        V.clusterupdate(spins, op_string, V.vertex_list, V.first_vertex_at_site, dbi, V_i, C_i);
    }
}

#endif // CLUSTER_UPDATE_H_INCLUDED