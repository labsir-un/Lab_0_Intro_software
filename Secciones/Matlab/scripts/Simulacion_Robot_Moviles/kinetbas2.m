% Ricardo Ramírez. Fundamentos de Robótica Móvil
% Universidad Nacional de Colombia. 2023 
%% Ejemplo 5 con aceleración lineal para perfil de velocidad trapezoidal
h=.1;
t=0:h:10;
[~,v1,ac1]=lspb(-5,10,t);
figure(1)
clf
plot(t,ac1)
grid
xlabel('t(seg)')
ylabel('Aceleración(m/s\^2)')
figure(2)
clf
th=pi/4;
vm=0;
p=[0;0];
hold on
for i=1:length(t)
    dibrob(p(1),p(2),th)
    grid
    axis equal
    axis([-5 20 -5 20])
    pause(.01)
    vm=vm+ac1(i)*h;
    v=[vm*cos(th);vm*sin(th)];
    p(1)=p(1)+v(1)*h;
    p(2)=p(2)+v(2)*h;
end
%% 
% Ejemplo 6 con rampa de velocidad para perfil de velocidad trapezoidal y 
% cambio de orientación
h=.1;
t1=0:h:20;
t2=0:h:4;
[~,v1,ac1]=lspb(0,20,t1);
[~,w1,wp1]=lspb(0,pi/2,t2);
w1=[zeros(80,1);w1;zeros(80,1)];
wp1=[zeros(80,1);wp1;zeros(80,1)];
figure(1)
clf
plot(t1,ac1,t1,wp1)
grid
xlabel('t(seg)')
ylabel('a,wp(m/s\^2,rad/s\^2)')
figure(2)
clf
th=0;
vm=0;
w=0;
p=[0;0];
hold on
for i=1:length(t1)
    dibrob(p(1),p(2),th)
    grid
    axis equal
    axis([-5 20 -5 20])
    pause(.01)
    vm=vm+ac1(i)*h;
    w=w+wp1(i)*h;
    th=th+w*h;
    v=[vm*cos(th);vm*sin(th)];
    p(1)=p(1)+v(1)*h;
    p(2)=p(2)+v(2)*h;
end