% DIBROB función que dibuja un robot circular en 2D, dadas las coordenadas del centro y su orientación.
% Ricardo Ramírez. Fundamentos de Robótica Móvil
% Universidad Nacional de Colombia. 2015
% xc, yc coordenadas del centro
% theta orientación del vehículo
function []=dibrob(xc,yc,theta)
tc=0:pi/20:2*pi;
x=[xc xc+0.5*cos(tc+theta)];
y=[yc yc+0.5*sin(tc+theta)];
plot(x,y)