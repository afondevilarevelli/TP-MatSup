%Devuelve 1-true si el número está en forma polar
function [boolean] = esPolar(num)
    try
        a = num.modulo;
        b = num. angulo;
        boolean = 1;
    catch exception
        boolean = 0;
    end   
end