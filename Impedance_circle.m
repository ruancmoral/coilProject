function L = Impedance_circle(n,od,di,u0)
% Impedance(n,do,di)
% n = number of turns
% do = outter diameter
% di = inner diameter
% u0 = permeability of space 
%
%
% Returns the self inductance of Circular coils
% using Expression Based on Current Sheet Approximation

    davg = (od+di)/2;
    fill=fill_factor(od,di);
    a=log(2.446/fill);
    b = 0*fill;
    c = 0.2*(fill^2);
    L = 1*u0*(n^2)*davg*(a+b+c);
end
