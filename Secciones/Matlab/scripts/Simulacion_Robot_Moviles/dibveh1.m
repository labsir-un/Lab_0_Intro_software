% DIBVEH1 ejemplo para dibujar vehículos en posiciones y orientaciones
% dadas.
% Ricardo Ramírez. Fundamentos de Robótica Móvil
% Universidad Nacional de Colombia. 2023
n = input("Número de vehículos a dibujar? (max.10) ");
for i=1:n
    xv=input("Coordenada X del vehículo? (-5 a 5)");
    yv=input("Coordenada Y del vehículo? (-5 a 5)");
    th=input("Orientación del vehículo? (-180° a 180°)");
    th=pi*th/180;
    dibrob(xv,yv,th)
    axis([-6 6 -6 6])
    grid
    axis equal
    hold on
end
hold off