%   Testeo tras aplicar la ganancia.
%
%   Paula Estévez Márquez (2021)

%Nivel del Track semilla
G=0;
SPLTrack_0=wav2SPL('SemillaRec5min.wav',G);
%Nivel de los escalones resultantes
SPLStepG_5 = wav2SPL('StepG_5.wav',G);
SPLStepG_10 = wav2SPL('StepG_10.wav',G);
SPLStepG_15 = wav2SPL('StepG_15.wav',G);
SPLStepG_20 = wav2SPL('StepG_20.wav',G);
SPLStepG_25 = wav2SPL('StepG_25.wav',G);
SPLStepG_30 = wav2SPL('StepG_30.wav',G);
SPLStepG_35 = wav2SPL('StepG_35.wav',G);
SPLStepG_40 = wav2SPL('StepG_40.wav',G);
SPLStepG_45 = wav2SPL('StepG_45.wav',G);
SPLStepG_50 = wav2SPL('StepG_50.wav',G);
SPLStepG_55 = wav2SPL('StepG_55.wav',G);