% Repaso de matemáticas en Matlab

% Para este repaso utilizaremos variables simbólicas. Pueden postariormente
% ser cambiadas para las pruebas que realicen

%% Productos entre vectores

% ------------- Producto Escalar ---------------
% También conocido como producto punto, es el producto entre dos vectores 
% que da como resultado un escalar. En Matlab, se puedeejecutar de dos 
% maneras:

% 1. Como un producto matricial. Al multiplicar dos matrices, una de tamaño
% 1x3 y otra 3x1, da como resultado un tamaño 1x1, es decir, ESCALAR. De
% esa manera, para hacer el producto escalar entre dos vectores columna,
% corresponde transponer el primero de ellos de manera que se tenga el
% producto matricial entre un vector fila y uno columna.

syms p1 p2 p3 q1 q2 q3 real
p = [p1 p2 p3]'; % Usamos el operador ' para transponer el vector o la matriz
q = [q1 q2 q3]';
% Llamamos p_dot_q al producto vectorial entre los dos
p_dot_q = p'*q % Sin ; para que imprima el resultado

% 2. Utilizando la función dot(). Ella recibe dos parámetros
% correspondientes a los dos vectores a los que se les aplica el producto
% punto

p_dot_q = dot(p,q)


% ----------- Producto Vectorial -------------
% También conocido como producto cruz, es el producto entre dos vectores
% que da como resultado un vector. De la misma forma, se puede calcular de
% dos maneras: utilizando la función cross() o haciéndo el cálculo de la
% matriz skew-simétrica

% Función cross()
p_cross_q = cross(p,q)

% Matriz Skew-simétrica
p_cross_q = skew(p)*q

% La matriz skew-simétrica es una representación del producto cruz tal que
% una simple multiplicación matricial resulta equivalente al producto cruz
% que todos conocemos (el "determinante").

%% Norma de un vector
% Corresponde a su magnitud. Se puede calcular como la raíz cuadrada del
% producto punto de un vector consigo mismo, o bien usando la función
% norm(). Como ya sabemos, la norma de un vector es el resultado de la raíz
% de la suma de los cuadrados de las componentes del vector.

% Raíz de producto punto
p_dot_p = dot(p,p);
% p_norm y q_norm corresponden a las normas de los vectores
p_norm = sqrt(p_dot_p)

p_norm = norm(p)

% Notemos la pequeña vaciación en el resultado. Ello se debe a que la
% función norm calcula el valor absoluto de cada componente antes de
% elevarlos al cuadrado, pero como bien sabemos, el cuadrado de un número
% menor que 0 SIEMPRE da un número mayor que 0, así que los resultados son,
% en realidad, iguales.

%% Vector unitario
% Se trata de un vector cuya norma es 1. Siempre podemos calcular el vector
% unitario que va en la dirección de cualquier vector dividiendo ESE vector
% por su norma.

% Llamamos p_hat al vector unitario
p_hat = p/p_norm

%% Ángulo entre vectores
% Como todos recordamos de nuestros cursos de álgebra lineal (y si no lo
% recordamos, pues ya lo haremos) un producto punto entre vectores se puede
% escribir como el producto de sus normas por el coseno del ángulo que
% forman. Es decir

%             p dot q = ||p||*||q||*cos(theta)

% Ah bueno, pues siendo así, resulta muy fácil despejar el coseno para
% calcular el ángulo que los vectores forman entre sí

%            cos(theta) = (p dot q)/(||p||*||q||)
% O en palabras, el coseno del ángulo que forman dos vectores entre sí
% corresponde al cociente entre el producto punto de lo vectores y el
% producto de sus normas.

theta_p_q = acos(p_dot_q/(norm(p)*norm(q)))

% Recordemos que la función acos sirve para calcular el coseno inverso o
% arcocoseno de un número OJO: en RADIANES.

%% Componente de un vector
% Podemos calcular la magnitud de la componente de un vector en la 
% dirección de un vector unitario mediante un producto punto. Si por
% ejemplo quisieramos la magnitud de la componente del vector q a lo largo
% del vector unitario p_hat, tenemos:

q_p = dot(q,p_hat)

% Teniendo en cuenta además que el producto punto se puede escribir
% utilizando el coseno, también lo calculamos como sigue

q_p = norm(q)*cos(theta_p_q)

% Ya, pero aquí sólo tenemos magnitud. ¿Y si quisiéramos el vector
% componente y no sólo su magnitud? ¡Sencillo! Simplemente multiplicamos la
% magnitud de la componente por el vector unitario (p_hat en este caso),
% porque, al fin y al cabo sabemos que la dirección de nuestro vector
% componente es la misma que nuestro vector unitario, ¿no es así?

q_p_vector = q_p*p_hat

% Eso significa que, para hacer todo el cálculo de vector componente sin
% necesidad de dividir en dos etapas, lo haríamos de la siguiente manera:

q_p_vector = (dot(q,p_hat))*p_hat

% ¿Qué pasó ahí? ¿Dieron resultados diferentes? Aparentemente, pero en
% realidad se trata de lo mismo. Observemos bien: la única diferencia entre
% el resultado de arriba y el resultado de abajo es que arriba ya está
% factorizado el factor 1/p_norm, por eso abajo da la sensación de que el
% resultado es más largo, pero es exactamente igual.

%% Producto vectorial (complementos)
% Ya vimos de qué se trata y cómo se calcula el producto vectorial entre
% dos vectores. Sin embargo, este producto al igual que el producto
% escalar, también puede escribirse en términos del ángulo que forman los
% dos vectores, de la siguiente manera.

%            ||p x q|| = ||p|| * ||q|| * sin(theta)

% OJO, que en este caso nuestra expresión corresponde a la MAGNITUD o la
% NORMA del producto vectorial, no al producto vectorial como tal, ya que,
% recordemos, el producto vectorial da como resultado justamente eso, un
% vector.


%% Inversa de una matriz
% La inversa de una matriz, como ya sabemos y somos expertos en ello, es
% aquella matriz tal que, al multiplicar una matriz por su inversa, el
% resultado es la matriz identidad I (Matriz cuadrada con puros 1 en su
% diagonal)

% Para una matriz A, su inversa se nota como A^(-1)
% Recordemos que no toda matriz tiene inversa, pues puede suceder que la
% matriz tenga como determinante un valor de cero. En ese caso NO existe la
% inversa de la matriz, y se dice que esta matriz es singular.

% La inversa de una matriz, en Matlab, se puede calcular de varias maneras

% 1. Con la función inv()
A = [1 2 3;
     1 3 3;
     4 2 1];

A_inv = inv(A)

% 2. Elevando la matriz a la -1

A_inv = A^(-1)

% 3. Si necesitamos multiplicar por la inversa a ambos lados del igual por
% la izquierda (algo que solemos hacer muy frecuentemente), podemos hacerlo
% de la siguiente forma:

respuesta = A\A

% Evidentemente el resultado es la matriz identidad, así que matlab
% internamente lo que hizo fue multiplicar por la inversa de la matriz A.
% Esta es una opción bastante amigable, y sencilla de ver, ya que el
% backslash \ se puede entender como premultiplicar a A por un factor (que
% en sentido estricto no es correcto, pero) que sería algo así como (1/A).
% Si por ejemplo quisieramos post-multiplicar ahora, pues es más (o igual)
% de fácil, cambiamos en este caso el backslash por un slash normal /, y
% listo.

respuesta = A/A

%% Pseudo-inversa de una matriz

% La pseudo-inversa de una matriz se calcula para matrices no cuadradas, y
% es aquella matriz que, al multiplicarla por la matriz inicial, da como
% resultado la matriz identidad I, sólo que no se trata precisamente de una
% inversa. Recordemos que existe la pseudo-inversa por la izquierda
% (correspondiente a premultiplicar la matriz A para obtener la identidad)
% y la pseudo-inversa por la derecha (correspondiente a postmultiplicar la
% matriz A para obtener la identidad)

% En Matlab, podemos calcular la pseudo-inversa POR LA DERECHA con la 
% función pinv()

A = A(1:2,:)

B = pinv(A)

A*B

%% Matriz de rotación

% Una matriz de rotación es una matriz cuadrada que cumple las siguientes
% propiedades

% 1. A^T = A^(-1)
% 2. det(A) = 1
% 3. Sus vectores fila son unitarios
% 4. Sus vectores columna son unitarios
% 5. Los vectores fila son ortogonales entre sí
% 6. Los vectores columna son ortogonales entre sí
% 7. Para matrices de 3x3, se cumple que el producto vectorial de dos
% vectores fila da como resultado el tercer vector fila, y el producto 
% vectorial de dos vectores columna da como resultado el tercer vector 
% columna

% Veámos el ejemplo con una matriz de rotación generada mediante el toolbox
% de Peter Corke.

% Primero corremos esta sección para crear la matriz A
A = rotx(45,'deg')

%% 1 Inversa igual que transpuesta
A'
inv(A)

%% 2 Determinante igual a 1
det(A)

%% 3 Vectores fila unitarios
norm(A(1,1:3))
norm(A(2,1:3))
norm(A(3,1:3))

%% 4 Vectores columna unitarios
norm(A(1:3,1))
norm(A(1:3,2))
norm(A(1:3,3))

%% 5 Vectores fila ortogonales
dot(A(1,1:3),A(2,1:3))
dot(A(1,1:3),A(3,1:3))
dot(A(2,1:3),A(3,1:3))

%% 6 Vectores columna ortogonales
dot(A(1:3,1),A(1:3,2))
dot(A(1:3,1),A(1:3,3))
dot(A(1:3,2),A(1:3,3))

%% 7 Productos vectoriales 
% En este caso no los probaremos todos, sólo tomaremos un par de vectores
% fila y un par de vectores columna para comprobar que los resultados son
% iguales, efectivamente, al tercer vector. Ustedes pueden sin embargo
% variar los pares de vectores y comprobar.
cross(A(1,1:3),A(2,1:3))
A(3,1:3)

cross(A(1:3,1),A(1:3,2))
A(1:3,3)


