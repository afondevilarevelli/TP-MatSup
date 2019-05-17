%Devuelve las posiciones de las raíces de la unidad que son primitivas 
function [primitivas] = raicesPrimitivas(raices)
    vecTam = size(raices);
    tam = vecTam(1);
    aux = zeros(1, tam);
    k = 1;
    for i=1:tam
        if gcd(tam, i-1) == 1
            aux(k) = i;
            %raices(aux(k)) es primitiva
            k = k + 1;
        end
    end
    primitivas = aux(1,1:k-1);
end