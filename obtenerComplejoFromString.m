%Desde un texto con el formato '(a,b)' � '[c,d]', transforma el texto
%a un n�mero complejo en forma bin�mica o polar. Esto sirve m�s adelante
%para obtener el n�mero de entrada de la interfaz gr�fica
function [numeroComplejo] = obtenerComplejoFromString(text)
    if contains(text,",") && startsWith(text, "[") && endsWith(text, "]")
        %forma polar
        C = strsplit(text,{'[',']', ','});
        aux = createPolar(str2double(C(2)), str2double(C(3)));   
    elseif contains(text,",") && startsWith(text, "(") && endsWith(text, ")")
        %forma bin�mica
        C = strsplit(text,{'(',')', ','});
        aux = str2double(C(2)) + 1i*str2double(C(3));
    end
    numeroComplejo = aux;
end