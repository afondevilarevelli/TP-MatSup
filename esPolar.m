%Devuelve 1-true si el n�mero est� en forma polar
function [boolean] = esPolar(num)
    try
        a = num.modulo;
        b = num. angulo;
        boolean = 1;
    catch exception
        boolean = 0;
    end   
end