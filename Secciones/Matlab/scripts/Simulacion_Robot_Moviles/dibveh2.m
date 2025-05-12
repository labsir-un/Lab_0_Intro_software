% DIBVEH2 ejemplo para dibujar vehículos con diferentes radios en
% posiciones y orientaciones dadas.
% Ricardo Ramírez. Fundamentos de Robótica Móvil
% Universidad Nacional de Colombia. 2023
n = input("Número de vehículos a dibujar? (max.10) ");
for i=1:n
    xv=input("Coordenada X del vehículo? (-5 a 5)");
    yv=input("Coordenada Y del vehículo? (-5 a 5)");
    th=input("Orientación del vehículo? (-180° a 180°)");
    r=input("Radio del vehículo? (0.5 a 3)");
    th=pi*th/180;
    dibrobr(xv,yv,th,r)
    axis([-6 6 -6 6])
    grid
    axis equal
    hold on
end
hold off