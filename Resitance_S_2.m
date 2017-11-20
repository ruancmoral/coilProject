function Rs = Resitance_S_2(p,tc,n,w,s,od,pc,u,freq_ang)
% Resitance_S(Rdc,tc,sd)
% Rdc = DC Resistance as previously calculated
% tc = material thickness
% sd = skin depth
%
%
% Returns the Skin Effect Resistencer
    lc = 4*n*od - 4*n*w-((2*n+1)^2)*(s+w);
    sd = sqrt(2*pc/(freq_ang*u));
    Rs = p*lc*(1/(freq_ang*t) + 1/(2*sd*(t+freq_ang))) 
    
end