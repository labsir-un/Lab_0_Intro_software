% Post procesado de datos obtenidos por software tracker para comparación con datos teoricos
%

% Guardarlos en un archivo .mat
phi_v = v1
omega = VarName4
save('vectores_datos.mat', 't', 'v', 'phi_v', 'omega');

%%
clear all;
load('vectores_datos.mat')

angulos_rad = deg2rad(phi_v); % De grados a radianes

Vx = v .* cos(angulos_rad); % Componente en X
Vy = v .* sin(angulos_rad); % Componente en Y
V_total = [Vx', Vy']; % Cada fila es [Vx Vy]

V_neta = sqrt(Vx.^2 + Vy.^2); % Magnitud de la velocidad neta en cada instante
angulo_neto = rad2deg(atan2(Vy, Vx)); % Dirección de la velocidad neta en cada instante


% Graficar velocidades lineales y angular
figure;

% Primer subplot: Vx(t)
subplot(2,2,1); % 2 filas, 2 columna, primer gráfico
plot(t, Vx, 'r', 'LineWidth', 2);
xlabel('Tiempo [s]');
ylabel('V_x [m/s]');
title('Componente V_x vs Tiempo');
grid on;

% Segundo subplot: Vy(t)
subplot(2,2,2); % segundo gráfico
plot(t, Vy, 'b', 'LineWidth', 2);
xlabel('Tiempo [s]');
ylabel('V_y [m/s]');
title('Componente V_y vs Tiempo');
grid on;

% Tercer subplot: V_net(t)
subplot(2,2,3); % tercer gráfico
plot(t, V_neta, 'k--', 'LineWidth', 2);
xlabel('Tiempo [s]');
ylabel('|V| [m/s]');
title('Velocidad neta vs Tiempo');
grid on;

% Cuarto subplot: omega(t)
subplot(2,2,4); % cuarto gráfico
plot(t, omega, 'm', 'LineWidth', 2); % color magenta para omega
xlabel('Tiempo [s]');
ylabel('\omega [rad/s]');
title('Velocidad angular \omega vs Tiempo');
grid on;