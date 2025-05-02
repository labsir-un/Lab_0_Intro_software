syms alpha beta gamma
R1 = rotz(alpha);
R2 = roty(beta);
R3 = rotz(gamma);

R323 = R1*R2*R3;
%%
T1 = troty(pi)*trotx(-pi/2); % MTH de rotacion



TAB = transl(0,3,2)*T1; % Traslacion
PB = [1 1 0 1]'; % Vector Genera P visto en {B}
PA = TAB*PB; % Vector P visto en {A}
%% Dibujar los resultados y cada elemento.



Paux = T1*PB; 
trplot(eye(4),'frame','A')
axis([-2 3 -2 4 -1 4])
view(45,30)
hold on
trplot(TAB,'rgb','frame','B')
quiver3(0,0,0,PA(1),PA(2),PA(3),0,'r','LineWidth',2)
text(PA(1),PA(2),PA(3),'P_{a}') 
quiver3(TAB(1,4),TAB(2,4),TAB(3,4),Paux(1),Paux(2),Paux(3),0,'b','LineWidth',2)

text(Paux(1),Paux(2),Paux(3),'P_{aux}')


