function SPLmedio = SPL_medio(SPLcomb)
%   SPL_MEDIO: Promediado en unidades naturales.
%   Recibe una matriz 9x19 para calcular el SPLmedio(f).
%   -SPLcomb contiene los valores SPL de los 9 puntos para las frec. en 1/3
%   octava.
%   -Da como salida un vector 1x19.
%   -Número de puntos de medida, Np=9.
%
% Paula Estévez Márquez (2021)

%%[Fil,Col]=size(SPLcomb);
Np=9;
% Sumo las 9 filas (ptos) para cada freq. 1x19
SPLmedio = 10*log10 (1/Np*sum(10.^(SPLcomb/10))); 
%%Nota: sum(vector)=suma de elementos, sum(matriz)=suma elem.cada col.
end

