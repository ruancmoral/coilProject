function Rdc = Resitance_DC(n,w,s,od,pc,tc)
% Resitance_DC(n,w,s,do)
% n = Number of turns
% w = witdh of each turn
% s = spacing between turns
% do = outter diameter
% pc = resistivity of the conductive material
% Returns the dc resistence of the conductor


    lc = 4*n*od - 4*n*w-((2*n+1)^2)*(s+w);
    Rdc = pc*lc/(w*tc);
end
