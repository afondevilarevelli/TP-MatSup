%Devuelve 1-true si el n�mero est� en forma bin�mica
function [boolean] = esBinomico(num)
    try
        a = num.modulo;
        b = num. angulo;
        boolean = 0;
    catch exception
        try
            c = ~isnan(num);
            boolean = c;
        catch exception
            boolean = 0;
        end
    end      
end