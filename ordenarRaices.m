%Ordena las raíces en Wo, W1, ..., Wn de acuerdo con los ángulos
function [raicesBinomicas] = ordenarRaices(raicesBinomicas, tam)
    matrizAux = zeros(tam, 2);
    for i=1:tam
        polar = aPolar(raicesBinomicas(i));
        matrizAux(i,1) = raicesBinomicas(i); 
        matrizAux(i,2) = polar.angulo;
    end
    [matrizAuxOrdenada, k] = sort(matrizAux(:,2));
    matrizAuxOrdenada = [matrizAux(k) matrizAuxOrdenada];
    raicesBinomicas = matrizAuxOrdenada(:, 1);
end