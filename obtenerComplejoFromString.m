%Desde un texto con el formato '(a,b)' � '[c;d]', transforma el texto
%a un n�mero complejo en forma bin�mica o polar. Esto servir� m�s 
%adelante para obtener el n�mero de entrada de la interfaz gr�fica.
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
            %forma bin�mica
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
