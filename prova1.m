clc
clear all

vec = linspace(0,2/3,101);
vec = vec(2:101);

nA_vec = [];
nAinv_vec = [];

cond = [];

for i=1:100
    a = vec(i);
    A = [1 1 1; 0 a a; a 2*a a];
    A_inv = A^(-1);
    
    nA = mynorm1(A);
    nA_inv = mynorm1(A_inv);
    
    nA_vec = [nA_vec, nA];
    nAinv_vec = [nAinv_vec, nA_inv];
    
    cond_num = nA * nA_inv;
    cond = [cond, cond_num];
end

%hold on
%plot(vec, cond)
%plot(vec, nA_vec)
%plot(vec, nAinv_vec)
%legend('Numero di condizionamento', 'Norma di A', 'Norma di A^-^1')



