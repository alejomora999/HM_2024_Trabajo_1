function [bloques,tubos] = actividad1(bloques,tubos)
    % %Describe la actividad 1
    % %Toma la fila número 12 de la matriz bloques.
    a = bloques(12,:);
    % %Se crea la matriz de probabilidades
     m =[0,0,0.2,0.8;...
        0,0,0.2,0.8;...
        0,0,0.3,0.7;...
        0,0,0.3,0.7];
    if a == [1 1]
        caso = va(1:4,m(1,:),1,1);       
    elseif a == [1 2]
        caso = va(1:4,m(2,:),1,1);
    elseif a == [2 1]
        caso = va(1:4,m(3,:),1,1);
    else
        caso = va(1:4,m(4,:),1,1);
	end
	switch caso
	case 1
		bloques(12,:) = [1 1];
	case 2
		bloques(12,:) = [1 2];
	case 3
		bloques(12,:) = [2 1];
	case 4
		bloques(12,:) = [2 2];
	end	
end