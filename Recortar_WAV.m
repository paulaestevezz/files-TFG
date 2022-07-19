function [audio_rec,fs] = Recortar_WAV(in_audio,duracion,nombre_wav)
%   RECORTAR_WAV.
%   Recorto el audio in_audio a la duración indicada en segundos
%   y lo guardo como un wav con filename especificado en nombre_wav.
%
% Paula Estévez Márquez (2021)

info_audio= audioinfo(in_audio); %Extrae info acerca del wav
[y,fs]=audioread(in_audio); 
tamano=fs*duracion;
audio_rec=y(1:tamano); %recorto audio a duración indicada

audiowrite(nombre_wav,audio_rec,fs); %creo wav con nombre especificado

%%%%%%%%%%%%%%%%%%%
%%subplot(1,2,1)
%%plot(y)
%%title(['tiempo ',num2str(info_audio.Duration)])
%%subplot(1,2,2)
%%plot(audio_rec)
%%title(['tiempo ',num2str(duracion)])
%%%%%%%%%%%%%%%%%%
end

