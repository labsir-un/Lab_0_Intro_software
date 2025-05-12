%% COPSIM3 programa modificar la posición de un objeto en CoppeliaSim
% Establecer la conexión
vrep=remApi('remoteApi'); % usar el archivo prototipo (remoteApiProto.m)
vrep.simxFinish(-1); % si se requiere, cerrar todas las conexiones abiertas.
% asigna el handle de identificación de cliente clientID
clientID=vrep.simxStart('127.0.0.1',19999,true,true,5000,5);
if (clientID>-1)
 disp('Conexión exitosa')
end
%Algoritmo
% Consulta el handle del objeto Caja1 en la escena Esc01 y lo asigna al handle caja_m.
[returnCode,caja_m]=vrep.simxGetObjectHandle(clientID,'Caja1',vrep.simx_opmode_blocking);
[returnCode,P]=vrep.simxGetObjectPosition(clientID,caja_m,-1,vrep.simx_opmode_blocking);
% presenta la posición de la caja
disp(P)
%Calcula una posición deseada Pd como un desplazamiento respecto a P
dx=0.05; dy=0.1; dz=0.02;
Pd = P + [dx dy dz];
disp(Pd)
% Asigna la posición Pd a la caja
[returnCode]=vrep.simxSetObjectPosition(clientID,caja_m,-1,Pd,vrep.simx_opmode_blocking);
% Termina el programa y cierra la conexión de MATLAB con V-Rep.
disp('Programa terminado')
vrep.delete(); % llama el destructor!
