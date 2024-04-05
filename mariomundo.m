function [mundo] = mariomundo(posbloques,postubos)            
    % Bloques. Sprites descargados de https://www.mariowiki.com/Gallery:Super_Mario_Maker_sprites
    a{1} = uint8(zeros(16,16,3));
    a{2} = imread('baldosa.png');
    a{3} = imread('interrogante.png');
    a{4} = imread('ladrillo.png');
    a{5} =  imresize(imread('moneda1.png'), [16 16]);
    a{6} =  imresize(imread('koopa.png'), [16 16]);
    a{7} =  imresize(imread('escalera.png'), [16 16]);

    
    % Tubos
    b{1} = uint8(zeros(32,32,3));
    b{2} = imread('tubo.png');

    
    % M�scara para los tubos
    c{1} = uint8(ones(32,32,3));
    c{2} = uint8(zeros(32,32,3));


    bloques = cell2mat(a(posbloques));
    
    if size(postubos,2) == 1
        tubos = cell2mat(b(postubos)');
        mascara = cell2mat(c(postubos)');
    else
        tubos = cell2mat(b(postubos));
        mascara = cell2mat(c(postubos));
    end

    mundo = mascara.*bloques + tubos;

    imshow(mundo);
end