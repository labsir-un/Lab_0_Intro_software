%% Rotaciones Básicas
% Generemos las siguientes matrices de rotación con la ayuda del toolbox de
% Peter Corke
R1 = rotz(pi/6)
R2 = roty(pi/3)
R3 = rotz(pi/4)

%% Ejemplo de tres ángulos: Ángulos de Euler

% Podemos efectuar la combinación de rotaciones multiplicando las matrices
% de rotación. Cuando las rotaciones de llevan a cabo en los ejes móviles
% del sistema, se llama ÁNGULOS DE EULER, y se logran postmultiplicando las
% matrices. Esto es:

% - Supongamos que queremos rotar en Z, después en el eje Y resultante de
% la rotación, y después nuevamente en el eje Z, también resultante de la
% rotación anterior

% - Debemos postmultiplicar, es decir, multiplicar por la derecha, para
% hallar la matriz de rotación resultante que nos representa nuestra
% transformación.

R = eye(3)*R1*R2*R3

% NOTA: notemos que la secuencia que se llevó a cabo es en los ejes z-y-z.
% Esta es la secuencia convencional y más común de ángulos de Euler, y casi
% siempre que se hable de estos ángulos se sobre-entenderá que se trata de 
% esta secuencia. Sin embargo, no es la única, y se puede indicar que se
% trata de otra secuencia de ángulos de Euler, por ejemplo, ángulos de
% Euler x-z-y.

R2 = eye(3) * rotx(pi/3) * rotz(pi/3) * roty(pi/4)

% ¿Y qué pasaría si en una secuencia se tiene repetido y consecutivo el
% mismo eje? Algo así como x-x-z

R3 = rotx(pi/4)*rotx(-pi/4)*rotz(pi/3)

% Matemáticamente se puede hacer, claro. Pero no tiene sentido, ya que
% rotar un ángulo en x, y acto seguido rotar otro ángulo en el mismo eje es
% como si fuera una sóla rotación de los ángulos sumados, así que en
% realidad no tenemos x-x-z, sino x-z... ¿Y el tercer ángulo dónde queda?

% Conclusión: para que se llamen ángulos de Euler, la secuencia de ejes no
% puede tener rotaciones consecutivas en el mismo eje


%% Pasar de ángulos de Euler a matrices
% Ya nos estaremos dando cuenta de que Peter Corke nos hace la vida un poco
% más fácil. Pues veremos que aún hay más, ya que podemos pasar de ángulos
% de Euler z-y-z a una matriz de rotación, o incluso, a una MTH.

R4 = eul2r(pi/3,-pi/4,pi/6)
T4 = eul2tr(pi/3,-pi/4,pi/6)

% Y por si fuera poco, también podemos hacer lo contrario: pasar de una MTH
% o una matriz de rotación a la representación en ángulos de Euler usando
% la función tr2eul().
gamma = tr2eul(R4)
gamma = tr2eul(T4)

%% Angulos fijos. Roll, picht y yaw

% Los ángulos fijos son eso, fijos, es decir, las rotaciones se llevan a
% cabo en los ejes fijos. Si por ejemplo se quisiera rotar un sistema en X,
% luego en Y y por último en Z, todas las rotaciones se llevan a cabo
% alrededor de los ejes FIJOS.

% A los ángulos fijos se les llama en inglés Roll, Pitch y Yaw, y
% corresponden respectivamente a rotación en X, en Y y en Z.

% Si para ángulos de Euler, es decir, en ejes móviles, se postmultiplicaba,
% adivinen qué se debe hacer en este caso que tenemos ejes fijos...
% ¡Exacto! PRE-multiplicar. Veamos cómo sería.


R1 = rotx(pi/6)
R2 = roty(pi/3)
R3 = rotz(pi/4)

R5 = R3*R2*R1

% Notemos que la primera rotación que queremos hacer es R1, así que está a
% la derecha. Después sigue R2, por lo que la multiplicamos a la izquierda,
% y por último está R3, que nuevamente la multiplicamos a la izquierda. Con
% eso podemos construir la matriz de rotación que representa la rotación
% completa ejecutada con ángulos fijos.

% NOTA: comunmente se les llama ángulos fijos a Roll, Pitch y Yaw, pero en
% realidad nosotros podemos efectuar cualquier combinación de rotaciones en
% cualesquiera ejes fijos que queramos. ¿Cómo lo hacemos?
% Pre-multiplicando. Lo mismo podríamos hacer con cualesquiera ejes móviles
% que queramos. ¿Y cómo? Post-multiplicando.

