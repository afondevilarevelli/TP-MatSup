%Devuelve 1-true si el número está en forma binómica
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