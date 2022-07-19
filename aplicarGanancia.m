function SPLNewStepTrack = aplicarGanancia(arch_fuente,arch_salida,ganancia)
%   Aplica la ganancia deseada respecto al track original
%               'SemillaRec5min.wav'
%   -arch_fuente: es el archivo .wav al que se le aplicarán los cambios.
%   -arch_salida: es el nombre deseado (con el formato 'nombre_arch.wav') 
%                 para el nuevo wav generado. 
%   -ganancia: ganancia en dBs que se le desea aplicar a la pista original.
%
%   Paula Estévez Márquez (2021)

G=0;
audio_original=arch_fuente;
[y,Fs]=audioread(audio_original); %'SemillaRec5min.wav'
filename=arch_salida;
New_G=ganancia;
Gan_UNatural=10^(New_G/20); %paso a unidades naturales el valor de la ganancia
[m,n]=size(y); %m filas, n columnas
y_G_UNat=zeros(m,n); %creo una matriz o vector del tamaño de y
%y_G_UNat=y.*Gan_UNatural; %así no tendría que hacer el bucle

for s=1:n
    for r=1:m 
    y_G_UNat(r,s)=y(r,s)*Gan_UNatural; %multiplico en unidades naturales
    end
end
%Guardo el nuevo audio, con nueva ganancia
audiowrite(filename,y_G_UNat,Fs);
%Compruebo con wav2spl que la ganancia se ha aplicado de manera correcta
SPLNewStepTrack=wav2SPL(filename,G);
%SPLTrack_0=wav2SPL('SemilllaRec5min.wav',G);
end

