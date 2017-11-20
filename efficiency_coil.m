function n2= efficiency_coil(od,di,w,s)
% efficiency_coil(do,di,w,s)
% do = outter diameter
% di = inner diameter
% w = width
% s = spacing
%
%
% Returns the efficiency of the one coil
a = od/(s+w);
b = fill_factor(od,di)/(1+fill_factor(od,di));
n2= a*b;
end
