function L = Impedance_square_MW(n,od,di,u)
% Impedance(n,do,di)
% n = number of turns
% do = outter diameter
% di = inner diameter
% u0 = permeability of space 
%
%
% Returns the self inductance of Square coils
% using Expression Based on Current Sheet Approximation
    davg = (od+di)/2;
    fill=fill_factor(od,di);
    L = 2.34*u*((n*n*davg)/(1+2.75*fill));
end
