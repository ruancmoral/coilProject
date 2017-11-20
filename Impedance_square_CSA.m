function L = Impedance_square_CSA(n,od,di,u)
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
    a=log(2.07/fill);
    b = 0.18*fill;
    c = 0.13*(fill*fill);
    L = 1.27*u*(n*n)*davg*(a+b+c)/2;
end
