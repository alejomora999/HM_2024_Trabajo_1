function [fr,x] = cdfpdfdiscreta(muestra)
    muestra = muestra(:)'; %Poner todo como un vector
    x = unique(muestra);
    fr = zeros(1,numel(x));
    for n = 1:numel(x) %devuelve el número de elementos dentro de la matriz
        fr(n) = sum(muestra ==x(n));
    end
    fr = fr/numel(muestra);
    graficacdfpdf(x,fr);
end

function [] = graficacdfpdf(x,p)
    [x,orden] = sort(x);
    p = p(orden); %se indexa el orden de p
    rangox = max(x) - min(x);
    minx = min(x) - 0.2*rangox;
    maxx = max(x) + 0.2*rangox;
    %miny = -0.2*max(p);
    miny = 0;
    maxy = 1.2*max(p);
    ejex = [minx, x, maxx];
    cdf = [0,cumsum(p),1];
    %Gráfica superior
    subplot(2,1,1); %Matriz de gráficas: dos filas una columna
    stairs(ejex,cdf,'LineWidth',2);
    axis([minx, maxx,-0.2,1.2])%Minimo y máximo de x y minimo y mpaximo de y
    grid on;
    title('Función de Distribución Acumulativa.')
    set(gcf,'Color','white');
    set(gca,'FontSize',14);
    xlabel('$x$','Interpreter','latex');
    ylabel('$F_X(x)$','Interpreter','latex');
    %Gráfica inferior
    subplot(2,1,2);
    stem(x,p,'^','filled','LineWidth',2,'Color','red');
    axis([minx,maxx,miny,maxy]);
    grid on;
    title('Función de Densidad de Probabilidad.')
    set(gcf,'Color','white');
    set(gca,'FontSize',14);
    xlabel('$x$','Interpreter','latex');
    ylabel('$f_X(x)$','Interpreter','latex');
end