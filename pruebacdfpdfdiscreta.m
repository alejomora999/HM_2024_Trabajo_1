%% Ejemplo inicial
muestra = [1,1,2;3,3,3;2,-1,0];
cdfpdfdiscreta(muestra);

%% Ejemplo función va
x = 1:10;
p = [0.05,0.1,0.15,0.1,0.1,0.05,0.1,0.15,0.1,0.1];
muestra = va(x,p,100,100);
[p,x]=cdfpdfdiscreta(muestra)
%%