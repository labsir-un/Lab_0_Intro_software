%% 
%
clf; close;
a = [4 3 2]'
R = rotz(pi/3)
aRot = R*a
figure
view(34,45)
hold on; grid on;
trplot(eye(4),'rgb','frame','A','length',3)
axis([-2 5 -2 5 -1 5])
quiver3(0,0,0,a(1),a(2),a(3),0,'b') 
text(a(1),a(2),a(3),'a')  
quiver3(0,0,0,aRot(1),aRot(2),aRot(3),0,'r') 
text(aRot(1),aRot(2),aRot(3),'a_{ROT}')  
%%  Movimmiento en los ejes moviles premultiplicando.
% Rotacion 321
trplot(eye(4),'rgb','frame','A','length',3)
axis([-4 4 -4 4 -1 4])
hold on
grid on
view(3)
phi = linspace(0,pi/6,50);  % Primer giro
pause(1)
for i=1:50
    P = trplot(trotz(phi(i)),'rgb','length',3);
    pause(0.1)
    if i~=50
        delete(P)
    end
end
trplot(trotz(phi(i)),'color','b','length',3);
pause(1)

psi = linspace(0,pi/6,50);  % Segundo giro
for i=1:50
    P = trplot(trotz(phi(length(phi)))*troty(psi(i)),'rgb','length',3);
    pause(0.1)
    if i~=50
        delete(P)
    end
end
trplot(trotz(phi(i))*troty(psi(i)),'color','g','length',3);
pause(1)

theta = linspace(0,pi/6,50); % Tercer guiro
for i=1:50
    P = trplot(trotz(phi(length(phi)))*troty(psi(length(psi)))*trotx(theta(i)),'rgb','length',3);
    pause(0.1)
    if i~=50
        delete(P)
    end
end
trplot(trotz(phi(i))*troty(psi(i))*trotx(theta(i)),'color','b','length',3);

%% Angulos de euler
% Rotacion 313
trplot(eye(4),'rgb','frame','A','length',3)
axis([-4 4 -4 4 -1 4])
hold on
grid on
phi = linspace(0,pi/6,50);
pause(1)
for i=1:50
    P = trplot(trotz(phi(i)),'rgb','length',3);
    pause(0.1)
    if i~=50
        delete(P)
    end
end
trplot(trotz(phi(i)),'color','b','length',3);
pause(1)

psi = linspace(0,pi/6,50);
for i=1:50
    P = trplot(trotz(phi(length(phi)))*trotx(psi(i)),'rgb','length',3);
    pause(0.1)
    if i~=50
        delete(P)
    end
end
trplot(trotz(phi(i))*trotx(psi(i)),'color','g','length',3);
pause(1)

theta = linspace(0,pi/6,50);
for i=1:50
    P = trplot(trotz(phi(length(phi)))*trotx(psi(length(psi)))*trotz(theta(i)),'rgb','length',3);
    pause(0.1)
    if i~=50
        delete(P)
    end
end
trplot(trotz(phi(i))*trotx(psi(i))*trotz(theta(i)),'color','b','length',3);

%%  Angulos Fijos rol pitch yaw
% Rotacion RPY
trplot(eye(4),'rgb','frame','A','length',3)
view(140,35)
axis([-4 4 -4 4 -1 4])
hold on
grid on
phi = linspace(0,pi/4,50);
pause(1)
for i=1:50
    P = trplot(trotz(phi(i)),'color','b','length',3);
    pause(0.1)
    if i~=50
        delete(P)
    end
end
trplot(trotz(phi(i)),'color','b','length',3);
pause(1)

psi = linspace(0,pi/6,50);
for i=1:50
    P = trplot(troty(psi(i))*trotz(phi(length(phi))),'color','g','length',3);
    pause(0.1)
    if i~=50
        delete(P)
    end
end
trplot(troty(psi(i))*trotz(phi(i)),'color','g','length',3);
pause(1)

theta = linspace(0,pi/6,50);
for i=1:50
    P = trplot(trotx(theta(i))*troty(psi(length(psi)))*trotz(phi(length(phi))),'color','r','length',3);
    pause(0.1)
    if i~=50
        delete(P)
    end
end
trplot(trotx(theta(i))*troty(psi(i))*trotz(phi(i)),'color','r','length',3);


%% Quaternios
% Q = [ s , v1, v2, v3]
% Rotx(pi/2)
q1 = [cos(pi/4), sin(pi/4)*[1 0 0]]; % Q -> Rotx(pi/2)
disp(q1)

% Toolbox
q1T = Quaternion(pi/2,q1(2:4));
disp(q1T)
q1R = Quaternion(rotx(pi/2));
disp(q1R)

% Rot de un vector en x de pi/2 usado quaternios
qr = [0 0 0 1];
q1_con = [q1(1) -q1(2:4)];

% Primera composicion
q2(1) = q1(1)*qr(1) - dot(q1(2:4),qr(2:4));
q2(2:4) = cross(q1(2:4),qr(2:4))+q1(1)*qr(2:4)+qr(1)*q1(2:4);

% Segunda composicion -> Vector rotado
q3(1) = q2(1)*q1_con(1) - dot(q2(2:4),q1_con(2:4));
q3(2:4) = cross(q2(2:4),q1_con(2:4))+q2(1)*q1_con(2:4)+q1_con(1)*q2(2:4);

% Graficas
trplot(eye(4),'rgb','length',0.5);
hold on
quiver3(0,0,0,qr(2),qr(3),qr(4),0,'r') % Vector original
text(qr(2),qr(3),qr(4),'Vector Original')
quiver3(0,0,0,q3(2),q3(3),q3(4),0,'k') % Vector Rotado
text(q3(2),q3(3),q3(4),'Vector Rotado')


%% Ejercicio
% Quiz
TAB = trotz(pi/6);
TBC = transl(2,1,1);
TCD = trotx(pi/12)*trotz(pi/6);

TAC = TAB*TBC
TBD = TBC*TCD
