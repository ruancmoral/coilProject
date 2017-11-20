clear
clc
% format long
u0 = 4*pi*10^-7;            
%ur = 0.999991;               
ur = 1;
u = ur*u0;                      
tc = 38e-6;             
pc = 17*10^-9;
D =0.0010;                   % 1 mm de distancia entre bobinas
f = 13.5e6;
Rl = 500;

do1 = 40e-3                 %20mm de diametro externo
di1 =8e-3;                  %8mm de diametro interno
n1 = 32;                     
w1= 250e-6;                  %150um largura
s1 = 250e-6;                 %150umx espa�amento



do2 = 30e-3                 %20mm de diametro externo
di2 =8e-3;                  %8mm de diametro interno
n2 = 37;                     
w2= 150e-6;                  %150um largura
s2 =150e-6;                 %150umx espa�amento



freq_ang=2*pi*f
% Modified Weller

L1_MW = Impedance_square_MW(n1,do1,di1,u)
L2_MW = Impedance_square_MW(n2,do2,di2,u)
Rs1_MW = Resitance_S(tc,n1,w1,s1,do1,pc,u,f)
%Rs1_MW = Resitance_S_2(tc,n1,w1,s1,do1,pc,u,f)
Rs2_MW = Resitance_S(tc,n2,w2,s2,do2,pc,u,f)
Q1_MW = freq_ang.*L1_MW./Rs1_MW
Q2_MW = freq_ang.*L2_MW./Rs2_MW
% Ql_MW = QuallityLoad(Rs2_MW,C2_MW,L2_MW,Rl_MW)
 Ql_MW = QuallityLoad2(Rs2_MW,freq_ang, L2_MW,Rl)

M_MW = Total_Mutual_inductance(w1,s1,w2,s2,D,n1,n2,do1,do2,u)
K_MW = M_MW /(sqrt(L1_MW*L2_MW))
n1_MW = Efficiency1(K_MW,Q1_MW,Ql_MW)
n2_MW = Efficiency2(Q2_MW,Ql_MW)
n_MW = n1_MW*n2_MW








L1_CSA = Impedance_square_CSA(n1,do1,di1,u)
L2_CSA = Impedance_square_CSA(n2,do2,di2,u)
Rs1_CSA = Resitance_S(tc,n1,w1,s1,do1,pc,u,f)
Rs2_CSA = Resitance_S(tc,n2,w2,s2,do2,pc,u,f)
Q1_CSA = freq_ang.*L1_CSA./Rs1_CSA
Q2_CSA = freq_ang.*L2_CSA./Rs2_CSA
% Ql_CSA = QuallityLoad(Rs2_CSA,C2_CSA,L2_CSA,Rl_CSA)
 Ql_CSA = QuallityLoad2(Rs2_CSA,freq_ang, L2_CSA,Rl)

M_CSA = Total_Mutual_inductance(w1,s1,w2,s2,D,n1,n2,do1,do2,u)
K_CSA = M_CSA /(sqrt(L1_CSA*L2_CSA))
n1_CSA = Efficiency1(K_CSA,Q1_CSA,Ql_CSA)
n2_CSA = Efficiency2(Q2_CSA,Ql_CSA)
n_CSA = n1_CSA*n2_CSA



