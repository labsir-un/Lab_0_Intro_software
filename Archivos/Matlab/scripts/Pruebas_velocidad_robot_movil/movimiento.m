% Toma de datos de los encoder de los motores para obtener velocidades angulares de un robot diferencial con el LEGO EV3

clear all;

%Conexión por usb al EV3 y sonido de confirmación
mylego = legoev3('usb')
beep(mylego)

%Velocidad máxima de los motores en rpm apriximada por carga inercial de los motores
%Velocidad máxima en vacio de 160
vel_max = 160*0.85; %rpm
vel_max_deg_s = vel_max * 360 / 60; %deg/s 

%Configuración motores
motor_l = motor(mylego,'B')
motor_r = motor(mylego,'C')
% Velocidad a 20% de potencia
motor_l.Speed = 20
motor_r.Speed = 20
%Encoders en cero
resetRotation(motor_l)
resetRotation(motor_r)

% Preparar grabación de datos
sampleTime = 0.01; % tiempo de muestreo en segundos (50 ms)
totalTime = 5; % tiempo total de adquisición en segundos
N = totalTime / sampleTime; % número de muestras
timeVec = zeros(1, N);
encoder_l = zeros(1, N);
encoder_r = zeros(1, N);


%Captura con tiempos de espera inicales y finales
% Medir encoder en bucle
%disp('Comenzando captura de datos...');
%tic;
%for i = 1:N
%    timeVec(i) = toc; % registrar el tiempo
%    encoder_l(i) = readRotation(motor_l); % leer posición motor B
%    encoder_r(i) = readRotation(motor_r); % leer posición motor C
%    pause(sampleTime);
%    if i > 0.95 * N
%       % Detener motores
%        stop(motor_l);
%        stop(motor_r);
%    end
%    if i > 0.05 * N && i < 0.10 * N
%        % Iniciar motores
%        start(motor_l)
%        start(motor_r)
%    end 
%end
%disp('Captura de datos terminada.');

%Captura de datos sin tiempos de espera inicales y finales
disp('Comenzando captura de datos...');
tic;
start(motor_l)
start(motor_r)
for i = 1:N
    timeVec(i) = toc; % registrar el tiempo
    encoder_l(i) = readRotation(motor_l); % leer posición motor B
    encoder_r(i) = readRotation(motor_r); % leer posición motor C
    pause(sampleTime);
end

stop(motor_l);
stop(motor_r);
disp('Captura de datos terminada.');


% Cálculo de velocidades angulares
% La velocidad angular aproximada (en grados/segundo) es delta_theta/delta_t
vel_l = diff(encoder_l) ./ diff(timeVec);
vel_r = diff(encoder_r) ./ diff(timeVec);

vel_l_smooth = movmean(vel_l, 20);
vel_r_smooth = movmean(vel_r, 20);

%Grafica de angulo de la rueda
figure;
plot(timeVec, encoder_l, 'r', 'LineWidth', 1.5); hold on;
plot(timeVec, encoder_r, 'b', 'LineWidth', 1.5);
xlabel('Tiempo (s)');
ylabel('Posición del Encoder (grados)');
title('Posición de los Encoders de las Ruedas');
legend('Motor Izquierdo', 'Motor Derecho');
grid on;


% Gráfica de velocidades
% figure;
% plot(timeVec(2:end), vel_l, 'r', 'LineWidth', 1.5); hold on;
% plot(timeVec(2:end), vel_r, 'b', 'LineWidth', 1.5);
% xlabel('Tiempo (s)');
% ylabel('Velocidad Angular (grados/segundo)');
% legend('Motor L', 'Motor R');
% title('Velocidades angulares de las ruedas');
% grid on;

% Gráfica de velocidades
figure;
plot(timeVec(2:end), vel_l_smooth, 'r', 'LineWidth', 1.5); hold on;
plot(timeVec(2:end), vel_r_smooth, 'b', 'LineWidth', 1.5);
xlabel('Tiempo (s)');
ylabel('Velocidad Angular suavizada (grados/segundo)');
legend('Motor L', 'Motor R');
title('Velocidades angulares de las ruedas');
grid on;

% se limpian variables de motores y conexión robot
clear mylego motor_l motor_r

promedio_velocidad_l = mean(vel_l);
promedio_velocidad_r = mean(vel_r);
vel_esperada = vel_max_deg_s * 0.20;
fprintf('Velocidad angular promedio por motor: %.2f deg/s\n', vel_esperada);
fprintf('Velocidad angular promedio motor izquierdo: %.2f deg/s\n', promedio_velocidad_l);
fprintf('Velocidad angular promedio motor derecho: %.2f deg/s\n', promedio_velocidad_r);

promedio_vel_l_rad = promedio_velocidad_l * pi / 180;
promedio_vel_r_rad = promedio_velocidad_r * pi / 180;
vel_esperada_rad = vel_max * (2*pi/60) * 0.20;
fprintf('Velocidad angular promedio por motor: %.2f rad/s\n', vel_esperada_rad);
fprintf('Velocidad angular promedio motor izquierdo: %.2f rad/s\n', promedio_vel_l_rad );
fprintf('Velocidad angular promedio motor derecho: %.2f rad/s\n', promedio_vel_r_rad );










