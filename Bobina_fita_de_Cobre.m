clear                       
f = 15*10^6;                
freq_ang = 2*pi*f;          
u0 = 4*pi*10^-7;            
ur = 0.999991;               
u = ur*u0;                      
tc = 0,015;             
pc = 1.68*10^-8;            


n1 = 15;                     
do1 = 0.07;                %55mm de diametro externo
di1 = 0.01;                %7mm de diametro interno
w1= 0.001;                  %2mm largura
s1 = 0.001;                 %2mm espaçamento

L1 = Impedance_square(n1,do1,di1,u)
Rs1 = Resitance_S(tc,n1,w1,s1,do1,pc,u,f)
Q1 = freq_ang*L1/Rs1


%{
n2 = 2;
do2 = 0.06;
di2 = 0.003;
w2= 0.005;
s2 = 0.005;

L2 = Impedance_square(n2,do2,di2,u)
Rs2 = Resitance_S(tc,n2,w2,s2,do2,pc,u,f)
Q2 = freq_ang*L2/ Rs2
%}
