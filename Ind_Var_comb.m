function Ind_Var_FxHy = Ind_Var_comb(Var_i_comb)
%   VAR_COMB: Calcula la variabilidad para la combinaci�n dada.
%   -Var_i_comb: es una matriz de dimensi�n 9x19 que almacena el valor SPL
%   de cada punto (de una combinaci�n dada) para cada frec en 1/3 octava.
%
%    Paula Est�vez M�rquez (2021)

Np=9;
Nf=19;
Prom_punto=1/Np*sum(Var_i_comb); %Resulta en vector 1x19. Suma en media de los puntos para determinada frec.
%Resultado, el �ndice de variabilidad para la combinaci�n:
Ind_Var_FxHy =  1/Nf*sum(Prom_punto); %Suma los elementos del vector. Promediado en frec.
end

