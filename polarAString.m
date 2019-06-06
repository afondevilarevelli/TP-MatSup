function [polarString] = polarAString(numPolar)
    modString = num2str(numPolar.modulo);
    angString = num2str(numPolar.angulo);
    polarString = strcat('[', modString, '; ', angString,']');
end