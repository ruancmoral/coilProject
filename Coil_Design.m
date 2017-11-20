%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Design Constraints %%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



% Design
d1o_max = 50;           % maximum outter diameter implatable
D = 1;                  % Distance between the internal and external coil
freq = 15*10^5;         % Frequency of operation
freq_ang = 2*pi*freq;



% Fabrication
tc = 1;                     % Thickness
pc = 1;                 % resistivity of the conductive material
u0 = 1;                 % permeability of space
ur = 1;                 % relative permeability of the conductor
u = u0*ur;              % permeability 
w_min = 1;              % minimal trace width permited by tecnology
s_min = 1;              % minimal spacing permited by tecnology


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Initial Values %%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
w1= w_min;
w2= w_min;
s1 = s_min;
s2 = s_min;
n1= 1;
n2 = 1;
di2 = do2 - 2*(n2*w2-(n2-1)*s2);
do1 = D*2.82842712475;              % 2*sqrt(2)*D => this is the optimal 

%                                     % radius for a given Distance
% for s2 = s_min:s_min:do2;
%     di2 = do2 - 2*(n2*w2-(n2-1)*s2);
%     if  di2 > s_min*2
%         break
%     end
%     for w2 = w_min:w_min: do2;
%         di2 = do2 - 2*(n2*w2-(n2-1)*s2);
%         if  di2 > s_min*2
%             break
%         end
%     end
% end



L1 = Impedance_square(n1,do1,di1,u0);
L2 = Impedance_square(n2,do2,di2,u0);
M = Total_Mutual_inductance(w1,s1,w2,s2,D,n1,n2,do1,do2);
k = M/sqrt(L1*L2);

Rs1 = Resitance_S(tc,sd,n1,w1,s1,do1,pc);
Rs2 = Resitance_S(tc,sd,n2,w2,s2,do2,pc);

Cp1 = Capacitance(n1,do1,w1,s1,alpha,Erc,beta,Ers,E0,tc);
Cp2 = Capacitance(n2,do2,w2,s2,alpha,Erc,beta,Ers,E0,tc);

Q1 = ( freq_ang*L1 - freq_ang*(Rs1^2 +freq_ang^2*L1)*Cp1) / Rs1;
Q2 = ( freq_ang*L2 - freq_ang*(Rs2^2 +freq_ang^2*L2)*Cp2) / Rs2;
Ql = 1 / (Rs2*sqrt(C2/L2) + sqrt(L2/C2)/Rl);

n1 = k^2*Q1*Q2/(1+Q1*Ql*k^2);           % efficiency of first coil
n2 = Ql/(Q2+Ql);                        % efficiency of second coil
nlink = n1*n2;                          % efficiency of link
    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Equations %%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Impedance_square(n,do,di,u0)
% fill_factor(do,di)
% Resitance_DC(n,w,s,do,pc)
% Resitance_S(Rdc,tc,sd)
% M= Total_Mutual_inductance(w1,s1,w2,s2,D,n1,n2)
% k = M/sqrt(L1*L2)
% n= efficiency_coil(do,di,w,s)
% Cp = Capacitance(n,do,w,s,alpha,Erc,beta,Ers,E0,tc)


