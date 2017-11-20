function L = Impedance_square_DFM(n,od,di,w,s)
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
    a = od^-1.21;
    b = w^-0.147;
    c = davg ^2.4;
    d = n^1.78;
    e = s^-0.03;
    L = (1.62e-3)*a*b*c*d*e;
    
end
