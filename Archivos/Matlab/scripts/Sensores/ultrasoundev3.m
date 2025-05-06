% ULTRASOUNDev3 programa para capturar datos por el puerto serial. Previo a
% Se necesita instalar el paquete de soporte de MATLAB para LEGO EV3.
% Se recomienda usar el puerto USB para la conexión.
% Universidad Nacional de Colombia, 2025. 

clear all;

%Conexión por usb al EV3 y sonido de confirmación
mylego = legoev3('usb')
beep(mylego)

mysonicsensor = sonicSensor(mylego)


nm=100; %N�mero de muestras.

t=1:nm;
dist=zeros(1,nm);
for i=1:nm
      dist(i) = readDistance(mysonicsensor);% m
      pause(.25)
end
figure(1)
clf
xlabel('Muestra')
ylabel('Distancia (cm)')
title('U_{sound} Data')
grid on;
hold on;
plot(t,dist)

clear mylego mysonicsensor