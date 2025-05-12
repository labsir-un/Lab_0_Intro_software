% KINETBAS progrmas con ejercicios para mostrar la simulación de
% movimiento cinemático de un móvil en un plano con aceleración ACC y
% velocidad VM.
% DIBVEH1 ejemplo para dibujar vehículos en posiciones y orientaciones
% dadas.
% Ricardo Ramírez. Fundamentos de Robótica Móvil
% Universidad Nacional de Colombia. 2018 
clear
figure(1)
clf
%% ejemplo 1 orientacion y velocidad lineal constante
th=0;
vm=5;
p=[0;0];
v=[vm*cos(th);vm*sin(th)];
h=.05;
fp=@(x) [v(1);v(2)];
for i=1:200
    dibrob(p(1),p(2),th)
    axis([-5 30 -10 10])
    grid
    axis equal
    pause(.02)
    p=intgr([p(1);p(2)],h,0,fp,1);
end
%% ejemplo 2 orientación diferente de cero y velocidad lineal constante
th=pi/6;
vm=5;
p=[0;0];
v=[vm*cos(th);vm*sin(th)];
h=.05;
fp=@(x) [v(1);v(2)];
for i=1:200
    dibrob(p(1),p(2),th)
    axis equal
    axis([-5 30 -10 10])
    grid
    pause(.02)
    p=intgr([p(1);p(2)],h,0,fp,1);
end

%% ejemplo 3 orientación cambia durante el movimiento y velocidad lineal constante
vm=5;
p=[0;0];
h=.05;
for i=1:200
    if p(1)<15
        th=0;
    else
        th=pi/6;
    end
    v=[vm*cos(th);vm*sin(th)];
    fp=@(x) [v(1);v(2)];
    dibrob(p(1),p(2),th)
    grid
    axis equal
    axis([-5 45 -10 40])
    pause(.02)
    p=intgr([p(1);p(2)],h,0,fp,1);
end
%% ejemplo 4 con velocidad angular y velocidad lineal constante
th=pi/6;
vm=5;
p=[0;0];
h=.05;
wp=.2;
for i=1:500
    dibrob(p(1),p(2),th)
    grid
    axis equal
    axis([-50 30 -10 50])
    pause(.01)
    fp1=@(x) wp;
    th=intgr(th,h,0,fp1,1);
    v=[vm*cos(th);vm*sin(th)];
    fp2=@(x) [v(1);v(2)];
    p=intgr([p(1);p(2)],h,0,fp2,1);
end
