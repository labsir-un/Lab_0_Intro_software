%metodo de integración para el ejemplo "ejem2"
function y=intgr(y,h,x,fp,met)
switch met
    case 1 %método Euler de orden cero
        fder=fp(x);
        y=y+fder*h;
    case 2 % método del trapecio
        fder=(fp(x)+fp(x+h))/2;
        y=y+fder*h;
    case 3 % método Runge-Kutta
        disp('Rung-Kutta no programado');
    otherwise
        disp('Método desconocido');
end
    