%Convierte un número binómico a String
function [numString] = binomicoAString(numBinomico)
    parteRealString = num2str(real(numBinomico));
    parteImagString = num2str(imag(numBinomico));
    numString = strcat('(',parteRealString, ' , ', parteImagString, ')');
end