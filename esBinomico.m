%Devuelve 1-true si el n�mero est� en forma bin�mica
function [boolean] = esBinomico(num)
    try
        boolean = imag(num) ~= 0 || imag(num) == 0;
    catch exception
        boolean = 0;
    end      
end