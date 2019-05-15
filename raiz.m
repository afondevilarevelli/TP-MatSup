%Calcula la raíz n-ésima de numBinomico
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
    end
end