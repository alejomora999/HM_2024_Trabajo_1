function [bloques,tubos] = actividad2(bloques,tubos)
    %Describe la actividad 1
    %Toma la fila número 6 de la matriz tubos.
    a = tubos(6,:);
    %Se crea la matriz de probabilidades 2x2
    m =[0.9,0.1;...
        0.8,0.2];
    if a ==[1]
        caso = va([1,2], m(1,:),1,1);
    else 
        caso = va([1,2], m(2,:),1,1);
    end
    
    switch caso
    case 1
		tubos(6,:) = [1];
	case 2
		tubos(6,:) = [2];
	end	
end