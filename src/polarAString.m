function [numString] = polarAString (numPolar)
    moduloString = num2str(numPolar.modulo);
    argString = num2str(numPolar.angulo);
    numString = strcat('[',moduloString, ' ; ', argString, ']');
end