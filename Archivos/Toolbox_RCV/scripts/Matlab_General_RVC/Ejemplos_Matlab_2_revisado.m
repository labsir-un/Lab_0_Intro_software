%% Ejemplos de operaciones
% En este documento encontraremos algunos ejemplos de las operaciones que
% se pueden llevar a cabo con matrices de rotación y MTH

%% Rotación de un sistema de referencia
% Veamos paso por paso cómo se efectúa la rotación de un sistema de 
% referencia utilizando una MTH

% Definimos 100 pasos en nuestra simulación
pasos = 100;

% Nuestra rotación final será de 60°, o en radianes:
ang = pi/3;

% Primero grafiquemos el sistema de referencia de inicio (para graficarlo
% utilizamos trplot pasándo como argumento una identidad de 4x4)
trplot(eye(4),'arrow','rgb','frame','A','labels',['x' 'y' 'z'],'width',2)

% Queremos seguir mostrando nuestro sistema inicial, así que utilizamos:
hold on 

% Ahora creamos nuestro vector que contiene cada uno de los ángulos que hay
% que rotar en cada paso de la simulación
theta = linspace(0,ang,pasos);
for j = 1:pasos
    % Graficamos el sistema rotado, teniendo en cuenta los argumentos
    % ('arrow'), que significa ponerle flechas a los vectores,
    % ('frame','B'), que significa que nuestro sistema es el B, y
    % ('labels',['x' 'y' 'z']), que significan los nombres de los ejes en
    % nuestro sistema
    P = trplot(trotz(theta(j)),'arrow','frame','B','labels',['x' 'y' 'z']);

    % ¿Pero por qué asignandolo a una variable P? Paciencia, ya lo veremos

    % Hacemos una pausa de 10 ms
    pause(0.01)

    % Y finalmente borramos el sistema anterior, para que la pantalla no se
    % sobrecargue de puros sistemas rotados. ¿Recuerdan la asignación a la
    % variable P? Bueno, era para esto.
    if j~=pasos
        delete(P)
    end
end

% Notemos cómo se ven las matrices de rotación, primero una para un ángulo
% theta en general, y luego la correspondiente a nuestro ángulo final de
% rotación
syms theta;
disp(rotz(theta))
disp(rotz(ang))

% Al correr esta sección, veremos cómo se efectúa la rotación. Pero una
% rotación no sólo la podemos ver en un sistema, también es posible verla
% en un vector.

%% Rotación de un vector
% Hagamos un procedimiento parecido al anterior, pero ahora queremos ver
% cómo se rota un vector con una matriz de rotación

clf
% Definimos el vector que queremos rotar
a_inicial = [4 3 2]';

% Graficamos sistema de coordenadas
trplot(eye(4),'arrow','rgb','labels',['x' 'y' 'z'],'width',2,'length',2)
axis([-5 5 -5 5 -1 5])  % Ajustamos dimensiones los ejes
hold on % Mantenemos lo dibujado
grid on % Colocamos una malla, o una grilla

% Esperamos medio segundo
pause(0.5)

% Y graficamos nuestro vector inicial, utilizando el comando quiver (que ya
% todos muy bien conocemos)
quiver3(0,0,0,a_inicial(1),a_inicial(2),a_inicial(3),0,'r')

% Además, rotulamos el vector para saber que es el inicial
text(a_inicial(1),a_inicial(2),a_inicial(3),'a_{inicial}')

% Ahora definamos el vector de ángulos rotados, para lo mismo, ver la
% rotación paso por paso
pasos = 100;
ang2 = linspace(0,pi/3,pasos);
pause(0.5)
for j=1:pasos
    % Creamos nuestro vector rotado. Notemos cómo rotamos fácilmente
    % alrededor de z usando rotz
    a_final = rotz(ang2(j))*a_inicial;

    % Y lo graficamos, nuevamente, con quiver
    P = quiver3(0,0,0,a_final(1),a_final(2),a_final(3),0,'m');

    % Hacemos una pausa de 100 ms
    pause(0.1)

    % Y otra vez, vamos eliminando los vectores que acabamos de graficar
    delete(P)
end

% Asegurémonos ahora que la grafica permanezca mostrando el vector rota
a_final = rotz(pi/3)*a_inicial;
quiver3(0,0,0,a_final(1),a_final(2),a_final(3),0,'m')
text(a_final(1),a_final(2),a_final(3),'a_{final}')
pause(0.5)

% Y finalmente veamos cuáles son las componentes de nuestro vector
disp(a_final)

