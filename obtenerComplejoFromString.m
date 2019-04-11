%Desde un texto con el formato '(a,b)' ó '[c,d]', transforma el texto
%a un número complejo en forma binómica o polar. Esto sirve más adelante
%para obtener el número de entrada de la interfaz gráfica
function [numeroComplejo] = obtenerComplejoFromString(text)
    if contains(text,",") && startsWith(text, "[") && endsWith(text, "]")
        %forma polar
        C = strsplit(text,{'[',']', ','});
        aux = createPolar(str2double(C(2)), str2double(C(3)));   
    elseif contains(text,",") && startsWith(text, "(") && endsWith(text, ")")
        %forma binómica
        C = strsplit(text,{'(',')', ','});
        aux = str2double(C(2)) + 1i*str2double(C(3));
    end
    numeroComplejo = aux;
end