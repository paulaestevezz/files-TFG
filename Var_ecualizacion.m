function Diferencia = Var_ecualizacion(SPLmedioComb,Promedio_SPLmedio)
%   VAR_ECUALIZACION: Diferencia del SPLmedio en bandas de 1/3 de octava de la combinación 
%   respecto al valor promedio en dBs de esta para cada frecuencia.
%   SPLmedioComb=vector 1x19. Promedio_SPLmedio=escalar.
%
%   Paula Estévez Márquez (2021)

Diferencia = SPLmedioComb-Promedio_SPLmedio;
end

