%suma = ampl1*cos(frec1*t+fase1) + ampl2*cos(frec2*t+fase2)
%Transformar las funciones entrantes para que tengan cosenos
%sen(x) = cos(x-pi/2)
function [suma] = sumaFasores(ampl1, frec1, fase1, ampl2, frec2, fase2)
    if frec1 == frec2
        fasor1 = ampl1*cos(fase1) + 1i*ampl1*sin(fase1);
        fasor2 = ampl2*cos(fase2) + 1i*ampl2*sin(fase2);
        fasorSuma = fasor1 + fasor2;
        moduloSuma = sqrt(imag(fasorSuma)^2 + real(fasorSuma)^2);
        anguloSuma = atan(imag(fasorSuma) / real(fasorSuma));
        moduloString = num2str(moduloSuma);
        anguloString = num2str(anguloSuma);
        frecString = num2str(frec1);
        if anguloSuma < 0
            suma = strcat(moduloString,'*cos(',frecString,'*t',anguloString,')'); 
        else
            suma = strcat(moduloString,'*cos(',frecString,'*t+',anguloString,')');
        end
    else 
        suma = nan;
    end
end