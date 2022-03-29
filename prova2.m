clc
clear all

Z = @(alpha)[11+alpha 10+alpha 14+alpha; 12+alpha 11+alpha -13+alpha; 14+alpha 13+alpha -66+alpha];
Zinv = @(alpha)Z(alpha)^(-1);

x = linspace(30,200,200);
normZ = [];
normZinv = [];
cond = [];

for i=1:200
    normZ = [normZ, normInf(Z(i))];
    normZinv = [normZinv, normInf(Zinv(i))];
    cond = [cond, normZ(i)*normZinv(i)];
end

hold on
plot(x, normZ)
plot(x, normZinv)
plot(x, cond)
legend('Norma Z', 'Norma Z^-^1', 'Condizionamento');


