%   Cálculo de nivel SPL constante por escalones (10 escalones de duración 298.2 segundos) de cada grabación.
%
%   Paula Estévez Márquez (2021)
%
%   EXTRACCIÓN DE LOS NIVELES GLOBALES EN TRAMOS DE 298.2 SEGUNDOS PARA CADA
%   GRABACIÓN ADQUIRIDA EN EL TANQUE DE EXPERIMENTO
%   Instrucciones: comentar y descomentar por bloques (la ejecución de cada bloque tiene una duración considerable)

%% 1era Adquisición: DÍA 1 %%%
SPL_Tanda1_d14_Exp = wav2SPL_Global_Steps('HR01-Medida.wav');
save('SPL_Tanda1_d14_Exp.mat','SPL_Tanda1_d14_Exp'); 

%% 2a Adquisición: DÍA 2 %%%
SPL_Tanda2_d15_Exp = wav2SPL_Global_Steps('HR02-Medida.wav');
save('SPL_Tanda2_d15_Exp.mat','SPL_Tanda2_d15_Exp');

%% 3a Adquisición: DÍA 3 %%%
SPL_Tanda3_d19_Exp = wav2SPL_Global_Steps('HR03-Medida.wav');
save('SPL_Tanda3_d19_Exp.mat','SPL_Tanda3_d19_Exp');

%% 6a Adquisición: DÍA 6 %%%
SPL_Tanda6_d22_Exp = wav2SPL_Global_Steps('HR06-Medida.wav');
save('SPL_Tanda6_d22_Exp.mat','SPL_Tanda6_d22_Exp');

%% 7a Adquisición: DÍA 7 %%%
SPL_Tanda7_d26_Exp = wav2SPL_Global_Steps('HR07-Medida.wav');
save('SPL_Tanda7_d26_Exp.mat','SPL_Tanda7_d26_Exp');

%% 8a Adquisición: DÍA 8 %%%
SPL_Tanda8_d27_Exp = wav2SPL_Global_Steps('HR08-Medida.wav');
save('SPL_Tanda8_d27_Exp.mat','SPL_Tanda8_d27_Exp');

%%%%%%%%%%% REPRESENTACIÓN DE LOS DATOS EN GRÁFICAS %%%%%%%%%%%
%Tener en cuenta que el valor 1 corresponde a 298.2 segundos
%Por tanto, el valor 10 corresponderá a 10*298.2=2982 segundos.
%Valor de ejeX:            0    1       2     3     4      5      6       7       8        9      10   
%Valor de Xreal(segundos): -  298.2  596.4  894.6 1192.8  1491  1789.2  2087.4  2385.6   2683.8  2982
%Cada grabación en segundos dura 2982 segundos 

%%%%%   Tanda 1 %%%%%%
figure('Name','Tanda 1')
load('SPL_Tanda1_d14_Exp.mat');
NE_T1_Exp= SPL_Tanda1_d14_Exp; %niveles por escalón de la Tanda1 (Step Level)
t=0:1:10; %represento cada escalón de aproximadamente 5 minutos hasta el total de 10 escalones
vectorT1=zeros(1,length(t));
vectorT1=[NE_T1_Exp NE_T1_Exp(10)];
stairs(t,vectorT1,'-.or')
grid on
% stairs(t,NE_T1_Exp,'-.or')
% hold on
% plot(t,NE_T1_Exp,'b') %represento el nivel de la tanda
% hold off
%xlabel('Escalones de la grabación')
xlabel('Tiempo (min)')
ylabel('SPL (dB re 1 \muPa)')
title ('Ensayo 14/10/2021')
legend('Nivel de ruido')
legend('Location','northwest')
xlim([0,10])
ylim([95, 135])%axis([xmin xmax ymin ymax])
%yticks(95:5:135)
xticks(0:1:10) %Tengo 10 valores. 9 marcas + inicio + fin %xticks(0:298.2:2982)
%xticklabels({'N1','N2','N3','N4','N5','N6','N7','N8','N9','N10','Fin'});
xticklabels({'0','5','10','15','20','25','30','35','40','45','50'});

%%%%%   Tanda 2 %%%%%%
figure('Name','Tanda 2')
load('SPL_Tanda2_d15_Exp.mat');
NE_T2_Exp=SPL_Tanda2_d15_Exp;
t=0:1:10; 
vectorT2=zeros(1,length(t));
vectorT2=[NE_T2_Exp NE_T2_Exp(10)];
stairs(t,vectorT2,'-.or')
grid on
%xlabel('Escalones de la grabación')
xlabel('Tiempo (min)')
ylabel('SPL (dB re 1 \muPa)')
title ('Ensayo 15/10/2021')
legend('Nivel de ruido')
legend('Location','northwest')
xlim([0,10])
ylim([95, 135])
%yticks(95:5:135)
xticks(0:1:10) 
%xticklabels({'N1','N2','N3','N4','N5','N6','N7','N8','N9','N10','Fin'});
xticklabels({'0','5','10','15','20','25','30','35','40','45','50'});

%%%%%   Tanda 3 %%%%%%
figure('Name','Tanda 3')
load('SPL_Tanda3_d19_Exp.mat');
NE_T3_Exp=SPL_Tanda3_d19_Exp;
t=0:1:10; 
vectorT3=zeros(1,length(t));
vectorT3=[NE_T3_Exp NE_T3_Exp(10)];
stairs(t,vectorT3,'-.or')
grid on
%xlabel('Escalones de la grabación')
xlabel('Tiempo (min)')
ylabel('SPL (dB re 1 \muPa)')
title ('Ensayo 19/10/2021')
legend('Nivel de ruido')
legend('Location','northwest')
xlim([0,10])
ylim([95, 135])
%yticks(95:5:135)
xticks(0:1:10) 
%xticklabels({'N1','N2','N3','N4','N5','N6','N7','N8','N9','N10','Fin'});
xticklabels({'0','5','10','15','20','25','30','35','40','45','50'});


%%%%%   Tanda 6 %%%%%%
figure('Name','Tanda 6')
load('SPL_Tanda6_d22_Exp.mat');
NE_T6_Exp=SPL_Tanda6_d22_Exp;
t=0:1:10; 
vectorT6=zeros(1,length(t));
vectorT6=[NE_T6_Exp NE_T6_Exp(10)];
stairs(t,vectorT6,'-.or')
grid on
%xlabel('Escalones de la grabación')
xlabel('Tiempo (min)')
ylabel('SPL (dB re 1 \muPa)')
title ('Ensayo 22/10/2021')
legend('Nivel de ruido')
legend('Location','northwest')
xlim([0,10])
ylim([95, 135])
%yticks(95:5:135)
xticks(0:1:10) 
%xticklabels({'N1','N2','N3','N4','N5','N6','N7','N8','N9','N10','Fin'});
xticklabels({'0','5','10','15','20','25','30','35','40','45','50'});

%%%%%   Tanda 7 %%%%%%
figure('Name','Tanda 7')
load('SPL_Tanda7_d26_Exp.mat');
NE_T7_Exp=SPL_Tanda7_d26_Exp;
t=0:1:10; 
vectorT7=zeros(1,length(t));
vectorT7=[NE_T7_Exp NE_T7_Exp(10)];
stairs(t,vectorT7,'-.or')
grid on
%xlabel('Escalones de la grabación')
xlabel('Tiempo (min)')
ylabel('SPL (dB re 1 \muPa)')
title ('Ensayo 26/10/2021')
legend('Nivel de ruido')
legend('Location','northwest')
xlim([0,10])
ylim([95, 135])
%yticks(95:5:135)
xticks(0:1:10) 
%xticklabels({'N1','N2','N3','N4','N5','N6','N7','N8','N9','N10','Fin'});
xticklabels({'0','5','10','15','20','25','30','35','40','45','50'});

%%%%%   Tanda 8 %%%%%%
figure('Name','Tanda 8')
load('SPL_Tanda8_d27_Exp.mat');
NE_T8_Exp=SPL_Tanda8_d27_Exp;
t=0:1:10; 
vectorT8=zeros(1,length(t));
vectorT8=[NE_T8_Exp NE_T8_Exp(10)];
stairs(t,vectorT8,'-.or')
grid on
%xlabel('Escalones de la grabación')
xlabel('Tiempo (min)')
ylabel('SPL (dB re 1 \muPa)')
title ('Ensayo 27/10/2021')
legend('Nivel de ruido')
legend('Location','northwest')
xlim([0,10])
ylim([95, 135])
%yticks(95:5:135)
xticks(0:1:10) 
%xticklabels({'N1','N2','N3','N4','N5','N6','N7','N8','N9','N10','Fin'});
xticklabels({'0','5','10','15','20','25','30','35','40','45','50'});
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%