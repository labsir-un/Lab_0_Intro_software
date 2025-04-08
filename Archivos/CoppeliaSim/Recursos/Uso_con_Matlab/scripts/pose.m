%% Programa para verificar el uso de handles y desde MATLAB leer variables en Coppelia Sim.
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
% Consulta la posición de la caja y la almacena en la variable P
[returnCode,P]= vrep.simxGetObjectPosition(clientID, caja_m,-1,vrep.simx_opmode_blocking);
% Muestra en la pantalla de comandos de MATLAB la posición
disp(P)
% Consulta la orientación de la caja y la almacena en la variable Or
[returnCode,Or]= vrep.simxGetObjectOrientation(clientID, caja_m,-1,vrep.simx_opmode_blocking);
% Muestra en la pantalla de comandos de MATLAB la orientación
disp(Or)
% Termina el programa y cierra la conexión de MATLAB con V-Rep.
disp('Programa terminado')
vrep.delete(); % llama el destructor!
