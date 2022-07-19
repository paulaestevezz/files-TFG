%   EXTRACCIÓN DE LOS NIVELES GLOBALES EN TRAMOS DE 10 SEGUNDOS PARA CADA
%   GRABACIÓN, EXPERIMENTO Y CONTROL, ASÍ COMO SU RUIDO DE FONDO EN AMBOS
%   TANQUES.
%
%   Paula Estévez Márquez (2021)
%
%   Instrucciones: comentar y descomentar por bloques.

%% 1era Adquisición: sin ruido de fondo %%%
SPLGrabHR01_Med = wav2SPL_Global('HR01-Medida.wav');
SPLGrabHR01_Cont = wav2SPL_Global('HR01-Control.wav');
save('Tanda1.mat','SPLGrabHR01_Med', 'SPLGrabHR01_Cont'); %Para guardarla en única estructura
%save('SPLglobalHR01_Med', 'SPLGrabHR01_Med'); %Para guardarla individualmente
%save('SPLglobalHR01_Cont', 'SPLGrabHR01_Cont');
Tanda1=load('Tanda1.mat');

%% 2a Adquisición %%%
SPLGrabHR02_Med = wav2SPL_Global('HR02-Medida.wav');
SPLGrabHR02_Cont = wav2SPL_Global('HR02-Control.wav');
SPLRuidoHR02_Med = wav2SPL_Global('HR02-Med_Ruido.wav');
SPLRuidoHR02_Cont = wav2SPL_Global('HR02-Cont_Ruido.wav');
save('Tanda2.mat','SPLGrabHR02_Med', 'SPLGrabHR02_Cont','SPLRuidoHR02_Med', 'SPLRuidoHR02_Cont');
Tanda2=load('Tanda2.mat');

%% 3a Adquisición %%%
SPLGrabHR03_Med = wav2SPL_Global('HR03-Medida.wav');
SPLGrabHR03_Cont = wav2SPL_Global('HR03-Control.wav');
SPLRuidoHR03_Med = wav2SPL_Global('HR03-Med_Ruido.wav');
SPLRuidoHR03_Cont = wav2SPL_Global('HR03-Cont_Ruido.wav');
save('Tanda3.mat','SPLGrabHR03_Med', 'SPLGrabHR03_Cont','SPLRuidoHR03_Med', 'SPLRuidoHR03_Cont');
Tanda3=load('Tanda3.mat');

%% 4a Adquisición: ERROR y sin ruido de fondo %%%
SPLGrabHR04_Med = wav2SPL_Global('HR04-Medida.wav');
SPLGrabHR04_Cont = wav2SPL_Global('HR04-Control.wav');
save('Tanda4.mat','SPLGrabHR04_Med', 'SPLGrabHR04_Cont');
Tanda4=load('Tanda4.mat');

%%5a Adquisición%%%
SPLGrabHR05_Med = wav2SPL_Global('HR05-Medida.wav');
SPLGrabHR05_Cont = wav2SPL_Global('HR05-Control.wav');
SPLRuidoHR05_Med = wav2SPL_Global('HR05-Med_Ruido.wav');
SPLRuidoHR05_Cont = wav2SPL_Global('HR05-Cont_Ruido.wav');
save('Tanda5.mat','SPLGrabHR05_Med', 'SPLGrabHR05_Cont','SPLRuidoHR05_Med', 'SPLRuidoHR05_Cont');
Tanda5=load('Tanda5.mat');

%% 6a Adquisición %%%
SPLGrabHR06_Med = wav2SPL_Global('HR06-Medida.wav');
SPLGrabHR06_Cont = wav2SPL_Global('HR06-Control.wav');
SPLRuidoHR06_Med = wav2SPL_Global('HR06-Med_Ruido.wav');
SPLRuidoHR06_Cont = wav2SPL_Global('HR06-Cont_Ruido.wav');
save('Tanda6.mat','SPLGrabHR06_Med', 'SPLGrabHR06_Cont','SPLRuidoHR06_Med', 'SPLRuidoHR06_Cont');
Tanda6=load('Tanda6.mat');

%% 7a Adquisición %%%
SPLGrabHR07_Med = wav2SPL_Global('HR07-Medida.wav');
SPLGrabHR07_Cont = wav2SPL_Global('HR07-Control.wav');
SPLRuidoHR07_Med = wav2SPL_Global('HR07-Med_Ruido.wav');
SPLRuidoHR07_Cont = wav2SPL_Global('HR07-Cont_Ruido.wav');
save('Tanda7.mat','SPLGrabHR07_Med', 'SPLGrabHR07_Cont','SPLRuidoHR07_Med', 'SPLRuidoHR07_Cont');
Tanda7=load('Tanda7.mat');

%% 8a Adquisición %%%
SPLGrabHR08_Med = wav2SPL_Global('HR08-Medida.wav');
SPLGrabHR08_Cont = wav2SPL_Global('HR08-Control.wav');
SPLRuidoHR08_Med = wav2SPL_Global('HR08-Med_Ruido.wav');
SPLRuidoHR08_Cont = wav2SPL_Global('HR08-Cont_Ruido.wav');
save('Tanda8.mat','SPLGrabHR08_Med', 'SPLGrabHR08_Cont','SPLRuidoHR08_Med', 'SPLRuidoHR08_Cont');
Tanda8=load('Tanda8.mat');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%SPLglobalGrabHR08_Med=load('Tanda 8.mat', 'SPLGrabHR08_Med'); %Para cargar únicamente la variable
                                        %deseada de una estructura. Quedaría como estructura. 
%SPLglobalGrabHR08_Med=Tanda8.SPLGrabHR08_Cont;%También podría cargarla como variable
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%% REPRESENTACIÓN DE LOS DATOS EN GRÁFICAS %%%%%%%%%%%
%Tener en cuenta que el valor 1 corresponde a 10 segundos
%Por tanto, el valor 10 corresponderá a 10*10=100 segundos.
%Valor de ejeX:            0   1  2  3... 100... 290... 298  299 300(-)
%Valor de Xreal(segundos): -  10 20 30...1000...2900...2980 2982  -
%Cada grabación en segundos dura 2982 segundos (podemos despreciar los dos últimos segundos)
%Si los despreciásemos en lugar de 299, serían 298 (2980/10) valores a representar.

%%%%%   Tanda 1 %%%%%%
figure('Name','Tanda 1')
Tanda1=load('Tanda1.mat');
NT1_Med= Tanda1.SPLGrabHR01_Med; %nivel de la Tanda1
NT1_Cont= Tanda1.SPLGrabHR01_Cont;
t=1:1:299; %represento cada tramo de 10 segundos hasta el total de 299 valores
salto=1:1:299;
plot(t,NT1_Med(salto),'b',t, NT1_Cont(salto),'g') %represento el nivel de la tanda
grid on
%plot(t,señal,'DurationTickFormat','mm:ss')
xlabel('Tiempo (s)')
ylabel('SPL (dB re 1 \muPa)')
title ('Ensayo 14/10/2021')
legend('Medida Tanque de Experimento', 'Medida Tanque de Control')
legend('Location','northwest')
xlim([0, 300]) %Iría hasta 299 en verdad, podría ser [0, 299]. No empiezan los valores en 0, sino en 1.
ylim([95, 135])%axis([xmin xmax ymin ymax])
xticks(0:10:300) %29 rayas centrales
xticklabels({'0','100','200','300','400','500','600','700','800','900','1000','1100','1200','1300','1400','1500','1600','1700','1800','1900','2000','2100','2200','2300','2400','2500','2600','2700','2800','2900','3000'});

%%%%%   Tanda 2 %%%%%%
figure('Name','Tanda 2')
Tanda2=load('Tanda2.mat');
NT2_Med= Tanda2.SPLGrabHR02_Med; 
NT2_Cont= Tanda2.SPLGrabHR02_Cont;
NT2_RMedx= Tanda2.SPLRuidoHR02_Med; 
NT2_RContx= Tanda2.SPLRuidoHR02_Cont;
NT2_RMedxx= mean(NT2_RMedx); %promedio de los 3 valores
NT2_RContxx= mean(NT2_RContx);%promedio de los 3 valores
NT2_RMed(1:299)= NT2_RMedxx; %creo vector con ese valor promedio
NT2_RCont(1:299)=NT2_RContxx; %creo vector con ese valor promedio
t=1:1:299;
salto=1:1:299;
plot(t,NT2_Med(salto),'b',t, NT2_Cont(salto),'g',t,NT2_RMed,'r:',t,NT2_RCont,'k:')
grid on
%plot(t,NT2_Med(salto),'b',t, NT2_Cont(salto),'g')
xlabel('Tiempo (s)')
ylabel('SPL (dB re 1 \muPa)')
title ('Ensayo 15/10/2021')
legend('Medida Tanque de Experimento', 'Medida Tanque de Control','Ruido de fondo Tanque de Experimento','Ruido de fondo Tanque de Control') %BN es Background Noise
%legend('Grab\_Medida', 'Grab\_Control')
legend('Location','northwest')
xlim([0, 300]) 
ylim([95, 135])
xticks(0:10:300) 
xticklabels({'0','100','200','300','400','500','600','700','800','900','1000','1100','1200','1300','1400','1500','1600','1700','1800','1900','2000','2100','2200','2300','2400','2500','2600','2700','2800','2900','3000'});

%%%%%   Tanda 3 %%%%%%
figure('Name','Tanda 3')
Tanda3=load('Tanda3.mat');
NT3_Med= Tanda3.SPLGrabHR03_Med; 
NT3_Cont= Tanda3.SPLGrabHR03_Cont;
NT3_RMedx= Tanda3.SPLRuidoHR03_Med; 
NT3_RContx= Tanda3.SPLRuidoHR03_Cont;
NT3_RMedxx= mean(NT3_RMedx); 
NT3_RContxx= mean(NT3_RContx);
NT3_RMed(1:299)= NT3_RMedxx; 
NT3_RCont(1:299)=NT3_RContxx;
t=1:1:299; 
salto=1:1:299;
plot(t,NT3_Med(salto),'b',t, NT3_Cont(salto),'g',t,NT3_RMed,'r:',t,NT3_RCont,'k:') 
grid on
%plot(t,NT3_Med(salto),'b',t, NT3_Cont(salto),'g')
xlabel('Tiempo (s)')
ylabel('SPL (dB re 1 \muPa)')
title ('Ensayo 19/10/2021')
legend('Medida Tanque de Experimento', 'Medida Tanque de Control','Ruido de fondo Tanque de Experimento','Ruido de fondo Tanque de Control') %BN es Background Noise
%legend('Grab\_Medida', 'Grab\_Control')
legend('Location','northwest')
xlim([0, 300]) 
ylim([95, 135])
xticks(0:10:300) 
xticklabels({'0','100','200','300','400','500','600','700','800','900','1000','1100','1200','1300','1400','1500','1600','1700','1800','1900','2000','2100','2200','2300','2400','2500','2600','2700','2800','2900','3000'});


% %%%%%   Tanda 4 DESCARTADA%%%%%%
% figure('Name','Tanda 4')
% Tanda4=load('Tanda4.mat');
% NT4_Med= Tanda4.SPLGrabHR04_Med; 
% NT4_Cont= Tanda4.SPLGrabHR04_Cont;
% t=1:1:219; %la tanda 4 tiene menos muestras por ser más corta temporalmente
% salto=1:1:219;
% plot(t,NT4_Med(salto),'b',t, NT4_Cont(salto),'g') 
% xlabel('Tiempo (s)')
% ylabel('SPL (dB)')
% title ('Tanda 4')
% legend('Grab\_Medida', 'Grab\_Control') %BN es Background Noise
% legend('Location','northwest')
% xlim([0, 300]) 
% ylim([95, 135])
% xticks(0:10:300) 
% xticklabels({'0','100','200','300','400','500','600','700','800','900','1000','1100','1200','1300','1400','1500','1600','1700','1800','1900','2000','2100','2200','2300','2400','2500','2600','2700','2800','2900','3000'});

% %%%%%   Tanda 5 DESCARTADA %%%%%%
% figure('Name','Tanda 5')
% Tanda5=load('Tanda5.mat');
% NT5_Med= Tanda5.SPLGrabHR05_Med; 
% NT5_Cont= Tanda5.SPLGrabHR05_Cont;
% NT5_RMedx= Tanda5.SPLRuidoHR05_Med; 
% NT5_RContx= Tanda5.SPLRuidoHR05_Cont;
% NT5_RMedxx= mean(NT5_RMedx); 
% NT5_RContxx= mean(NT5_RContx);
% NT5_RMed(1:299)= NT5_RMedxx; 
% NT5_RCont(1:299)=NT5_RContxx;
% t=1:1:299; 
% salto=1:1:299;
% %plot(t,NT5_Med(salto),'b',t, NT5_Cont(salto),'g',t,NT5_RMed,'r:',t,NT5_RCont,'k:') 
% plot(t,NT5_Med(salto),'b',t, NT5_Cont(salto),'g')
% xlabel('Tiempo (s)')
% ylabel('SPL (dB)')
% title ('Tanda 5')
% %legend('Grab\_Medida', 'Grab\_Control','BN\_Medida','BN\_Control') %BN es Background Noise
% legend('Grab\_Medida', 'Grab\_Control')
% legend('Location','northwest')
% xlim([0, 300]) 
% ylim([95, 135])
% xticks(0:10:300) 
% xticklabels({'0','100','200','300','400','500','600','700','800','900','1000','1100','1200','1300','1400','1500','1600','1700','1800','1900','2000','2100','2200','2300','2400','2500','2600','2700','2800','2900','3000'});

%%%%%   Tanda 6 %%%%%%
figure('Name','Tanda 6')
Tanda6=load('Tanda6.mat');
NT6_Med= Tanda6.SPLGrabHR06_Med; 
NT6_Cont= Tanda6.SPLGrabHR06_Cont;
NT6_RMedx= Tanda6.SPLRuidoHR06_Med; 
NT6_RContx= Tanda6.SPLRuidoHR06_Cont;
NT6_RMedxx= mean(NT6_RMedx); 
NT6_RContxx= mean(NT6_RContx);
NT6_RMed(1:299)= NT6_RMedxx; 
NT6_RCont(1:299)=NT6_RContxx;
t=1:1:299; 
salto=1:1:299;
plot(t,NT6_Med(salto),'b',t, NT6_Cont(salto),'g',t,NT6_RMed,'r:',t,NT6_RCont,'k:')
grid on
%plot(t,NT6_Med(salto),'b',t, NT6_Cont(salto),'g')
xlabel('Tiempo (s)')
ylabel('SPL (dB re 1 \muPa)')
title ('Ensayo 22/10/2021')
legend('Medida Tanque de Experimento', 'Medida Tanque de Control','Ruido de fondo Tanque de Experimento','Ruido de fondo Tanque de Control') %BN es Background Noise
%legend('Grab\_Medida', 'Grab\_Control')
legend('Location','northwest')
xlim([0, 300]) 
ylim([95, 135])
xticks(0:10:300) 
xticklabels({'0','100','200','300','400','500','600','700','800','900','1000','1100','1200','1300','1400','1500','1600','1700','1800','1900','2000','2100','2200','2300','2400','2500','2600','2700','2800','2900','3000'});

%%%%%   Tanda 7 %%%%%%
figure('Name','Tanda 7')
Tanda7=load('Tanda7.mat');
NT7_Med= Tanda7.SPLGrabHR07_Med; 
NT7_Cont= Tanda7.SPLGrabHR07_Cont;
NT7_RMedx= Tanda7.SPLRuidoHR07_Med; 
NT7_RContx= Tanda7.SPLRuidoHR07_Cont;
NT7_RMedxx= mean(NT7_RMedx); 
NT7_RContxx= mean(NT7_RContx);
NT7_RMed(1:299)= NT7_RMedxx; 
NT7_RCont(1:299)=NT7_RContxx;
t=1:1:299; 
salto=1:1:299;
plot(t,NT7_Med(salto),'b',t, NT7_Cont(salto),'g',t,NT7_RMed,'r:',t,NT7_RCont,'k:')
grid on
%plot(t,NT7_Med(salto),'b',t, NT7_Cont(salto),'g')
xlabel('Tiempo (s)')
ylabel('SPL (dB re 1 \muPa)')
title ('Ensayo 26/10/2021')
legend('Medida Tanque de Experimento', 'Medida Tanque de Control','Ruido de fondo Tanque de Experimento','Ruido de fondo Tanque de Control') %BN es Background Noise
%legend('Grab\_Medida', 'Grab\_Control')
legend('Location','northwest')
xlim([0, 300]) 
ylim([95, 135])
xticks(0:10:300) 
xticklabels({'0','100','200','300','400','500','600','700','800','900','1000','1100','1200','1300','1400','1500','1600','1700','1800','1900','2000','2100','2200','2300','2400','2500','2600','2700','2800','2900','3000'});

%%%%%   Tanda 8 %%%%%%
figure('Name','Tanda 8')
Tanda8=load('Tanda8.mat');
NT8_Med= Tanda8.SPLGrabHR08_Med; 
NT8_Cont= Tanda8.SPLGrabHR08_Cont;
NT8_RMedx= Tanda8.SPLRuidoHR08_Med; 
NT8_RContx= Tanda8.SPLRuidoHR08_Cont;
NT8_RMedxx= mean(NT8_RMedx); 
NT8_RContxx= mean(NT8_RContx);
NT8_RMed(1:299)= NT8_RMedxx; 
NT8_RCont(1:299)=NT8_RContxx;
t=1:1:299; 
salto=1:1:299;
plot(t,NT8_Med(salto),'b',t, NT8_Cont(salto),'g',t,NT8_RMed,'r:',t,NT8_RCont,'k:') 
grid on
%plot(t,NT8_Med(salto),'b',t, NT8_Cont(salto),'g')
xlabel('Tiempo (s)')
ylabel('SPL (dB re 1 \muPa)')
title ('Ensayo 27/10/2021')
legend('Medida Tanque de Experimento', 'Medida Tanque de Control','Ruido de fondo Tanque de Experimento','Ruido de fondo Tanque de Control') %BN es Background Noise
%legend('Grab\_Medida', 'Grab\_Control')
legend('Location','northwest')
xlim([0, 300]) 
ylim([95, 135])
xticks(0:10:300) 
xticklabels({'0','100','200','300','400','500','600','700','800','900','1000','1100','1200','1300','1400','1500','1600','1700','1800','1900','2000','2100','2200','2300','2400','2500','2600','2700','2800','2900','3000'});
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%Si quisiera representar los datos de background noise
% %%%%%   Tanda 2 %%%%%%
% figure('Name','Tanda 2')
% Tanda2=load('Tanda2.mat');
% NT2_Med= Tanda2.SPLGrabHR02_Med; 
% NT2_Cont= Tanda2.SPLGrabHR02_Cont;
% NT2_RMed= Tanda2.SPLRuidoHR02_Med; 
% NT2_RCont= Tanda2.SPLRuidoHR02_Cont;
% t=1:1:299;
% r=1:1:3;
% salto=1:1:299;
% plot(t,NT2_Med(salto),'b',t, NT2_Cont(salto),'g',r,NT2_RMed,'r:',r,NT2_RCont,'y:') 
% xlabel('Tiempo (s)')
% ylabel('SPL (dB)')
% title ('Tanda 2')
% legend('Grab\_Medida', 'Grab\_Control','BN\_Medida','BN\_Control') %BN es Background Noise
% xlim([0, 300]) 
% ylim([95, 135])
% xticks(0:10:300) 
% xticklabels({'0','100','200','300','400','500','600','700','800','900','1000','1100','1200','1300','1400','1500','1600','1700','1800','1900','2000','2100','2200','2300','2400','2500','2600','2700','2800','2900','3000'});