%Calcula la ra�z n-�sima de numBinomico
%Wn ser�a raices(n+1)
function [raices, primitivas] = raiz(numBinomico, n)
    vectorCoef = [1];
    for i=2:n
        vectorCoef(n) = 0;
    end
    vectorCoef(n+1) = -numBinomico;
    raices = roots(vectorCoef);
    raices = ordenarRaices(raices, n);
    if numBinomico == 1
        primitivas = raicesPrimitivas(raices);
    else
        primitivas = [];
    end
end