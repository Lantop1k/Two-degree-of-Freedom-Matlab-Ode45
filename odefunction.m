clc
clear 
close

tspan = [0 100];
x0 = [-1;6;-1;3];
fun=@odefun;
[t,y] = ode45(fun, tspan, x0);

plot(t,y(:,1))

hold on

plot(t,y(:,2))

function dx2dt= odefun(t,x)

   m1=1;
   m2=4;
   k1=3;
   k2=2;
   k3=1;
   
   c1=0.03;
   c2=0.02;
   c3=0.01;
   
   dx2dt=zeros(2,1);
   dx2dt(1)=x(3);
   dx2dt(2)=x(4);
   
   dx2dt(3)=1/m1*(-(k1+k2)*x(1)+k2*x(2)-(c1+c2)*x(3)+c2*x(4));
   dx2dt(4)=1/m2*(k2*x(1)-(k2+k3)*x(2)+c2*x(3)+(c2+c3)*x(4));
   
end