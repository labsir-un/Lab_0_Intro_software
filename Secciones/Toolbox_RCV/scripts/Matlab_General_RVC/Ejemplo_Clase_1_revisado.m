% Algunos ejemplos adicionales de operaciones con vectores

%% Ejemplo operaciones básicas
% En este caso definiremos los vectores xb, yb y zb como los vectores de la
% base canónica. Comúnmente los conocemos como i, j y k
% Recordemos que el operador (') representa transposición.
xb = [1 0 0]';
yb = [0 1 0]';
zb = [0 0 1]';

% Armamos una matriz R a partir de los vectores columna
R = [xb yb zb];

% R resulta ser la matriz identidad, pero a la vez es una matriz de
% rotación. A continuación comprobaremos algunas de sus propiedades

%% Determinante = 1
det(R)

%% Vectores columna unitarios
norm(xb)
norm(yb)
norm(zb)

%% Productos cruz entre dos vectores columna dando como resultado el tercero
cross(xb,yb) % El resultado es zb
cross(yb,zb) % El resultado es xb
cross(zb,xb) % El resultado es yb

%% Vectores columna ortogonales entre sí
dot(xb,yb)
dot(yb,zb)
dot(zb,xb)

%% Matriz inversa igual a transpuesta
inv(R)
R'


%% Graficando transformaciones
% Las matrices de rotación representan, entre otras cosas, precisamente
% rotaciones, es decir, un tipo de transformación. A partir de las matrices
% de rotación podemos obtener las matrices de transformación homogénea,
% denominadas T

R1 = [[1 0 0 ]',[0 0 1]',[0 -1 0]']
T1 = [R1,[0 0 0]';[0 0 0 1]]

% Las matrices de transformación homogénea no únicamente pueden ser
% obtenidas a partir de matrices de rotación, ya que también es posible que
% una matriz de transformación homogénea represente, en vez de una
% rotación, una traslación; ¡o incluso ambas!

% Sin embargo, en este caso la matriz T sólo contiene rotación. El
% resultado de la transformación se puede graficar con el comando trplot
% del toolbox de Peter Corke. El comando recibe como argumentos, además de
% la matriz de transformación homogénea (MTH), opciones de usuario tales
% como el número o nombre del marco de referencia, el estilo de los
% vectores del marco, la existencia o ausencia de flechas en los vectores,
% etc. Pero nada de nervios, con el tiempo y la práctica se aprende y se
% interioriza súper fácil.
trplot(T1)

% Definiremos una segunda rotación descrita por R2 y T2, y la graficamos en
% la misma figura utilizando el comando 'hold on'
hold on 
R2 = [[1 0 0 ]',[0 0 -1]',[0 1 0]']
T2 = [R2,[2 3 1]';[0 0 0 1]] 
trplot(T2,'rgb')
% En este caso 'rgb' corresponde al estilo de los vectores. Indica que el
% vector X se grafica en rojo (Red), que el vector Y se grafica en verde 
% (Green), y que el vector Z se grafica en azul (Blue), de ahí que sea
% R-G-B
axis([-1 4 -1 4 -1 3] )

%%  Rotaciones Canonicas
% El toolbox de Peter Corke permite obtener matrices de rotación alrededor
% de los vectores de la base, utilizando los comandos rotx, roty y rotz,
% dependiendo del eje alrededor del cual se quiera rotar. El comando recibe
% como argumentos el ángulo que se desea rotar y la especificación de que
% se trata de Grados (si es el caso)
Rx = rotx(30,'deg')
det(Rx)
Ry = roty(pi/3)
Rz = rotz(pi/6)

%%  Operador rotación
% Es posible rotar un vector utilizando una matriz de rotación. Basta con
% multiplicar dicha matriz por el vector que queremos rotar.
clf;
P1 = [2 1.5 1]';
P2 = roty(30,'deg')* P1; % En este caso, rotaremos nuestro vector P1 un ángulo de 30°

%% Comando quiver
% ¿Queremos plotear vectores? Sencillo: quiver. Quiver es el comando de
% matlab que nos permite graficar las flechas de vectores de acuerdo
% principalmente con el punto en el espacio de inicio del vector y con el
% punto en el espacio de fin del vector. Esto puede sonar un poco confuso,
% pero pongámoslo así: por ejemplo un vector [1,1,1], si lo graficamos
% colocamos una marca en el punto x=1, y=1 y z=1, y trazamos una recta
% entre el origen y ese punto; en este caso, el origen (el [0,0,0]) es el
% punto de inicio, y el punto [1,1,1] es el punto de fin. Pues, ¡quiver
% permite graficar vectores que no inician en el origen! Esa es una gran
% bondad del comando

% Tenemos que diferenciar entre quiver, y quiver3. Fácil: quiver es en el
% plano, y quiver3, en el espacio. Lo demás es exactamente igual. Pueden
% consultar más información del comando en la documentación de matlab, o
% corriendo la siguiente sección
%%
help quiver
%%

% Veamos entonces cómo funciona quiver3 con el vector que ya creamos P1 y
% su versión P2 rotada. Primero, para más claridad, grafiquemos la base
% canónica, cosa que logramos tomando una matriz identidad como MTH
trplot(eye(4),'rgb')
axis([-2 3 -2 4 -1 4])
hold on 

% Ahora, para graficar nuestros vectores P1 y P2 necesitamos los puntos de
% inicio y fin. El punto de inicio será el origen, y los puntos de fin
% pues, corresponden a las mismas componentes de los vectores
quiver3(0,0,0,P1(1),P1(2),P1(3),0,'r','LineWidth',2) % Graficamos en rojo y colocamos grosor de 2
quiver3(0,0,0,P2(1),P2(2),P2(3),0,'b','LineWidth',2) % Graficamos en azul y grosor de 2

%% Operador traslación
% De la misma manera, podemos efectuar la traslación de un vector
% describiendo con una MTH.
clf;
D  = [eye(3),[1 2 -.5]';[0 0 0 1]] 
P3 = D* [P1 ; 1 ]
% Nuestro vector P3 es ahora una versión trasladada en x=1, y=2 y z=-0.5 de
% P1
trplot(eye(4),'rgb')
axis([-2 3 -2 4 -1 4])
hold on 
quiver3(0,0,0,P1(1),P1(2),P1(3),0,'r','LineWidth',2)
quiver3(0,0,0,P2(1),P2(2),P2(3),0,'b','LineWidth',2)

%% Operador Rotación + Traslación
% ¿Recuerdan que hace algunas secciones dijimos que una MTH puede
% representar tanto rotación como traslación? Pues llegó el momento de
% probarlo
close, clf
R = roty(30,'deg');  % Matriz de rotación
q = [2 3 -1]';     % Vector de traslación
P1 = [2 1.5 1]'; % Vector a transformar

% La MTH la formamos a partir de la matriz de rotación y del vector de
% traslación
T  = [R , q ;[0 0 0 1]]

% Luego aplicamos la transformación al vector P1
P2 = T * [P1 ; 1 ]

% Y cerramos con la gráfica
trplot(eye(4),'rgb')
axis([-2 4 -2 4 -1 4])
hold on 
quiver3(0,0,0,P1(1),P1(2),P1(3),0,'r','LineWidth',2)
quiver3(0,0,0,P2(1),P2(2),P2(3),0,'b','LineWidth',2)

%% Inversa de una MTH

% Sabemos que las matrices de rotación son ortonormales: su transpuesta es
% igual a su inversa. Sin embargo, no es el caso de las MTH

T_inv = inv(T)
T_trans = T' % Los resultados no son iguales

%%
% Pues, es posible 'armar' la inversa de la MTH, entendiendo que su inversa
% corresponde precisamente a una matriz que representa una transformación
% inversa a la original. Por ejemplo, si la MTH representa una rotación de
% un ángulo (theta) alrededor de z y una traslación de una distancia (d) a
% lo largo del eje x, su inversa deberá representar una rotación de -theta
% alrededor de z, y una traslación de -d a lo largo de x. La matriz la
% formamos como sigue

InvT2 =  [R' , -R'* q ;[0 0 0 1]]
% Notemos que el resultado es ahora igual al de la función inv().




