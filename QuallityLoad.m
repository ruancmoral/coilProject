function Ql = QuallityLoad(Rs2,C2,L2,Rl)

a = Rs2*sqrt(C2/L2);
b = sqrt(L2/C2)/Rl;
Ql = 1/(a+b);

end

