function [bloques,tubos] = actividad7(bloques,tubos)
    %Describe la actividad 7 bloques
    %Toma la fila número 8 de la matriz bloques.
    a = bloques(8,:);
    %Se crea la matriz de probabilidades
   m =[ 0.1	0.2	0	0;...
    0.2	0	0	0;...
    0	0.1	0	0;...
    0.1	0.7	0.2	0;...
    0.6	0	0.3	0.1];

    if a == [1 1]
        caso = va(1:5,m(:,1),1,1);       
    elseif all(a(1) == 1) && all(a(2) ~= 1)
        caso = va(1:5,m(:,2),1,1);
    elseif all(a(1) ~= 1) && all(a(2) == 1)
        caso = va(1:5,m(:,3),1,1);
    else
        caso = va(1:5,m(:,4),1,1);
	end
	switch caso
	case 1
        bloques(10,:) = [7 1];
        bloques(11,:) = [7 7];
	case 2
		bloques(10,:) = [1 7];
        bloques(11,:) = [7 7];
	case 3
		bloques(10,:) = [7 1];
        bloques(11,:) = [7 1];
	case 4
		bloques(10,:) = [1 1];
        bloques(11,:) = [7 1];
    case 5
		bloques(10,:) = [1 1];
        bloques(11,:) = [1 1];
	end	

end