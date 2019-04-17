%Desde un texto con el formato '(a,b)' ó '[c;d]', transforma el texto
%a un número complejo en forma binómica o polar. Esto servirá más 
%adelante para obtener el número de entrada de la interfaz gráfica.
%Devuelve nan(notANumber) si no es de ninguna forma.
function [numeroComplejo] = obtenerComplejoFromString(text)
    expresionPolar = '\[\d+[.\d+]?;\d+[.\d+]?\]';
    expresionBinomica = '\(\d+[.\d+]?,\d+[.\d+]?\)';
    
    [iPolar, fPolar] = regexp(text,expresionPolar);
    if ~isempty(iPolar) && iPolar == 1 && strlength(text) == fPolar
        %forma polar
        C = strsplit(text,{'[',']', ';'});
        aux = createPolar(str2double(C(2)), str2double(C(3)));   
    else
        [iBinomica, fBinomica] = regexp(text,expresionBinomica);
        if ~isempty(iBinomica) && iBinomica == 1 && strlength(text) == fBinomica
            %forma binómica
            C = strsplit(text,{'(',')', ','});
            aux = str2double(C(2)) + 1i*str2double(C(3));
        else
            aux = nan;
        end
    end
    numeroComplejo = aux;
end
