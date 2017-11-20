function M= Total_Mutual_inductance(w1,s1,w2,s2,D,n1,n2,do1,do2,u)
% Total_Mutual_inductance(w1,s1,w2,s2,D,n1,n2) 
% w1 = Width of the External coil
% s1  = Spacing of the External coil
% w2  = Width of the implanted coil
% s2 = Spacing of the implanted coil
% D = Distance between the coils
% n1 = Number of turns of the external coil 
% n2 = Number of turns of the implanted coil
%
% Returns the efficiency of the one coil
sum = 0;
for i=1:n1
  for j=1:n2
        sum = sum + Mutual_inductance(i,j,w1,s1,w2,s2,D,do1,do2,u);
    end
end
M = sum;
end
