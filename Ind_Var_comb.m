function Ind_Var_FxHy = Ind_Var_comb(Var_i_comb)
%   VAR_COMB: Calcula la variabilidad para la combinación dada.
%   -Var_i_comb: es una matriz de dimensión 9x19 que almacena el valor SPL
%   de cada punto (de una combinación dada) para cada frec en 1/3 octava.
%
%    Paula Estévez Márquez (2021)

Np=9;
Nf=19;
Prom_punto=1/Np*sum(Var_i_comb); %Resulta en vector 1x19. Suma en media de los puntos para determinada frec.
%Resultado, el índice de variabilidad para la combinación:
Ind_Var_FxHy =  1/Nf*sum(Prom_punto); %Suma los elementos del vector. Promediado en frec.
end

