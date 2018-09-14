function [x,d] = recebe_valoresV2(t)
inicio = 1;
fim = 12;
tamanho = size(t,1);
j = 1;
while fim < tamanho
    d(inicio) = t(fim+1);
    k = 1;
    for i = inicio:fim  
        x(k,j) = t(i);
        k = k+1;
    end
    j = j+1;
    inicio = inicio+1;
    fim = fim+1;
end