function SPL_Global=wav2SPL_Global_Steps(ruta)

%   C�lculo del SPL de una grabaci�n por escalones (duraci�n de cada
%   escal�n= 298.2 s).
%
%   Paula Est�vez M�rquez (2021)

clear x y
freqs=[63 80 100 125 160 200 250 315 400 500 630 800 1000 1250 1600 2000 2500 3150 4000];

%%%%%%%INICIO PAULA. Leemos fragmentos de 298.2 segundos, correspondientes
%%%%%%%a la duraci�n de un escal�n.
info=audioinfo(ruta);
frec=info.SampleRate;
duracion=info.Duration; %duraci�n en segundos del archivo
x=1; %1era muestra (muestra n�mero 1)
y=298.2*frec;%298.2 primeros segundos= 298.2 segundos*MUESTRAS/segundo
control=1; %n�mero de veces que entra en bucle. Indexaci�n empieza en 1.
%Ya podemos entrar en BUCLE.
while (x/frec)<=duracion%%%%%%%%%%%%%%
    
    samples=[x,y]; %lee 298.2 segundos (las muestras correspondientes a ese tiempo). [inicio, fin]
    clear audio Fs %borra lo que haya de antes
    [audio, Fs]=audioread(ruta, samples);%obtiene el fragmento indicado
%%%%%%FIN PAULA.

    %[audio,Fs]= audioread(ruta); %Comento.
    %Dise�amos para 1/3 de octava
    BandsPerOctave = 3;
    N = 8;           % Filter Order
    F0 = 1000;       % Center Frequency (Hz)
    f = fdesign.octave(BandsPerOctave,'Class 0','N,F0',N,F0,Fs);

    F0 = validfrequencies(f);
    Nfc = length(F0);
    for i=1:Nfc
       f.F0 = F0(i);
       Hd(i) = design(f,'butter');
    end
    hp = spectrum.welch;
    hp.segmentLength=2048; %Tama�o ventana
    hp.overlapPercent=0;   %Solape 

    Ps=zeros(1,length(freqs));
    Pi=zeros(1,length(freqs));%Paula

    %%Filtramos
     for t=1:length(freqs)
         yw = filter(Hd(abs(F0-freqs(t))==min(abs(F0-freqs(t)))),audio);
         %%figure;plot(psd(hp,yw,'Fs',Fs));
         P=avgpower(psd(hp,yw,'Fs',Fs));
         Pi(t)=P; %PAULA. Cuando finalice el for tendr� los 19 valores
         %PR=10*log10(P); %Coment.Paula. Puedo suprimir esta l�nea
         %Ps(t)=PR; %Coment.Paula. Almacena 19 valores en dB. Puedo suprimir esta l�nea
     end

     %PAULA. Ahora que ya tengo el valor para cada 1/3 octava, los sumo en unidades naturales y lo paso a dB nuevamente
     SPLt_un=sum(Pi); %Almaceno la suma de esos 19 valores para el fragmento de 298.2 segundos le�do, en un.nat.
     SPLt_dB=10*log10(SPLt_un); %Lo paso a dBs.
     %SPLfrag_dB(i)siendo i el instante temporal. es decir, el n�mero de cortes de
     %i que haya, de 298.2 segundos
     SPLfrag_dB(control)=SPLt_dB; %almaceno el valor en la posici�n correspondiente del fragmento (1,2,3...)

%%%%%INICIO PAULA. 
     %Antes Fin de cada iteracci�n BUCLE hay que actualizar posici�n samples.
     x=y+1; %sigo por donde se qued� y, +1 muestra despu�s
     y=y+298.2*Fs; %hasta los 298.2 segundos posteriores
     %Si x es igual a la duraci�n total en muestras, � no completamos un
     %fragmento de 298.2 segundos:
     if ((x/frec)== duracion)|| (((x/frec)<duracion) && ((y/frec)>duracion))
         y=inf; %cogemos muestra donde nos quedamos hasta final de muestras
         %es como hacer samples[x,inf]
     end
    control=control+1;
end %fin del while

%PAULA.Como G=31.60, me cargo el switch: Case 31.60 F=165; 
     F=165;
     %SPL=Ps+F; %Coment.Paula. Tiene los valores de las 19 frecuencias
 SPL_Global=SPLfrag_dB+F; %PAULA. SPL=Ps+F; Tiene que haber tantas posiciones como fragmentos de 298.2 segundos a leer existan
 %%%%%%FIN PAULA.

