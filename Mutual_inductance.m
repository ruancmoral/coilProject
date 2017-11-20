function Mij= Mutual_inductance(m,n,w1,s1,w2,s2,D,do1,do2,u)
% efficiency_coil(do,di,w,s)
% do = outter diameter
% di = inner diameter
% w = width
% s = spacing
%
%
% Returns the efficiency of the one coil
ri = do1/2 -m*(s1+w1)-w1/2;
rj = do2/2 -n*(s2+w2)-w2/2;
dist = sqrt(D*D + (ri-rj)^2);
k = 2*sqrt((ri*rj)/((ri+rj)^2+dist^2));
[K,E] = ellipke(k);
Mij = 2*u*sqrt(ri*rj)*((1-(k^2)/2)*K -E);

end
