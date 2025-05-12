% DIBROBR función que dibuja un robot circular en 2D, con radio r , dadas las coordenadas del centro y su orientación.
% Ricardo Ramírez. Fundamentos de Robótica Móvil
%Universidad Nacional de Colombia
% xc, yc coordenadas del centro
%theta orientación del vehículo
%r radio del vehículo
function []=dibrob(xc,yc,theta,r)
tc=0:pi/20:2*pi;
x=[xc xc+r*cos(tc+theta)];
y=[yc yc+r*sin(tc+theta)];
plot(x,y)
