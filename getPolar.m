function [numPolar] = getPolar(numFormaBinomica) %numFormaBinomica = a+bj
    modulo = abs(numFormaBinomica);
    angulo = angle(numFormaBinomica);
    if angulo<0
        angulo = angulo + 2*pi;
    end
    numPolar = struct('modulo', modulo, 'angulo', angulo);
end
%numPolar es un struct. numPolar.modulo devuelve el módulo,
%                       numPolar.angulo devuelve el ángulo