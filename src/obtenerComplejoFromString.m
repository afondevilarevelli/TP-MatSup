%Desde un texto con el formato '(a,b)' ó '[c;d]', transforma el texto
%a un número complejo en forma binómica o polar. Esto servirá más 
%adelante para obtener el número de entrada de la interfaz gráfica.
%Devuelve nan(notANumber) si no es de ninguna forma.
function [numeroComplejo] = obtenerComplejoFromString(text)
    expresionPolar = '\[\ *((\d+\.?\d*)|((\d+\*)?pi(\/\d+)?));\ *((\d+\.?\d*)|((\d+\*)?pi(\/\d+)?))\]';
    expresionBinomica = '\(\ *((\d+\.?\d*)|((\d+\*)?pi(\/\d+)?)),\ *((\d+\.?\d*)|((\d+\*)?pi(\/\d+)?))\)';
    
    [iPolar, fPolar] = regexp(text,expresionPolar);
    if ~isempty(iPolar) && iPolar == 1 && strlength(text) == fPolar
        %forma polar
        C = strsplit(text,{'[',']', ';'});
        mod = str2num(char(C(2)));
        ang = str2num(char(C(3)));
        aux = createPolar(mod, ang); 
    else
        [iBinomica, fBinomica] = regexp(text,expresionBinomica);
        if ~isempty(iBinomica) && iBinomica == 1 && strlength(text) == fBinomica
            %forma binómica
            C = strsplit(text,{'(',')', ','});
            realP = str2num(char(C(2)));
            imagP = str2num(char(C(3)));
            aux = realP + 1i*imagP;
        else
            aux = nan;
        end
    end
    numeroComplejo = aux;
end
