
%%
% *Modelo para hacer informes*
%%
% 
% # Este es el encabezado de nuestro archivo de prueba. Noten cómo esto
% # inicialmente era un comentario y ahora se vuelve texto escrito
% 


figure (1)
vec1 = [2 2]'; % Punto 1
vec2 = [3 0]'; % Punto 2
quiver(0,0,vec1(1),vec1(2),0,'r') % Vector 1
axis([-4 4 -4 4])
grid on
hold on
%%
quiver(0,0,vec2(1),vec2(2),0,'b') % Vector 2
%%
C_ang3 = dot(vec1,vec2)/(norm(vec1)*norm(vec2)); % Coseno del angulo
vec3 = norm(vec1)*C_ang3.*(vec2./norm(vec2)); % Proyeccion de vec1 en vec2
quiver(0,0,vec3(1),vec3(2),0,'c') 
%%
disp(strcat('Producto Escalar: ',num2str(dot(vec1,vec2))))
disp(strcat('Angulo entre vectores: ',num2str(acos(C_ang3)),' rad'))
%%
vec4 = [2 2 0]'; % Punto 4
vec5 = [3 0 0]'; % Punto 5
figure (2)
quiver3(0,0,0,vec4(1),vec4(2),vec4(3),0,'r') % Vector 4
axis([-2 4 -2 4 -6 6])
grid on
hold on
%%
quiver3(0,0,0,vec5(1),vec5(2),vec5(3),0,'b') % Vector 5
%%
vec6 = cross(vec4,vec5); % Producto vectorial
vec7 = skew(vec4)*vec5; % Producto vectorial - Skewsimetrico
quiver3(0,0,0,vec6(1),vec6(2),vec6(3),0,'m')
%%
quiver3(0,0,0,vec7(1),vec7(2),vec7(3),0,'c')
%%
disp(strcat('Producto Vectorial: ','[',num2str(vec6'),']'))
