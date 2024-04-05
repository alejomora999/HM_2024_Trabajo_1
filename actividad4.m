function [bloques,tubos] = actividad4(bloques,tubos)
    %Describe la actividad 1
    %Toma la fila número 8 de la matriz bloques.
    a = bloques(4,:);
    %Se crea la matriz de probabilidades
 m =[0.7,	0,	0,	0.15,	0,	0,	0,	0.15,	0;...
       0.6,	0,	0,	0,	0,	0,	0,	0.2,	0.2;...
       0.6,	0,	0,	0.1,	0,	0.3,	0,	0,	0;...
       0.8,	0,	0,	0.2,	0,	0,	0,	0,	0;...
        0.8,	0,	0,	0,	0,	0,	0,	0,	0.2;...
        0.7,	0,	0,	0,	0,	0.3,	0,	0,	0;...
        0.8,	0.2,	0,	0,	0,	0,	0,	0,	0;...
        0.4,	0,	0,	0,	0,	0,	0.3,	0.3,	0;...
        0.7,	0,	0,	0,	0,	0.3,	0,	0,0];
    if a ==[1,1]
        caso = va([1:9], m(1,:),1,1);
    elseif a == [1,3]
        caso = va([1:9], m(2,:),1,1);
    elseif a == [1,4]
        caso = va([1:9], m(3,:),1,1);
    elseif a == [3,1]
        caso = va([1:9], m(4,:),1,1);
    elseif a == [3,3]
        caso = va([1:9], m(5,:),1,1);
    elseif a == [3,4]
        caso = va([1:9], m(6,:),1,1);
    elseif a == [4,1]
        caso = va([1:9], m(7,:),1,1);
    elseif a == [4,3]
        caso = va([1:9], m(8,:),1,1);
    else
        caso = va([1:9], m(9,:),1,1);
    end
    switch caso
	case 1
		bloques(4,:) = [1 1];
	case 2
		bloques(4,:) = [1 3];
	case 3
		bloques(4,:) = [1 4];
	case 4
		bloques(4,:) = [3 1];
    case 5
		bloques(4,:) = [3 3];
	case 6
		bloques(4,:) = [3 4];
	case 7
		bloques(4,:) = [4 1];
	case 8
		bloques(4,:) = [4 3];
    case 9
		bloques(4,:) = [4 4];    
	end	 
end