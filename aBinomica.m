%Transforma un número en forma polar a binómica
function [numFormaBinomica] = aBinomica(numFormaPolar)
    parteReal = numFormaPolar.modulo * cos(numFormaPolar.angulo);
    parteImaginaria = numFormaPolar.modulo * sin(numFormaPolar.angulo);
    numFormaBinomica = parteReal + 1i*parteImaginaria;
end