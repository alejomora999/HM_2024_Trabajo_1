function [bloques,tubos] = actividad6(bloques,tubos)
    %Describe la actividad 1bloques(6
    %Toma la fila número 8 y 6 de la matriz bloques.
    a = bloques(6,:);
    b = bloques(8,:);
    %Se crea la matriz de probabilidades
    numero =va([5:7], [0.3,0.4,0.3],1,1);

    % m =[0.3,0.3,0,0.4;...
    %     0.4,0,0.3,0.3;...
    %     0.3,0.4,0.4,0;...
    %     0.3,0,0.4,0.3];
    m =[0.8,0.1,0.1,0;...
        0.8,0.1,0.1,0;...
        0.8,0.1,0.1,0;...
        0.9,0.1,0,0];
    if all(a ==[1,1]) &&  all(b == [1,1])
        caso = va([1:4], m(4,:),1,1);
    elseif  all(a == [1,1]) &&  all(b == [1,2])
        caso = va([1:4], m(3,:),1,1);
    elseif  all(a == [1,1]) &&  all(b == [2,1])
        caso = va([1:4], m(2,:),1,1);
    elseif  all(a == [1,1]) &&  all(b == [2,2])
        caso = va([1:4], m(1,:),1,1);
    elseif  all(a == [1,6]) &&  all(b == [1,1])
        caso = va([1:4], m(4,:),1,1);
    elseif  all(a == [1,6]) &&  all(b == [1,2])
        caso = va([1:4], m(3,:),1,1);
    elseif  all(a == [1,6]) &&  all(b == [2,1])
        caso = va([1:4], m(2,:),1,1);
    elseif  all(a == [1,6]) &&  all(b == [2,2])
        caso = va([1:4], m(1,:),1,1);
    elseif  all(a == [6,1]) &&  all(b == [1,1])
        caso = va([1:4], m(4,:),1,1);
    elseif  all(a == [6,1]) &&  all(b == [1,2])
        caso = va([1:4], m(3,:),1,1);
    elseif  all(a == [6,1]) &&  all(b == [2,1])
        caso = va([1:4], m(2,:),1,1);
    elseif  all(a == [6,1]) &&  all(b == [2,2])
        caso = va([1:4], m(1,:),1,1);
    elseif  all(a == [6,6]) &&  all(b == [1,1])
        caso = va([1:4], m(4,:),1,1);
    elseif  all(a == [6,6]) &&  all(b == [1,2])
        caso = va([1:4], m(3,:),1,1);
    elseif  all(a == [6,6]) &&  all(b == [2,1])
        caso = va([1:4], m(2,:),1,1);
    else
        caso = va([1:4], m(1,:),1,1);
    end
    
    switch caso
	case 1
		bloques(numero,:) = [1 1];
	case 2
		bloques(numero,:) = [1 6];
	case 3
		bloques(numero,:) = [6 1];
	case 4
		bloques(numero,:) = [6 6];
	end	 
end