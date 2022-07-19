function SPL=wav2SPL(ruta,G)
freqs=[63 80 100 125 160 200 250 315 400 500 630 800 1000 1250 1600 2000 2500 3150 4000];
[audio,Fs]= audioread(ruta);
%Diseñamos para 1/3 de octava
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
hp.segmentLength=2048; %Tamaño ventana
hp.overlapPercent=0;   %Solape 

Ps=zeros(1,length(freqs));


%%Filtramos
 for t=1:length(freqs)
     yw = filter(Hd(abs(F0-freqs(t))==min(abs(F0-freqs(t)))),audio);
     %%figure;plot(psd(hp,yw,'Fs',Fs));
     P=avgpower(psd(hp,yw,'Fs',Fs));
     PR=10*log10(P);
     Ps(t)=PR;
 end
 
 switch G
    case 100
        F=155;
     case 31.60
        F=165;
     case 10
        F=175;
      case 3.16
        F=185;
       case 1
        F=195;
    otherwise
        F=155;
end
 SPL=Ps+F;

