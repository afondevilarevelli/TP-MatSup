%Devuelve 1-true si el n�mero est� en forma bin�mica
function [boolean] = esBinomico(num)
    try
        a = num.modulo;
        b = num. angulo;
        boolean = 0;
    catch exception
        boolean = 1;
    end      
end