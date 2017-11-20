function Cp = Capacitance(n,od,w,s,alpha,Erc,beta,Ers,E0,tc)
% Capacitance(n,do,di)
% n = number of turns
% do = outter diameter
% di = inner diameter
% u0 = permeability of space 
%
%
% Returns the self inductance of Circular coils
% using Expression Based on Current Sheet Approximation
    lg = 4*(od-w*n)*(n-1)-4*s*n*(n+1);
    Cp = (alpha*Erc+beta*Ers)*E0*tc*lg/s;
end
