function [] = main(repeticiones)
    bloques = ones(12,24);
    bloques(12,:) = 2;
    bloques(4,13:15) = 4;
    bloques(4,14) = 3;
    bloques(8,12:16) = 4;
    bloques(8,13) = 3;
    bloques(8,15) = 3;
    tubos = ones(6,12);
    tubos(6,10) = 2;
    mundo = mariomundo(bloques,tubos);
    bloques_last_row = bloques(:,end-1:end);
    tubos_last_row = tubos(:,end);
    % Bucle para ejecutar el código n veces
    for i = 1:repeticiones
        bloques = [bloques,bloques_last_row];
        tubos = [tubos,tubos_last_row];
        [bloques_last_row,tubos_last_row] = actividad1(bloques_last_row,tubos_last_row);
        [bloques_last_row,tubos_last_row] = actividad2(bloques_last_row,tubos_last_row);
        [bloques_last_row,tubos_last_row] = actividad3(bloques_last_row,tubos_last_row);
        [bloques_last_row,tubos_last_row] = actividad4(bloques_last_row,tubos_last_row);
        [bloques_last_row,tubos_last_row] = actividad5(bloques_last_row,tubos_last_row);
        [bloques_last_row,tubos_last_row] = actividad6(bloques_last_row,tubos_last_row);
        [bloques_last_row,tubos_last_row] = actividad7(bloques_last_row,tubos_last_row);
    end
    mariomundo(bloques,tubos);
    %[p,x] = cdfpdfdiscreta(bloques);
    
end
