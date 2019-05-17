%Crea la struct de un número polar
function [numFormaPolar] = createPolar(modulo, angulo)
    numFormaPolar = struct('modulo', modulo, 'angulo', angulo);
end