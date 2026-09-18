% Dominykas Kerulis, EF-25/2, 2026-09-18
close all
clear all
clc


a = 10:-1:-15;
b = log2(a);
c = a ./ b;
atsakymas = c.'


C1 = pi/2 : pi/2 : 3*pi/2;
C2 = -1 : 1;
C3 = -3 : -1 : -5;

C = [C1;C2;C3]

sum(C, 2)



A = 5.5;           
f = 8;              
sigma = 0.8;        
U1 = 3.5;           
U2 = 1.5;          


t = 0 : 0.002 : 1.2;


s_svarus = A * sin(2 * pi * f * t);
n = sigma * randn(size(t));
s = s_svarus + n;    

s_atrinktas = s(s > U1);

s_filtruotas = s;
s_filtruotas(abs(s_filtruotas) < U2) = 0;


dydis_s = length(s)

dydis_s_atrinktas = length(s_atrinktas)


max_filtruotas = max(s_filtruotas)
min_filtruotas = min(s_filtruotas)











