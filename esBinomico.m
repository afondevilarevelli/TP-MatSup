%Devuelve 1-true si el número está en forma binómica
function [boolean] = esBinomico(num)
    try
        boolean = imag(num) ~= 0 || imag(num) == 0;
    catch exception
        boolean = 0;
    end      
end