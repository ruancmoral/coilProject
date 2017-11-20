function L = Impedance_square(n,od,di,u0)
% Impedance(n,do,di)
% n = number of turns
% do = outter diameter
% di = inner diameter
% u0 = permeability of space 
%
%
% Returns the self inductance of square coils

    davg = (od+di)/2;
    fill=fill_factor(od,di);
    a=log(2.07/fill);
    b = 0.18*fill;
    c = 0.17*(fill^2);
    L = 1.27*u0*(n^2)*davg*(a+b+c);
end
