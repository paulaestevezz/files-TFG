function Var_punto = Var_i(SPL_i,SPLmedio)
%   C�lculo de la varianza del nivel de un punto para cada freq en 1/3
%   octava.
%   Var_i(f)=SPL(i,f)-SPL_medio(f)
%   -Dimensi�n 1x19 (Para un punto dado, valor SPL para cada frec.)
%
%   Paula Est�vez M�rquez (2021)

Var_punto = abs(SPL_i-SPLmedio); %valor absoluto para evitar cancelaciones 
end

