function [bloques,tubos] = actividad5(bloques,tubos)
    %Describe la actividad 1
    %Toma la fila número 3 y 4 de la matriz bloques.
    a = bloques(3,:);
    b = bloques(4,:);
    %Se crea la matriz de probabilidades
   

    % m =[0,0.3,0,0.7;...
    %     0,0,0.3,0.7;...
    %     0.3,0.4,0.4,0;...
    %     0.1,0,0.4,0.5];
    m =[0.8,0.1,0.1,0;...
        0.7,0.15,0.15,0;...
        0.7,0.15,0.15,0;...
        0.9,0.1,0,0];
    
    if all(a ==[1,1]) &&  all(b == [1,1])
        caso = va([1:4], m(4,:),1,1);
    elseif  all(a == [1,1]) &&  all(b == [1,2])
       caso = va([1:4], m(3,:),1,1);
    elseif  all(a == [1,1]) &&  all(b == [2,1])
        caso = va([1:4], m(2,:),1,1);
    elseif  all(a == [1,1]) &&  all(b == [2,2])
        caso = va([1:4], m(1,:),1,1);
    elseif  all(a == [1,5]) &&  all(b == [1,1])
        caso = va([1:4], m(4,:),1,1);
    elseif  all(a == [1,5]) &&  all(b == [1,2])
        caso = va([1:4], m(3,:),1,1);
    elseif  all(a == [1,5]) &&  all(b == [2,1])
        caso = va([1:4], m(2,:),1,1);
    elseif  all(a == [1,5]) &&  all(b == [2,2])
       caso = va([1:4], m(1,:),1,1);
    elseif  all(a == [5,1]) &&  all(b == [1,1])
        caso = va([1:4], m(4,:),1,1);
    elseif  all(a == [5,1]) &&  all(b == [1,2])
        caso = va([1:4], m(3,:),1,1);
    elseif  all(a == [5,1]) &&  all(b == [2,1])
        caso = va([1:4], m(2,:),1,1);
    elseif  all(a == [5,1]) &&  all(b == [2,2])
        caso = va([1:4], m(1,:),1,1);
    elseif  all(a == [5,5]) &&  all(b == [1,1])
        caso = va([1:4], m(4,:),1,1);
    elseif  all(a == [5,5]) &&  all(b == [1,2])
        caso = va([1:4], m(3,:),1,1);
    elseif  all(a == [5,5]) &&  all(b == [2,1])
        caso = va([1:4], m(2,:),1,1);
    else
        caso = va([1:4], m(1,:),1,1);
    end
    switch caso
	case 1
		bloques(3,:) = [1 1];
	case 2
		bloques(3,:) = [1 5];
	case 3
		bloques(3,:) = [5 1];
	case 4
		bloques(3,:) = [5 5];
	end	 
end