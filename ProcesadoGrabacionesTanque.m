%%  Guardo cada una de las matrices resultantes para cada grabación (27 grab)
%%
%% Paula Estévez Márquez (2021)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%% Recorto audios a 25 s %%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%Comb. Fuente Arriba y Receptor Media Altura%%%%
F1H1_A1x= Recortar_WAV('F1H1_A1.wav',25,'F1H1_A1x.wav');%podría omitir 
F1H1_A2x= Recortar_WAV('F1H1_A2.wav',25,'F1H1_A2x.wav');%guardarlo en 
F1H1_A3x= Recortar_WAV('F1H1_A3.wav',25,'F1H1_A3x.wav');%esta variable
F1H1_B1x= Recortar_WAV('F1H1_B1.wav',25,'F1H1_B1x.wav');
F1H1_B2x= Recortar_WAV('F1H1_B2.wav',25,'F1H1_B2x.wav');
F1H1_B3x= Recortar_WAV('F1H1_B3.wav',25,'F1H1_B3x.wav');
F1H1_C1x= Recortar_WAV('F1H1_C1.wav',25,'F1H1_C1x.wav');
F1H1_C2x= Recortar_WAV('F1H1_C2.wav',25,'F1H1_C2x.wav');
F1H1_C3x= Recortar_WAV('F1H1_C3.wav',25,'F1H1_C3x.wav');
%%%%Comb. Fuente Arriba y Receptor Abajo%%%%
F1H2_A1x= Recortar_WAV('F1H2_A1.wav',25,'F1H2_A1x.wav');
F1H2_A2x= Recortar_WAV('F1H2_A2.wav',25,'F1H2_A2x.wav');
F1H2_A3x= Recortar_WAV('F1H2_A3.wav',25,'F1H2_A3x.wav');
F1H2_B1x= Recortar_WAV('F1H2_B1.wav',25,'F1H2_B1x.wav');
F1H2_B2x= Recortar_WAV('F1H2_B2.wav',25,'F1H2_B2x.wav');
F1H2_B3x= Recortar_WAV('F1H2_B3.wav',25,'F1H2_B3x.wav');
F1H2_C1x= Recortar_WAV('F1H2_C1.wav',25,'F1H2_C1x.wav');
F1H2_C2x= Recortar_WAV('F1H2_C2.wav',25,'F1H2_C2x.wav');
F1H2_C3x= Recortar_WAV('F1H2_C3.wav',25,'F1H2_C3x.wav');
%%%%Comb. Fuente Media Altura y Receptor Abajo%%%%
F2H2_A1x= Recortar_WAV('F2H2_A1.wav',25,'F2H2_A1x.wav');
F2H2_A2x= Recortar_WAV('F2H2_A2.wav',25,'F2H2_A2x.wav');
F2H2_A3x= Recortar_WAV('F2H2_A3.wav',25,'F2H2_A3x.wav');
F2H2_B1x= Recortar_WAV('F2H2_B1.wav',25,'F2H2_B1x.wav');
F2H2_B2x= Recortar_WAV('F2H2_B2.wav',25,'F2H2_B2x.wav');
F2H2_B3x= Recortar_WAV('F2H2_B3.wav',25,'F2H2_B3x.wav');
F2H2_C1x= Recortar_WAV('F2H2_C1.wav',25,'F2H2_C1x.wav');
F2H2_C2x= Recortar_WAV('F2H2_C2.wav',25,'F2H2_C2x.wav');
F2H2_C3x= Recortar_WAV('F2H2_C3.wav',25,'F2H2_C3x.wav');
%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
G=31.6; %ganancia Nexus en V/Pa
%%% SPL (i,f) para cada combinación %%%%
%%%%Combinación Fuente Arriba y Receptor Media Altura%%%%
F1H1_A1= wav2SPL('F1H1_A1x.wav',G);
F1H1_A2= wav2SPL('F1H1_A2x.wav',G);
F1H1_A3= wav2SPL('F1H1_A3x.wav',G);
F1H1_B1= wav2SPL('F1H1_B1x.wav',G);
F1H1_B2= wav2SPL('F1H1_B2x.wav',G);
F1H1_B3= wav2SPL('F1H1_B3x.wav',G);
F1H1_C1= wav2SPL('F1H1_C1x.wav',G);
F1H1_C2= wav2SPL('F1H1_C2x.wav',G);
F1H1_C3= wav2SPL('F1H1_C3x.wav',G);
%%%%Combinación Fuente Arriba y Receptor Abajo%%%%
F1H2_A1= wav2SPL('F1H2_A1x.wav',G);
F1H2_A2= wav2SPL('F1H2_A2x.wav',G);
F1H2_A3= wav2SPL('F1H2_A3x.wav',G);
F1H2_B1= wav2SPL('F1H2_B1x.wav',G);
F1H2_B2= wav2SPL('F1H2_B2x.wav',G);
F1H2_B3= wav2SPL('F1H2_B3x.wav',G);
F1H2_C1= wav2SPL('F1H2_C1x.wav',G);
F1H2_C2= wav2SPL('F1H2_C2x.wav',G);
F1H2_C3= wav2SPL('F1H2_C3x.wav',G);
%%%%Combinación Fuente Media Altura y Receptor Abajo%%%%
F2H2_A1= wav2SPL('F2H2_A1x.wav',G);
F2H2_A2= wav2SPL('F2H2_A2x.wav',G);
F2H2_A3= wav2SPL('F2H2_A3x.wav',G);
F2H2_B1= wav2SPL('F2H2_B1x.wav',G);
F2H2_B2= wav2SPL('F2H2_B2x.wav',G);
F2H2_B3= wav2SPL('F2H2_B3x.wav',G);
F2H2_C1= wav2SPL('F2H2_C1x.wav',G);
F2H2_C2= wav2SPL('F2H2_C2x.wav',G);
F2H2_C3= wav2SPL('F2H2_C3x.wav',G);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Puntos de una determinada combinación en una matriz %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Comb_F1H1=[F1H1_A1;F1H1_A2;F1H1_A3;F1H1_B1;F1H1_B2;F1H1_B3;F1H1_C1;F1H1_C2;F1H1_C3]; %%Matriz 9x19
Comb_F1H2=[F1H2_A1;F1H2_A2;F1H2_A3;F1H2_B1;F1H2_B2;F1H2_B3;F1H2_C1;F1H2_C2;F1H2_C3];
Comb_F2H2=[F2H2_A1;F2H2_A2;F2H2_A3;F2H2_B1;F2H2_B2;F2H2_B3;F2H2_C1;F2H2_C2;F2H2_C3];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%% Nivel promedio recibido, SPLmedio(f)     %%%%%%%%
%%%%%%%% para una combinación dada (los 9 puntos) %%%%%%%%
%%%%%%%% en cada frecuencia en 1/3 octava.        %%%%%%%%
%%%%%%%% Ptos de medida: 1<i<9 --> Np=9           %%%%%%%%
%%%%%%%% Bandas 1/3 octava: 1<f<19 ---> Nf=19     %%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
SPLmedio11= SPL_medio(Comb_F1H1);%%combinación F1H1. Dimensión recibida 1x19
SPLmedio12= SPL_medio(Comb_F1H2);%%combinación F1H2
SPLmedio22= SPL_medio(Comb_F2H2);%%combinación F2H2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%% Variabilidad_i (f)=SPL(i,f)-SPLmedio(f) para cada punto %%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%Combinación Fuente Arriba y Receptor Media Altura%%%%
Var_F1H1_A1= Var_i(F1H1_A1,SPLmedio11); %%1x19
Var_F1H1_A2= Var_i(F1H1_A2,SPLmedio11);
Var_F1H1_A3= Var_i(F1H1_A3,SPLmedio11);
Var_F1H1_B1= Var_i(F1H1_B1,SPLmedio11);
Var_F1H1_B2= Var_i(F1H1_B2,SPLmedio11);
Var_F1H1_B3= Var_i(F1H1_B3,SPLmedio11);
Var_F1H1_C1= Var_i(F1H1_C1,SPLmedio11);
Var_F1H1_C2= Var_i(F1H1_C2,SPLmedio11);
Var_F1H1_C3= Var_i(F1H1_C3,SPLmedio11);
%%%%Combinación Fuente Arriba y Receptor Abajo%%%%
Var_F1H2_A1= Var_i(F1H2_A1,SPLmedio12);
Var_F1H2_A2= Var_i(F1H2_A2,SPLmedio12);
Var_F1H2_A3= Var_i(F1H2_A3,SPLmedio12);
Var_F1H2_B1= Var_i(F1H2_B1,SPLmedio12);
Var_F1H2_B2= Var_i(F1H2_B2,SPLmedio12);
Var_F1H2_B3= Var_i(F1H2_B3,SPLmedio12);
Var_F1H2_C1= Var_i(F1H2_C1,SPLmedio12);
Var_F1H2_C2= Var_i(F1H2_C2,SPLmedio12);
Var_F1H2_C3= Var_i(F1H2_C3,SPLmedio12);
%%%%Combinación Fuente Media Altura y Receptor Abajo%%%%
Var_F2H2_A1= Var_i(F2H2_A1,SPLmedio22);
Var_F2H2_A2= Var_i(F2H2_A2,SPLmedio22);
Var_F2H2_A3= Var_i(F2H2_A3,SPLmedio22);
Var_F2H2_B1= Var_i(F2H2_B1,SPLmedio22);
Var_F2H2_B2= Var_i(F2H2_B2,SPLmedio22);
Var_F2H2_B3= Var_i(F2H2_B3,SPLmedio22);
Var_F2H2_C1= Var_i(F2H2_C1,SPLmedio22);
Var_F2H2_C2= Var_i(F2H2_C2,SPLmedio22);
Var_F2H2_C3= Var_i(F2H2_C3,SPLmedio22);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%% Variabilidad para cada combinación %%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Var_combF1H1=[Var_F1H1_A1;Var_F1H1_A2;Var_F1H1_A3;Var_F1H1_B1;Var_F1H1_B2;Var_F1H1_B3;Var_F1H1_C1;Var_F1H1_C2;Var_F1H1_C3]; %9x19
Var_combF1H2=[Var_F1H2_A1;Var_F1H2_A2;Var_F1H2_A3;Var_F1H2_B1;Var_F1H2_B2;Var_F1H2_B3;Var_F1H2_C1;Var_F1H2_C2;Var_F1H2_C3];
Var_combF2H2=[Var_F2H2_A1;Var_F2H2_A2;Var_F2H2_A3;Var_F2H2_B1;Var_F2H2_B2;Var_F2H2_B3;Var_F2H2_C1;Var_F2H2_C2;Var_F2H2_C3];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%      Índice de Variabilidad        %%%%%%%%
%%%%%%       para cada combinación        %%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Ind_Var_F1H1=Ind_Var_comb(Var_combF1H1);
Ind_Var_F1H2=Ind_Var_comb(Var_combF1H2);
Ind_Var_F2H2=Ind_Var_comb(Var_combF2H2);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%% ¿Menor variabilidad de nivel? %%%%%%%%%%%%%
%%%% Representación del nivel en el punto %%%%%%%%
%%%%      y el nivel medio             %%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%      Comb. F1H1       %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 
eje_x=[63 80 100 125 160 200 250 315 400 500 630 800 1000 1250 1600 2000 2500 3150 4000];
salto=1:1:19;
% grid on, para cuadrículas. stem() para representación en barras.
figure('Name','Var comb F1H1');
subplot(3,3,1);
plot(eje_x,F1H1_A3(salto),'b',eje_x,SPLmedio11(salto),'r');
ylim([90, 145]);
title('A3');
legend('SPL(i,f)','SPLmedio');
xlabel('Frecuencia');
ylabel('Nivel dB');

subplot(3,3,2);
plot(eje_x,F1H1_B3(salto),'b',eje_x,SPLmedio11(salto),'r');
ylim([90, 145]);
title('B3');

subplot(3,3,3);
plot(eje_x,F1H1_C3(salto),'b',eje_x,SPLmedio11(salto),'r');
ylim([90, 145]);
title('C3');

subplot(3,3,4);
plot(eje_x,F1H1_A2(salto),'b',eje_x,SPLmedio11(salto),'r');
ylim([90, 145]);
title('A2');

subplot(3,3,5);
plot(eje_x,F1H1_B2(salto),'b',eje_x,SPLmedio11(salto),'r');
ylim([90, 145]);
title('B2');

subplot(3,3,6);
plot(eje_x,F1H1_C2(salto),'b',eje_x,SPLmedio11(salto),'r');
ylim([90, 145]);
title('C2');

subplot(3,3,7);
plot(eje_x,F1H1_A1(salto),'b',eje_x,SPLmedio11(salto),'r');
ylim([90, 145]);
title('A1');

subplot(3,3,8);
plot(eje_x,F1H1_B1(salto),'b',eje_x,SPLmedio11(salto),'r');
ylim([90, 145]);
title('B1');

subplot(3,3,9);
plot(eje_x,F1H1_C1(salto),'b',eje_x,SPLmedio11(salto),'r');
ylim([90, 145]);
title('C1');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%      Comb. F1H2       %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure ('Name','Var comb F1H2');
subplot(3,3,1);
plot(eje_x,F1H2_A3(salto),'b',eje_x,SPLmedio12(salto),'r');
ylim([90, 145]);
title('A3');
legend('SPL(i,f)','SPLmedio');
xlabel('Frecuencia');
ylabel('Nivel dB');

subplot(3,3,2);
plot(eje_x,F1H2_B3(salto),'b',eje_x,SPLmedio12(salto),'r');
ylim([90, 145]);
title('B3');

subplot(3,3,3);
plot(eje_x,F1H2_C3(salto),'b',eje_x,SPLmedio12(salto),'r');
ylim([90, 145]);
title('C3');

subplot(3,3,4);
plot(eje_x,F1H2_A2(salto),'b',eje_x,SPLmedio12(salto),'r');
ylim([90, 145]);
title('A2');

subplot(3,3,5);
plot(eje_x,F1H2_B2(salto),'b',eje_x,SPLmedio12(salto),'r');
ylim([90, 145]);
title('B2');

subplot(3,3,6);
plot(eje_x,F1H2_C2(salto),'b',eje_x,SPLmedio12(salto),'r');
ylim([90, 145]);
title('C2');

subplot(3,3,7);
plot(eje_x,F1H2_A1(salto),'b',eje_x,SPLmedio12(salto),'r');
ylim([90, 145]);
title('A1');

subplot(3,3,8);
plot(eje_x,F1H2_B1(salto),'b',eje_x,SPLmedio12(salto),'r');
ylim([90, 145]);
title('B1');

subplot(3,3,9);
plot(eje_x,F1H2_C1(salto),'b',eje_x,SPLmedio12(salto),'r');
ylim([90, 145]);
title('C1');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%      Comb. F2H2       %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure ('Name','Var comb F2H2');
subplot(3,3,1);
plot(eje_x,F2H2_A3(salto),'b',eje_x,SPLmedio22(salto),'r');
ylim([90, 145]);
title('A3');
legend('SPL(i,f)','SPLmedio');
xlabel('Frecuencia');
ylabel('Nivel dB');

subplot(3,3,2);
plot(eje_x,F2H2_B3(salto),'b',eje_x,SPLmedio22(salto),'r');
ylim([90, 145]);
title('B3');

subplot(3,3,3);
plot(eje_x,F2H2_C3(salto),'b',eje_x,SPLmedio22(salto),'r');
ylim([90, 145]);
title('C3');

subplot(3,3,4);
plot(eje_x,F2H2_A2(salto),'b',eje_x,SPLmedio22(salto),'r');
ylim([90, 145]);
title('A2');

subplot(3,3,5);
plot(eje_x,F2H2_B2(salto),'b',eje_x,SPLmedio22(salto),'r');
ylim([90, 145]);
title('B2');

subplot(3,3,6);
plot(eje_x,F2H2_C2(salto),'b',eje_x,SPLmedio22(salto),'r');
ylim([90, 145]);
title('C2');

subplot(3,3,7);
plot(eje_x,F2H2_A1(salto),'b',eje_x,SPLmedio22(salto),'r');
ylim([90, 145]);
title('A1');


subplot(3,3,8);
plot(eje_x,F2H2_B1(salto),'b',eje_x,SPLmedio22(salto),'r');
ylim([90, 145]);
title('B1');

subplot(3,3,9);
plot(eje_x,F2H2_C1(salto),'b',eje_x,SPLmedio22(salto),'r');
ylim([90, 145]);
title('C1');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%     MAPAS DE PRESIÓN TANQUE   %%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%% representación de todos los puntos  %%%%%%%%%%%
%%%%%% para cada comb. en función de la frecuencia  %%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Se genera un mapa para cada frecuencia para una comb. dada
%% 
x_map=[1 3]; %en verdad A,B,C
y_map=[1 3]; %4 divisiones
freqs=[63 80 100 125 160 200 250 315 400 500 630 800 1000 1250 1600 2000 2500 3150 4000];
pos_f=1:19; %vector de 19 valores, del 1 al 19, en saltos unitarios.
clims=[90 145];
%axis off; %para quitar etiquetas de los ejes en los mapas
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%      Comb. F1H1       %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure ('Name','Mapa comb F1H1');
for t=1:length(pos_f)
    F1H1_freq=[F1H1_A3(1,t) F1H1_B3(1,t) F1H1_C3(1,t); F1H1_A2(1,t) F1H1_B2(1,t) F1H1_C2(1,t); F1H1_A1(1,t) F1H1_B1(1,t) F1H1_C1(1,t)];

    subplot(4,5,t); %%para 63
    imagesc(x_map,y_map,F1H1_freq,clims);
    %%Oculto las etiquetas por defecto de los ejes en mapas colorbar
    h=gca;
    set(h,'xcolor','none');
    h.XAxis.Label.Color=[0 0 0];
    h.XAxis.Label.Visible='on';
    set(h,'ycolor','none');
    h.YAxis.Label.Color=[0 0 0];
    h.YAxis.Label.Visible='on';
    xlabel('A           B           C');
    %Ajusto próximas al eje la etiqueta del eje X
    xh=get(gca,'xlabel');
    p=get(xh,'position');
    p(2)=0.8*p(2);
    set(xh,'position',p)
    ylabel('1           2           3');
    %Ajusto próximo al eje la etiqueta del eje Y
    yh=get(gca,'ylabel');
    p=get(yh,'position');
    p(1)=0.65+p(1);
    set(yh,'position',p)
    title(sprintf('Freq. %d (Hz)',freqs(1,t)));
    colorbar;
end 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%      Comb. F1H2       %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure ('Name','Mapa comb F1H2');
for t=1:length(pos_f)
    F1H2_freq=[  F1H2_A3(1,t) F1H2_B3(1,t) F1H2_C3(1,t); F1H2_A2(1,t) F1H2_B2(1,t) F1H2_C2(1,t); F1H2_A1(1,t) F1H2_B1(1,t) F1H2_C1(1,t)];

    subplot(4,5,t); %%para 63
    imagesc(x_map,y_map,F1H2_freq,clims);
    %%Oculto las etiquetas por defecto de los ejes en mapas colorbar
    h=gca;
    set(h,'xcolor','none');
    h.XAxis.Label.Color=[0 0 0];
    h.XAxis.Label.Visible='on';
    set(h,'ycolor','none');
    h.YAxis.Label.Color=[0 0 0];
    h.YAxis.Label.Visible='on';
    xlabel('A           B           C');
    %Ajusto próximas al eje la etiqueta del eje X
    xh=get(gca,'xlabel');
    p=get(xh,'position');
    p(2)=0.8*p(2);
    set(xh,'position',p)
    ylabel('1           2           3');
    %Ajusto próximo al eje la etiqueta del eje Y
    yh=get(gca,'ylabel');
    p=get(yh,'position');
    p(1)=0.65+p(1);
    set(yh,'position',p)
    title(sprintf('Freq. %d (Hz)',freqs(1,t)));
    colorbar;
end 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%      Comb. F2H2       %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure ('Name','Mapa comb F2H2');
for t=1:length(pos_f)
    F2H2_freq=[F2H2_A3(1,t) F2H2_B3(1,t) F2H2_C3(1,t); F2H2_A2(1,t) F2H2_B2(1,t) F2H2_C2(1,t); F2H2_A1(1,t) F2H2_B1(1,t) F2H2_C1(1,t)];

    subplot(4,5,t); %%para 63
    imagesc(x_map,y_map,F2H2_freq,clims);
    %%Oculto las etiquetas por defecto de los ejes en mapas colorbar
    h=gca;
    set(h,'xcolor','none');
    h.XAxis.Label.Color=[0 0 0];
    h.XAxis.Label.Visible='on';
    set(h,'ycolor','none');
    h.YAxis.Label.Color=[0 0 0];
    h.YAxis.Label.Visible='on';
    xlabel('A           B           C');
    %Ajusto próximas al eje la etiqueta del eje X
    xh=get(gca,'xlabel');
    p=get(xh,'position');
    p(2)=0.8*p(2);
    set(xh,'position',p)
    ylabel('1           2           3');
    %Ajusto próximo al eje la etiqueta del eje Y
    yh=get(gca,'ylabel');
    p=get(yh,'position');
    p(1)=0.65+p(1);
    set(yh,'position',p)
    title(sprintf('Freq. %d (Hz)',freqs(1,t)));
    colorbar;
end 
%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%% Obtenemos la combinación   %%%%%%%%%%%
%%%%%%%%%% de menor índice de variabilidad %%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Indices_Var=[Ind_Var_F1H1 Ind_Var_F1H2 Ind_Var_F2H2];
Comb_elegida=min(Indices_Var);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%% Calculamos la              %%%%%%%%%%%
%%%%%%%%%% variación respecto al promedio  %%%%%%%
%%%%%%%%%% en dBs del SPLmedio (con signo)  %%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
PromSPLm11=sum(SPLmedio11)/19; %promedio en dBs del SPLmedio11 (19 freq.)
Valores_ecualizado=Var_ecualizacion(SPLmedio11,PromSPLm11); %Diferencia
%Redondeo de cada elemento al entero más cercano y cambio de signo para obtener la curva imagen (reflejo)
Ecualiz_Imagen=-1*round(Valores_ecualizado);
