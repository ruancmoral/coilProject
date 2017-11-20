function Ql = QuallityLoad2(Rs2,freq_ang, L2,Rl)

a = Rs2/(freq_ang*L2);
b = freq_ang*L2/Rl;
Ql = 1/(a+b);

end

