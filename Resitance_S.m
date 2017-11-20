function Rs = Resitance_S(tc,n,w,s,od,pc,u,f)
% Resitance_S(Rdc,tc,sd)
% Rdc = DC Resistance as previously calculated
% tc = material thickness
% sd = skin depth
%
%
% Returns the Skin Effect Resistence  
    sd = sqrt(pc/(pi*u*f));
    Rdc = Resitance_DC(n,w,s,od,pc,tc);
    Rs = Rdc*tc/(sd*(1-exp(-tc/sd)));
end