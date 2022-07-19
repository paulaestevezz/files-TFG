%   Este script llama a la función aplicarGanancia.m para obtener los
%   distintos escalones de ganancia respecto al track semilla generado.
%
%   Paula Estévez Márquez (2021)

%7 escalones en total
%Ganancia Negativa
SPLStepG_5 = aplicarGanancia('SemillaRec5min.wav','StepG_5.wav',-5);
SPLStepG_10 = aplicarGanancia('SemillaRec5min.wav','StepG_10.wav',-10);
SPLStepG_15 = aplicarGanancia('SemillaRec5min.wav','StepG_15.wav',-15);
SPLStepG_20 = aplicarGanancia('SemillaRec5min.wav','StepG_20.wav',-20);
SPLStepG_25 = aplicarGanancia('SemillaRec5min.wav','StepG_25.wav',-25);
SPLStepG_30 = aplicarGanancia('SemillaRec5min.wav','StepG_30.wav',-30);

SPLStepG_35 = aplicarGanancia('SemillaRec5min.wav','StepG_35.wav',-35);
SPLStepG_40 = aplicarGanancia('SemillaRec5min.wav','StepG_40.wav',-40);
SPLStepG_45 = aplicarGanancia('SemillaRec5min.wav','StepG_45.wav',-45);
SPLStepG_50 = aplicarGanancia('SemillaRec5min.wav','StepG_50.wav',-50);
SPLStepG_55 = aplicarGanancia('SemillaRec5min.wav','StepG_55.wav',-55);
SPLStepG_60 = aplicarGanancia('SemillaRec5min.wav','StepG_60.wav',-60);



%Ganancia Positiva BORRAR
% SPLStepG5 = aplicarGanancia('SemillaRec5min.wav','SPLStepG5.wav',5);
% SPLStepG10 = aplicarGanancia('SemillaRec5min.wav','SPLStepG10.wav',10);
% SPLStepG15 = aplicarGanancia('SemillaRec5min.wav','SPLStepG15.wav',15);
% SPLStepG20 = aplicarGanancia('SemillaRec5min.wav','SPLStepG20.wav',20);
% SPLStepG25 = aplicarGanancia('SemillaRec5min.wav','SPLStepG25.wav',25);
% SPLStepG30 = aplicarGanancia('SemillaRec5min.wav','SPLStepG30.wav',30);

%Nivel del Track semilla
% G=0;
% SPLTrack_0=wav2SPL('SemillaRec5min.wav',G);