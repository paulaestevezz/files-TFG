%%Script para la representaci�n de los datos de valvometr�a.
%
%%Paula Est�vez M�rquez (2022)

%%REPRESENTACI�N DE LOS DATOS DE VALVOMETR�A EN SINCRONIZACI�N CON LOS
%%NIVELES DE RUIDO A LOS QUE EST�N SIENDO EXPUESTOS
%%CARGAMOS LOS DATOS A REPRESENTAR
%COM3
load('Dia14_C1.mat'); load('Dia14_C2.mat'); load('Dia14_C3.mat');load('Dia14_C4.mat'); load('Dia14_C5.mat'); 
load('Dia14_C6.mat');load('Dia14_C7.mat'); load('Dia14_C8.mat');load('Dia14_C11.mat');load('Dia14_C12.mat');
load('Dia15_C9.mat');
%%COM4
load('Dia15_D6.mat');load('Dia15_D7.mat');load('Dia15_D8.mat');load('Dia22_D6.mat');load('Dia22_D7.mat');
load('Dia22_D8.mat');load('Dia26_D10.mat');load('Dia27_D1.mat');load('Dia27_D3.mat');load('Dia27_D4.mat');
load('Dia27_D11.mat');load('Dia27_D12.mat');
%%COM5
load('Dia15_E5.mat');load('Dia15_E7.mat');load('Dia15_E8.mat');load('Dia15_E9.mat');load('Dia15_E10.mat');
load('Dia19_E1.mat');load('Dia19_E2.mat');load('Dia19_E3.mat');load('Dia19_E4.mat');load('Dia19_E11.mat');
load('Dia22_E5.mat');load('Dia22_E8.mat');load('Dia22_E9.mat');load('Dia22_E10.mat');load('Dia26_E1.mat');
load('Dia26_E3.mat');load('Dia26_E4.mat');load('Dia26_E11.mat');
%%COM6
load('Dia19_F1.mat');load('Dia19_F2.mat');load('Dia19_F3.mat');load('Dia19_F5.mat');load('Dia19_F6.mat');
load('Dia26_F1.mat');load('Dia26_F2.mat');load('Dia26_F3.mat');load('Dia26_F5.mat');load('Dia26_F6.mat');
load('Dia27_F10.mat');load('Dia27_F11.mat');load('Dia27_F12.mat');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% REPRESENTACI�N DE LOS DATOS DE INTER�S por tramo de experimento %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% D�A 1 (14/10/2021) 09:18:06-10:07:47(48) %%%%%%
%%% Experimento: C1, C2, C3, C4, C11.%%%%%%%%%%%%%%
%%% Control: C5, C6, C7, C8, C12.%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure('Name','Exp vs Control D�a 1: 14/10/2021')

subplot(2,1,1); %EXPERIMENTO
t=1:1:2982; %49 min y 42 segundos son 2982 segundos
%yyaxis left  %produce una l�nea negra extra�a en la representaci�n y
%realmente no es necesaria. Creo que es por introducir todas las gr�ficas
%al mismo eje de golpe
plot(t,RemCOM3_Dia14_C1,'r',t,RemCOM3_Dia14_C2,'g',t,RemCOM3_Dia14_C3,'b',t,RemCOM3_Dia14_C4,'c',t,RemCOM3_Dia14_C11,'k');
grid on
title('Experimento 14/10/2021')
xlabel('Tiempo (min)')
ylabel('Abertura de valva (%)')
xlim([0, 2982]) 
ylim([0, 100])
yticks(0:10:100)
xticks(0:298.2:2982) % 298.2 CAMBIO DE NIVEL
xticklabels({'0','5','10','15','20','25','30','35','40','45','50'});
legend('Location','northeastoutside') 
hold on;%PARA REPRESENTACI�N ESCALONES
load('SPL_Tanda1_d14_Exp.mat');
StepsDia14_Exp= SPL_Tanda1_d14_Exp; %niveles por escal�n de la Tanda1 (Step Level)
r=1:1:11; %represento cada escal�n de aproximadamente 5 minutos hasta el total de 10 escalones
StepsDia14=zeros(1,length(r));        %alargo una posici�n el array para 
StepsDia14=[StepsDia14_Exp StepsDia14_Exp(10)]; %hacer m�s visual el �ltimo escal�n
s=0:298.2:2982;%cada 298.2 valores -->
salto=1:1:length(StepsDia14); %--> pintar� un valor de este array
yyaxis right %en el eje derecho dibujo los escalones de nivel
stairs(s,StepsDia14(salto),'-.oy','LineWidth',2) %con diamante: '-.dy' con punto relleno: '-.*y' con punto abierto: '-.oy'
legend('Mejill�n C1', 'Mejill�n C2','Mejill�n C3', 'Mejill�n C4','Mejill�n C11','Nivel de ruido');
% lgd=legend;
% title(lgd,'Leyenda');
% lgd.Title.FontSize=11;
ylim([95, 135])
ylabel('SPL (dB re 1 \muPa)')
hold off; %termino representaci�n ESCALONES

subplot(2,1,2); %CONTROL
plot(t,RemCOM3_Dia14_C5,'r',t,RemCOM3_Dia14_C6,'g',t,RemCOM3_Dia14_C7,'b',t,RemCOM3_Dia14_C8,'c',t,RemCOM3_Dia14_C12,'k');
grid on
title('Control 14/10/2021')
xlabel('Tiempo (min)')
ylabel('Abertura de valva (%)')
xlim([0, 2982]) 
ylim([0, 100])
yticks(0:10:100)
xticks(0:298.2:2982) %298 � 298.2
xticklabels({'0','5','10','15','20','25','30','35','40','45','50'});
legend('Mejill�n C5', 'Mejill�n C6','Mejill�n C7', 'Mejill�n C8','Mejill�n C12')
legend('Location','northeastoutside')
% lgd2=legend;
% title(lgd2,'Leyenda');
% lgd2.Title.FontSize=11;
% yyaxis right
% ylim([95, 135])
% ylabel('SPL(dB)')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% D�A 2(15/10/2021) 07:44:12-08:33:53(54) %%%%%%%
%%% Experimento: C9, -D5-, D6, D7, D8.%%%%%%%%%%%%%
%%% Control: E5, E7, E8, E9, E10.%%%%%%%%%%%%%%%%%%
%%% no funcionan: D5.       %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure('Name','Exp vs Control D�a 2: 15/10/2021')

subplot(2,1,1); %EXPERIMENTO
t=1:1:2982; %49 min y 42 segundos son 2982 segundos.
plot(t,RemCOM3_Dia15_C9,'r',t,RemCOM4_Dia15_D6,'g',t,RemCOM4_Dia15_D7,'b',t,RemCOM4_Dia15_D8,'c');
grid on
title('Experimento 15/10/2021')
xlabel('Tiempo (min)')
ylabel('Abertura de valva (%)')
xlim([0, 2982]) 
ylim([0, 100])
yticks(0:10:100)
xticks(0:298.2:2982) 
xticklabels({'0','5','10','15','20','25','30','35','40','45','50'});
legend('Location','northeastoutside')
hold on;
load('SPL_Tanda2_d15_Exp.mat');
StepsDia15_Exp= SPL_Tanda2_d15_Exp;
r=1:1:11; 
StepsDia15=zeros(1,length(r));       
StepsDia15=[StepsDia15_Exp StepsDia15_Exp(10)]; 
s=0:298.2:2982;
salto=1:1:length(StepsDia15); 
yyaxis right 
stairs(s,StepsDia15(salto),'-.oy','LineWidth',2)
legend('Mejill�n C9', 'Mejill�n D6','Mejill�n D7', 'Mejill�n D8','Nivel de ruido');
ylim([95, 135])
ylabel('SPL (dB re 1 \muPa)')
hold off; 

subplot(2,1,2); %CONTROL
plot(t,RemCOM5_Dia15_E5,'r',t,RemCOM5_Dia15_E7,'g',t,RemCOM5_Dia15_E8,'b',t,RemCOM5_Dia15_E9,'c',t,RemCOM5_Dia15_E10,'k');
grid on
title('Control 15/10/2021')
xlabel('Tiempo (min)')
ylabel('Abertura de valva (%)')
xlim([0, 2982]) 
ylim([0, 100])
yticks(0:10:100)
xticks(0:298.2:2982) 
xticklabels({'0','5','10','15','20','25','30','35','40','45','50'});
legend('Mejill�n E5', 'Mejill�n E7','Mejill�n E8', 'Mejill�n E9','Mejill�n E10')
legend('Location','northeastoutside')
% yyaxis right
% ylim([95, 135])
% ylabel('SPL(dB)')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% D�a 3 (19/10/2021) 08:18:12-09:07:53(54) %%%%%%
%%% Experimento: E1, E2, E3, E4, E11.  %%%%%%%%%%%%
%%% Control: F1, F2, F3, F5, F6. %%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure('Name','Exp vs Control D�a 3: 19/10/2021')

subplot(2,1,1); %EXPERIMENTO
plot(t,RemCOM5_Dia19_E1,'r',t,RemCOM5_Dia19_E2,'g',t,RemCOM5_Dia19_E3,'b',t,RemCOM5_Dia19_E4,'c',t,RemCOM5_Dia19_E11,'k');
grid on
title('Experimento 19/10/2021')
xlabel('Tiempo (min)')
ylabel('Abertura de valva (%)')
xlim([0, 2982]) 
ylim([0, 100])
yticks(0:10:100)
xticks(0:298.2:2982) 
xticklabels({'0','5','10','15','20','25','30','35','40','45','50'});
legend('Location','northeastoutside')
hold on;
load('SPL_Tanda3_d19_Exp.mat');
StepsDia19_Exp= SPL_Tanda3_d19_Exp;
r=1:1:11; 
StepsDia19=zeros(1,length(r));       
StepsDia19=[StepsDia19_Exp StepsDia19_Exp(10)]; 
s=0:298.2:2982;
salto=1:1:length(StepsDia19); 
yyaxis right 
stairs(s,StepsDia19(salto),'-.oy','LineWidth',2)
legend('Mejill�n E1', 'Mejill�n E2','Mejill�n E3','Mejill�n E4', 'Mejill�n E11','Nivel de ruido');
ylim([95, 135])
ylabel('SPL (dB re 1 \muPa)')
hold off; 

subplot(2,1,2); %CONTROL
plot(t,RemCOM6_Dia19_F1,'r',t,RemCOM6_Dia19_F2,'g',t,RemCOM6_Dia19_F3,'b',t,RemCOM6_Dia19_F5,'c',t,RemCOM6_Dia19_F6,'k');
grid on
title('Control 19/10/2021')
xlabel('Tiempo (min)')
ylabel('Abertura de valva (%)')
xlim([0, 2982]) 
ylim([0, 100])
yticks(0:10:100)
xticks(0:298.2:2982) 
xticklabels({'0','5','10','15','20','25','30','35','40','45','50'});
legend('Mejill�n F1', 'Mejill�n F2','Mejill�n F3', 'Mejill�n F5','Mejill�n F6')
legend('Location','northeastoutside')
% yyaxis right
% ylim([95, 135])
% ylabel('SPL(dB)')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% D�a 6 (22/10/2021) 08:42:45-09:32:26(27) %%%%%%
%%% Experimento: E5, -E7-, E8, E9, E10.%%%%%%%%%%%%
%%% Control: -C9-, -D5-, D6, D7, D8.%%%%%%%%%%%%%%%
%%% no funcionan: C9, D5, E7.%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure('Name','Exp vs Control D�a 6: 22/10/2021')

subplot(2,1,1); %EXPERIMENTO
plot(t,RemCOM5_Dia22_E5,'r',t,RemCOM5_Dia22_E8,'g',t,RemCOM5_Dia22_E9,'b',t,RemCOM5_Dia22_E10,'c');
grid on
title('Experimento 22/10/2021')
xlabel('Tiempo (min)')
ylabel('Abertura de valva (%)')
xlim([0, 2982]) 
ylim([0, 100])
yticks(0:10:100)
xticks(0:298.2:2982) 
xticklabels({'0','5','10','15','20','25','30','35','40','45','50'});
legend('Location','northeastoutside') 
hold on;
load('SPL_Tanda6_d22_Exp.mat');
StepsDia22_Exp= SPL_Tanda6_d22_Exp;
r=1:1:11; 
StepsDia22=zeros(1,length(r));       
StepsDia22=[StepsDia22_Exp StepsDia22_Exp(10)]; 
s=0:298.2:2982;
salto=1:1:length(StepsDia22); 
yyaxis right 
stairs(s,StepsDia22(salto),'-.oy','LineWidth',2)
legend('Mejill�n E5','Mejill�n E8','Mejill�n E9','Mejill�n E10','Nivel de ruido');
ylim([95, 135])
ylabel('SPL (dB re 1 \muPa)')
hold off; 

subplot(2,1,2); %CONTROL
plot(t,RemCOM4_Dia22_D6,'r',t,RemCOM4_Dia22_D7,'g',t,RemCOM4_Dia22_D8,'b');
grid on
title('Control 22/10/2021')
xlabel('Tiempo (min)')
ylabel('Abertura de valva (%)')
xlim([0, 2982]) 
ylim([0, 100])
yticks(0:10:100)
xticks(0:298.2:2982) 
xticklabels({'0','5','10','15','20','25','30','35','40','45','50'});
legend('Mejill�n D6','Mejill�n D7','Mejill�n D8')
legend('Location','northeastoutside')
% yyaxis right
% ylim([95, 135])
% ylabel('SPL(dB)')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% D�a 7 (26/10/2021) 08:22:35-09:12:15(16) %%%%%%
%%% Experimento: F1, F2, F3, F5, F6. %%%%%%%%%%%%%%
%%% Control: D10, E1, E3, E4, E11.  %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure('Name','Exp vs Control D�a 7: 26/10/2021')

subplot(2,1,1); %EXPERIMENTO
plot(t,RemCOM6_Dia26_F1,'r',t,RemCOM6_Dia26_F2,'g',t,RemCOM6_Dia26_F3,'b',t,RemCOM6_Dia26_F5,'c',t,RemCOM6_Dia26_F6,'k');
grid on
title('Experimento 26/10/2021')
xlabel('Tiempo (min)')
ylabel('Abertura de valva (%)')
xlim([0, 2982]) 
ylim([0, 100])
yticks(0:10:100)
xticks(0:298.2:2982) 
xticklabels({'0','5','10','15','20','25','30','35','40','45','50'});
legend('Location','northeastoutside')
hold on;
load('SPL_Tanda7_d26_Exp.mat');
StepsDia26_Exp= SPL_Tanda7_d26_Exp;
r=1:1:11; 
StepsDia26=zeros(1,length(r));       
StepsDia26=[StepsDia26_Exp StepsDia26_Exp(10)]; 
s=0:298.2:2982;
salto=1:1:length(StepsDia26); 
yyaxis right 
stairs(s,StepsDia26(salto),'-.oy','LineWidth',2)
legend('Mejill�n F1','Mejill�n F2','Mejill�n F3','Mejill�n F5','Mejill�n F6','Nivel de ruido');
ylim([95, 135])
ylabel('SPL (dB re 1 \muPa)')
hold off;

subplot(2,1,2); %CONTROL
plot(t,RemCOM4_Dia26_D10,'r',t,RemCOM5_Dia26_E1,'g',t,RemCOM5_Dia26_E3,'b',t,RemCOM5_Dia26_E4,'c',t,RemCOM5_Dia26_E11,'k');
grid on
title('Control 26/10/2021')
xlabel('Tiempo (min)')
ylabel('Abertura de valva (%)')
xlim([0, 2982]) 
ylim([0, 100])
yticks(0:10:100)
xticks(0:298.2:2982) 
xticklabels({'0','5','10','15','20','25','30','35','40','45','50'});
legend('Mejill�n D10', 'Mejill�n E1','Mejill�n E3','Mejill�n E4','Mejill�n E11')
legend('Location','northeastoutside')
% yyaxis right
% ylim([95, 135])
% ylabel('SPL(dB)')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% D�a 8 (27/10/2021) 08:17:06-09:06:47(48) %%%%%%
%%% Experimento: D12, -F9-, F10, F11, F12.%%%%%%%%%
%%% Control: D1, D3, D4, D11.    %%%%%%%%%%%%%%%%%%
%%% no funcionan: F9.       %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure('Name','Exp vs Control D�a 8: 27/10/2021')

subplot(2,1,1); %EXPERIMENTO
plot(t,RemCOM4_Dia27_D12,'r',t,RemCOM6_Dia27_F10,'g',t,RemCOM6_Dia27_F11,'b',t,RemCOM6_Dia27_F12,'c');
grid on
title('Experimento 27/10/2021')
xlabel('Tiempo (min)')
ylabel('Abertura de valva (%)')
xlim([0, 2982]) 
ylim([0, 100])
yticks(0:10:100)
xticks(0:298.2:2982) 
xticklabels({'0','5','10','15','20','25','30','35','40','45','50'});
legend('Location','northeastoutside') 
hold on;
load('SPL_Tanda8_d27_Exp.mat');
StepsDia27_Exp= SPL_Tanda8_d27_Exp;
r=1:1:11; 
StepsDia27=zeros(1,length(r));       
StepsDia27=[StepsDia27_Exp StepsDia27_Exp(10)]; 
s=0:298.2:2982;
salto=1:1:length(StepsDia27); 
yyaxis right 
stairs(s,StepsDia27(salto),'-.oy','LineWidth',2)
legend('Mejill�n D12','Mejill�n F10','Mejill�n F11','Mejill�n F12','Nivel de ruido');
ylim([95, 135])
ylabel('SPL (dB re 1 \muPa)')
hold off;

subplot(2,1,2); %CONTROL
plot(t,RemCOM4_Dia27_D1,'r',t,RemCOM4_Dia27_D3,'g',t,RemCOM4_Dia27_D4,'b',t,RemCOM4_Dia27_D11,'c');
grid on
title('Control 27/10/2021')
xlabel('Tiempo (min)')
ylabel('Abertura de valva (%)')
xlim([0, 2982]) 
ylim([0, 100])
yticks(0:10:100)
xticks(0:298.2:2982) 
xticklabels({'0','5','10','15','20','25','30','35','40','45','50'});
legend('Mejill�n D1', 'Mejill�n D3','Mejill�n D4', 'Mejill�n D11')
legend('Location','northeastoutside')
% yyaxis right
% ylim([95, 135])
% ylabel('SPL(dB)')
