%%Script para la representación de los datos de valvometría.
%
%%Paula Estévez Márquez (2022)

%%REPRESENTACIÓN DE LOS DATOS DE VALVOMETRÍA EN SINCRONIZACIÓN CON LOS
%%NIVELES DE RUIDO A LOS QUE ESTÁN SIENDO EXPUESTOS
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
%%% REPRESENTACIÓN DE LOS DATOS DE INTERÉS por tramo de experimento %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% DÍA 1 (14/10/2021) 09:18:06-10:07:47(48) %%%%%%
%%% Experimento: C1, C2, C3, C4, C11.%%%%%%%%%%%%%%
%%% Control: C5, C6, C7, C8, C12.%%%%%%%%%%%%%%%%%% 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure('Name','Exp vs Control Día 1: 14/10/2021')

subplot(2,1,1); %EXPERIMENTO
t=1:1:2982; %49 min y 42 segundos son 2982 segundos
%yyaxis left  %produce una línea negra extraña en la representación y
%realmente no es necesaria. Creo que es por introducir todas las gráficas
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
hold on;%PARA REPRESENTACIÓN ESCALONES
load('SPL_Tanda1_d14_Exp.mat');
StepsDia14_Exp= SPL_Tanda1_d14_Exp; %niveles por escalón de la Tanda1 (Step Level)
r=1:1:11; %represento cada escalón de aproximadamente 5 minutos hasta el total de 10 escalones
StepsDia14=zeros(1,length(r));        %alargo una posición el array para 
StepsDia14=[StepsDia14_Exp StepsDia14_Exp(10)]; %hacer más visual el último escalón
s=0:298.2:2982;%cada 298.2 valores -->
salto=1:1:length(StepsDia14); %--> pintaré un valor de este array
yyaxis right %en el eje derecho dibujo los escalones de nivel
stairs(s,StepsDia14(salto),'-.oy','LineWidth',2) %con diamante: '-.dy' con punto relleno: '-.*y' con punto abierto: '-.oy'
legend('Mejillón C1', 'Mejillón C2','Mejillón C3', 'Mejillón C4','Mejillón C11','Nivel de ruido');
% lgd=legend;
% title(lgd,'Leyenda');
% lgd.Title.FontSize=11;
ylim([95, 135])
ylabel('SPL (dB re 1 \muPa)')
hold off; %termino representación ESCALONES

subplot(2,1,2); %CONTROL
plot(t,RemCOM3_Dia14_C5,'r',t,RemCOM3_Dia14_C6,'g',t,RemCOM3_Dia14_C7,'b',t,RemCOM3_Dia14_C8,'c',t,RemCOM3_Dia14_C12,'k');
grid on
title('Control 14/10/2021')
xlabel('Tiempo (min)')
ylabel('Abertura de valva (%)')
xlim([0, 2982]) 
ylim([0, 100])
yticks(0:10:100)
xticks(0:298.2:2982) %298 ó 298.2
xticklabels({'0','5','10','15','20','25','30','35','40','45','50'});
legend('Mejillón C5', 'Mejillón C6','Mejillón C7', 'Mejillón C8','Mejillón C12')
legend('Location','northeastoutside')
% lgd2=legend;
% title(lgd2,'Leyenda');
% lgd2.Title.FontSize=11;
% yyaxis right
% ylim([95, 135])
% ylabel('SPL(dB)')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% DÍA 2(15/10/2021) 07:44:12-08:33:53(54) %%%%%%%
%%% Experimento: C9, -D5-, D6, D7, D8.%%%%%%%%%%%%%
%%% Control: E5, E7, E8, E9, E10.%%%%%%%%%%%%%%%%%%
%%% no funcionan: D5.       %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure('Name','Exp vs Control Día 2: 15/10/2021')

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
legend('Mejillón C9', 'Mejillón D6','Mejillón D7', 'Mejillón D8','Nivel de ruido');
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
legend('Mejillón E5', 'Mejillón E7','Mejillón E8', 'Mejillón E9','Mejillón E10')
legend('Location','northeastoutside')
% yyaxis right
% ylim([95, 135])
% ylabel('SPL(dB)')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Día 3 (19/10/2021) 08:18:12-09:07:53(54) %%%%%%
%%% Experimento: E1, E2, E3, E4, E11.  %%%%%%%%%%%%
%%% Control: F1, F2, F3, F5, F6. %%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure('Name','Exp vs Control Día 3: 19/10/2021')

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
legend('Mejillón E1', 'Mejillón E2','Mejillón E3','Mejillón E4', 'Mejillón E11','Nivel de ruido');
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
legend('Mejillón F1', 'Mejillón F2','Mejillón F3', 'Mejillón F5','Mejillón F6')
legend('Location','northeastoutside')
% yyaxis right
% ylim([95, 135])
% ylabel('SPL(dB)')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Día 6 (22/10/2021) 08:42:45-09:32:26(27) %%%%%%
%%% Experimento: E5, -E7-, E8, E9, E10.%%%%%%%%%%%%
%%% Control: -C9-, -D5-, D6, D7, D8.%%%%%%%%%%%%%%%
%%% no funcionan: C9, D5, E7.%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure('Name','Exp vs Control Día 6: 22/10/2021')

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
legend('Mejillón E5','Mejillón E8','Mejillón E9','Mejillón E10','Nivel de ruido');
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
legend('Mejillón D6','Mejillón D7','Mejillón D8')
legend('Location','northeastoutside')
% yyaxis right
% ylim([95, 135])
% ylabel('SPL(dB)')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Día 7 (26/10/2021) 08:22:35-09:12:15(16) %%%%%%
%%% Experimento: F1, F2, F3, F5, F6. %%%%%%%%%%%%%%
%%% Control: D10, E1, E3, E4, E11.  %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure('Name','Exp vs Control Día 7: 26/10/2021')

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
legend('Mejillón F1','Mejillón F2','Mejillón F3','Mejillón F5','Mejillón F6','Nivel de ruido');
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
legend('Mejillón D10', 'Mejillón E1','Mejillón E3','Mejillón E4','Mejillón E11')
legend('Location','northeastoutside')
% yyaxis right
% ylim([95, 135])
% ylabel('SPL(dB)')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Día 8 (27/10/2021) 08:17:06-09:06:47(48) %%%%%%
%%% Experimento: D12, -F9-, F10, F11, F12.%%%%%%%%%
%%% Control: D1, D3, D4, D11.    %%%%%%%%%%%%%%%%%%
%%% no funcionan: F9.       %%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure('Name','Exp vs Control Día 8: 27/10/2021')

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
legend('Mejillón D12','Mejillón F10','Mejillón F11','Mejillón F12','Nivel de ruido');
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
legend('Mejillón D1', 'Mejillón D3','Mejillón D4', 'Mejillón D11')
legend('Location','northeastoutside')
% yyaxis right
% ylim([95, 135])
% ylabel('SPL(dB)')
