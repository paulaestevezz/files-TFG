% Script para la extracción y manipulación de los datos de valvometría.
%
% Paula Estévez Márquez (2022)

% Contenido de la primera línea:
% "","date_t","Mussel_01","Mussel_02","Mussel_03","Mussel_04","Mussel_05","Mussel_06","Mussel_07","Mussel_08","Mussel_09","Mussel_10","Mussel_11","Mussel_12"
% "nºlíneaOriginal",yyyy-MM-dd HH:mm:ss.SSSSSS,valor_apertura_Mej1(%), ...,valor_apertura_Mej12(%)
% Ejemplo: "8555410",2021-10-14 09:18:06.083306,60.4856701087634,33.664058407144,65.4390707677898,30.7099232927808,3.89885399294679,17.2799356645074,4.10925528859117,73.2730276300912,88.1873921304843,NA,16.4107808805029,2.25713041861594
% https://es.mathworks.com/help/matlab/ref/table.html
% https://es.mathworks.com/matlabcentral/answers/817985-read-specific-rows-and-colums-from-csv-file

   
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% % %%%   LEEMOS LOS DATOS DEL .CSV/txt PARA CADA COM  %%%
% % %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%COM3 (del C1 al C12): descartar C10, no se usa
filename='PORT_COM3_Day14.txt';
T_COM3_D14=readtable(filename); 
T_COM3_D15=readtable('PORT_COM3_Day15.txt');
T_COM3_D22=readtable('PORT_COM3_Day22.txt'); %descartar C9 (valor NA)
%%COM4 (del D1 al D12): descartar D5 (NA) y D9 (no se usa)
T_COM4_D15=readtable('PORT_COM4_Day15.txt'); %descartar D5 (valor NA)
T_COM4_D22=readtable('PORT_COM4_Day22.txt'); %descartar D5 (valor NA). 
T_COM4_D26=readtable('PORT_COM4_Day26.txt'); %"
T_COM4_D27=readtable('PORT_COM4_Day27.txt'); %"
%%COM5 (del E1 al E12): descartar E6 y E12, no se usan
T_COM5_D15=readtable('PORT_COM5_Day15.txt'); 
T_COM5_D19=readtable('PORT_COM5_Day19.txt');
T_COM5_D22=readtable('PORT_COM5_Day22.txt'); %descartar E7 (valor NA)
T_COM5_D26=readtable('PORT_COM5_Day26.txt');
%%COM6 (del E1 al E12): descartar F4, F7 y F8, no se usan.
T_COM6_D19=readtable('PORT_COM6_Day19.txt');
T_COM6_D26=readtable('PORT_COM6_Day26.txt');
T_COM6_D27=readtable('PORT_COM6_Day27.txt'); %descartar F9 (valor NA)

save('DatosCOM3_D14.mat', 'T_COM3_D14');
save('DatosCOM3_D15.mat', 'T_COM3_D15');
save('DatosCOM3_D22.mat', 'T_COM3_D22');
save('DatosCOM4_D15.mat', 'T_COM4_D15');
save('DatosCOM4_D22.mat', 'T_COM4_D22');
save('DatosCOM4_D26.mat', 'T_COM4_D26');
save('DatosCOM4_D27.mat', 'T_COM4_D27');
save('DatosCOM5_D15.mat', 'T_COM5_D15');
save('DatosCOM5_D19.mat', 'T_COM5_D19');
save('DatosCOM5_D22.mat', 'T_COM5_D22');
save('DatosCOM5_D26.mat', 'T_COM5_D26');
save('DatosCOM6_D19.mat', 'T_COM6_D19');
save('DatosCOM6_D26.mat', 'T_COM6_D26');
save('DatosCOM6_D27.mat', 'T_COM6_D27');
%%%   FIN LECTURA Y SALVADO DE DATOS%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%Carga de los datos almacenados
load('DatosCOM3_D14.mat'); %Carga T_COM3_D14
load('DatosCOM3_D15.mat'); %Carga T_COM3_D15
load('DatosCOM3_D22.mat'); %Carga T_COM3_D22
load('DatosCOM4_D15.mat'); %Carga T_COM4_D15
load('DatosCOM4_D22.mat'); %Carga T_COM4_D22
load('DatosCOM4_D26.mat'); %Carga T_COM4_D26
load('DatosCOM4_D27.mat'); %Carga T_COM4_D27
load('DatosCOM5_D15.mat'); %Carga T_COM5_D15
load('DatosCOM5_D19.mat'); %Carga T_COM5_D19
load('DatosCOM5_D22.mat'); %Carga T_COM5_D22
load('DatosCOM5_D26.mat'); %Carga T_COM5_D26
load('DatosCOM6_D19.mat'); %Carga T_COM6_D19
load('DatosCOM6_D26.mat'); %Carga T_COM6_D26
load('DatosCOM6_D27.mat'); %Carga T_COM6_D27

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% REMUESTREO DE LOS ARCHIVOS: 1 MUESTRA/SEG. %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% EJEMPLO/PRUEBA DE USO. COMENTAR %%%%
% num_muestrasT_COM3_D14=height(T_COM3_D14);
% t_IniArchivo=T_COM3_D14.date_t(1); %ó T_COM3_D14{1,2}; valor temporal de primera muestra
% t_FinArchivo=T_COM3_D14.date_t(num_muestrasT_COM3_D14); %valor temporal de la última muestra
% fechaIni=datetime(t_IniArchivo{1},'InputFormat', 'yyyy-MM-dd HH:mm:ss.SSSSSS','Format','yyyy-MM-dd HH:mm:ss.SSSSSS');
% fechaFin=datetime(t_FinArchivo{1},'InputFormat', 'yyyy-MM-dd HH:mm:ss.SSSSSS','Format','yyyy-MM-dd HH:mm:ss.SSSSSS');
% duracionArchivo=fechaFin-fechaIni; %calculo duración archivo
% segundosDuracion=duration(duracionArchivo,'Format','s');
% freq_original=num_muestrasT_COM3_D14/seconds(segundosDuracion); %convierto a segundos el tipo duration
% freq_arreglo=floor(freq_original*10000); %para hacer la relación num/den y además, quitarle decimales con floor
% Rem_com3_d14=resample(T_COM3_D14{:,3},10000,freq_arreglo); %al introducirlo en forma de fracción puedo hacer el resample
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%
%%Para COM3%%
%%%%%%%%%%%%%
num_muestrasT_COM3=[height(T_COM3_D14)  height(T_COM3_D15)  height(T_COM3_D22)];%tamaño en muestras de cada archivo
t_Ini_COM3=[T_COM3_D14.date_t(1)  T_COM3_D15.date_t(1)    T_COM3_D22.date_t(1)]; %fecha de inicio, primer dato
t_Fin_COM3=[T_COM3_D14.date_t(num_muestrasT_COM3(1))    T_COM3_D15.date_t(num_muestrasT_COM3(2))    T_COM3_D22.date_t(num_muestrasT_COM3(3))]; %fecha fin, último dato
param1='InputFormat';
param2='yyyy-MM-dd HH:mm:ss.SSSSSS';
param3='Format';
param4='yyyy-MM-dd HH:mm:ss.SSSSSS';
fechaIni_COM3=[datetime(t_Ini_COM3{1},param1,param2,param3,param4)    datetime(t_Ini_COM3{2},param1,param2,param3,param4)   datetime(t_Ini_COM3{3},param1,param2,param3,param4)];
fechaFin_COM3=[datetime(t_Fin_COM3{1},param1,param2,param3,param4)  datetime(t_Fin_COM3{2},param1,param2,param3,param4) datetime(t_Fin_COM3{3},param1,param2,param3,param4)];
duracion_COM3=[fechaFin_COM3(1)-fechaIni_COM3(1) fechaFin_COM3(2)-fechaIni_COM3(2)  fechaFin_COM3(3)-fechaIni_COM3(3)];  %duración del archivo
segundosDuracionCOM3=[duration(duracion_COM3(1),param3,'s')  duration(duracion_COM3(2),param3,'s')  duration(duracion_COM3(3),param3,'s')];
freq_origCOM3=[num_muestrasT_COM3(1)/seconds(segundosDuracionCOM3(1))   num_muestrasT_COM3(2)/seconds(segundosDuracionCOM3(2))  num_muestrasT_COM3(3)/seconds(segundosDuracionCOM3(3))]; %convierto a segundos el tipo duration
freq_arregloCOM3=[round(freq_origCOM3(1)*10000) round(freq_origCOM3(2)*10000)   round(freq_origCOM3(3)*10000)]; %para hacer la relación num/den y además, quitarle decimales con floor

%Teniendo en cuenta que 3-Mej1 4-Mej2 5-Mej3 6-Mej4 7-Mej5 8-Mej6 9-Mej7
%10-Mej8 11-Mej9 12-Mej10 13-Mej11 14-Mej12
%C10 no se empleó en ensayo. C9=NA Día22

RemCOM3_Dia14_C1=resample(T_COM3_D14{:,3},10000,freq_arregloCOM3(1)); %al introducirlo en forma de fracción puedo hacer el resample
RemCOM3_Dia14_C2=resample(T_COM3_D14{:,4},10000,freq_arregloCOM3(1));
RemCOM3_Dia14_C3=resample(T_COM3_D14{:,5},10000,freq_arregloCOM3(1));
RemCOM3_Dia14_C4=resample(T_COM3_D14{:,6},10000,freq_arregloCOM3(1));
RemCOM3_Dia14_C5=resample(T_COM3_D14{:,7},10000,freq_arregloCOM3(1));
RemCOM3_Dia14_C6=resample(T_COM3_D14{:,8},10000,freq_arregloCOM3(1));
RemCOM3_Dia14_C7=resample(T_COM3_D14{:,9},10000,freq_arregloCOM3(1));
RemCOM3_Dia14_C8=resample(T_COM3_D14{:,10},10000,freq_arregloCOM3(1));  
RemCOM3_Dia14_C11=resample(T_COM3_D14{:,13},10000,freq_arregloCOM3(1));
RemCOM3_Dia14_C12=resample(T_COM3_D14{:,14},10000,freq_arregloCOM3(1));
RemCOM3_Dia15_C9=resample(T_COM3_D15{:,11},10000,freq_arregloCOM3(2));
%RemCOM3_Dia22_C9=resample(T_COM3_D22{:,11},10000,freq_arregloCOM3(3));

% %%Comprobación visual: plots. COMENTAR
% figure;
% plot(T_COM3_D14{:,3})
% figure;
% plot(RemCOM3_Dia14_C1)
% figure;
% plot(T_COM3_D15{:,7})
% figure;
% plot(RemCOM3_Dia15_C9)
% figure;
% plot(T_COM3_D22{:,7})
% figure;
% plot(RemCOM3_Dia22_C9)

save('Dia14_C1.mat', 'RemCOM3_Dia14_C1');
save('Dia14_C2.mat', 'RemCOM3_Dia14_C2');
save('Dia14_C3.mat', 'RemCOM3_Dia14_C3');
save('Dia14_C4.mat', 'RemCOM3_Dia14_C4');
save('Dia14_C5.mat', 'RemCOM3_Dia14_C5');
save('Dia14_C6.mat', 'RemCOM3_Dia14_C6');
save('Dia14_C7.mat', 'RemCOM3_Dia14_C7');
save('Dia14_C8.mat', 'RemCOM3_Dia14_C8');
save('Dia14_C11.mat', 'RemCOM3_Dia14_C11');
save('Dia14_C12.mat', 'RemCOM3_Dia14_C12');
save('Dia15_C9.mat', 'RemCOM3_Dia15_C9');

%%%%%%%%%%%%%
%%Para COM4%%
%%%%%%%%%%%%%
num_muestrasT_COM4=[height(T_COM4_D15)  height(T_COM4_D22)  height(T_COM4_D26)  height(T_COM4_D27)];
t_Ini_COM4=[T_COM4_D15.date_t(1)  T_COM4_D22.date_t(1)    T_COM4_D26.date_t(1)  T_COM4_D27.date_t(1)]; 
t_Fin_COM4=[T_COM4_D15.date_t(num_muestrasT_COM4(1))    T_COM4_D22.date_t(num_muestrasT_COM4(2))    T_COM4_D26.date_t(num_muestrasT_COM4(3))    T_COM4_D27.date_t(num_muestrasT_COM4(4))]; 
fechaIni_COM4=[datetime(t_Ini_COM4{1},param1,param2,param3,param4)    datetime(t_Ini_COM4{2},param1,param2,param3,param4)   datetime(t_Ini_COM4{3},param1,param2,param3,param4) datetime(t_Ini_COM4{4},param1,param2,param3,param4)];
fechaFin_COM4=[datetime(t_Fin_COM4{1},param1,param2,param3,param4)  datetime(t_Fin_COM4{2},param1,param2,param3,param4) datetime(t_Fin_COM4{3},param1,param2,param3,param4) datetime(t_Fin_COM4{4},param1,param2,param3,param4)];
duracion_COM4=[fechaFin_COM4(1)-fechaIni_COM4(1) fechaFin_COM4(2)-fechaIni_COM4(2)  fechaFin_COM4(3)-fechaIni_COM4(3)   fechaFin_COM4(4)-fechaIni_COM4(4)]; 
segundosDuracionCOM4=[duration(duracion_COM4(1),param3,'s')  duration(duracion_COM4(2),param3,'s')  duration(duracion_COM4(3),param3,'s')   duration(duracion_COM4(4),param3,'s')];
freq_origCOM4=[num_muestrasT_COM4(1)/seconds(segundosDuracionCOM4(1))   num_muestrasT_COM4(2)/seconds(segundosDuracionCOM4(2))  num_muestrasT_COM4(3)/seconds(segundosDuracionCOM4(3))  num_muestrasT_COM4(4)/seconds(segundosDuracionCOM4(4))];
freq_arregloCOM4=[round(freq_origCOM4(1)*10000) round(freq_origCOM4(2)*10000)   round(freq_origCOM4(3)*10000)   round(freq_origCOM4(4)*10000)];

%Teniendo en cuenta que 3-Mej1 4-Mej2 5-Mej3 6-Mej4 7-Mej5 8-Mej6 9-Mej7
%10-Mej8 11-Mej9 12-Mej10 13-Mej11 14-Mej12
%No se empleó el D9. D15=NA tanto Día15 como Día22.

%RemCOM4_Dia15_D5=resample(T_COM4_D15{:,7},10000,freq_arregloCOM4(1));
RemCOM4_Dia15_D6=resample(T_COM4_D15{:,8},10000,freq_arregloCOM4(1));
RemCOM4_Dia15_D7=resample(T_COM4_D15{:,9},10000,freq_arregloCOM4(1));
RemCOM4_Dia15_D8=resample(T_COM4_D15{:,10},10000,freq_arregloCOM4(1));
%RemCOM4_Dia22_D5=resample(T_COM4_D22{:,7},10000,freq_arregloCOM4(2));
RemCOM4_Dia22_D6=resample(T_COM4_D22{:,8},10000,freq_arregloCOM4(2));
RemCOM4_Dia22_D7=resample(T_COM4_D22{:,9},10000,freq_arregloCOM4(2));
RemCOM4_Dia22_D8=resample(T_COM4_D22{:,10},10000,freq_arregloCOM4(2));
RemCOM4_Dia26_D10=resample(T_COM4_D26{:,12},10000,freq_arregloCOM4(3));
RemCOM4_Dia27_D1=resample(T_COM4_D27{:,3},10000,freq_arregloCOM4(4));
RemCOM4_Dia27_D3=resample(T_COM4_D27{:,5},10000,freq_arregloCOM4(4));
RemCOM4_Dia27_D4=resample(T_COM4_D27{:,6},10000,freq_arregloCOM4(4));
RemCOM4_Dia27_D11=resample(T_COM4_D27{:,13},10000,freq_arregloCOM4(4));
RemCOM4_Dia27_D12=resample(T_COM4_D27{:,14},10000,freq_arregloCOM4(4));

save('Dia15_D6.mat', 'RemCOM4_Dia15_D6');
save('Dia15_D7.mat', 'RemCOM4_Dia15_D7');
save('Dia15_D8.mat', 'RemCOM4_Dia15_D8');
save('Dia22_D6.mat', 'RemCOM4_Dia22_D6');
save('Dia22_D7.mat', 'RemCOM4_Dia22_D7');
save('Dia22_D8.mat', 'RemCOM4_Dia22_D8');
save('Dia26_D10.mat', 'RemCOM4_Dia26_D10');
save('Dia27_D1.mat', 'RemCOM4_Dia27_D1');
save('Dia27_D3.mat', 'RemCOM4_Dia27_D3');
save('Dia27_D4.mat', 'RemCOM4_Dia27_D4');
save('Dia27_D11.mat', 'RemCOM4_Dia27_D11');
save('Dia27_D12.mat', 'RemCOM4_Dia27_D12');

%%%%%%%%%%%%%
%%Para COM5%%
%%%%%%%%%%%%%
num_muestrasT_COM5=[height(T_COM5_D15)  height(T_COM5_D19)  height(T_COM5_D22)  height(T_COM5_D26)];
t_Ini_COM5=[T_COM5_D15.date_t(1)  T_COM5_D19.date_t(1)    T_COM5_D22.date_t(1)  T_COM5_D26.date_t(1)]; 
t_Fin_COM5=[T_COM5_D15.date_t(num_muestrasT_COM5(1))    T_COM5_D19.date_t(num_muestrasT_COM5(2))    T_COM5_D22.date_t(num_muestrasT_COM5(3))    T_COM5_D26.date_t(num_muestrasT_COM5(4))]; 
fechaIni_COM5=[datetime(t_Ini_COM5{1},param1,param2,param3,param4)    datetime(t_Ini_COM5{2},param1,param2,param3,param4)   datetime(t_Ini_COM5{3},param1,param2,param3,param4) datetime(t_Ini_COM5{4},param1,param2,param3,param4)];
fechaFin_COM5=[datetime(t_Fin_COM5{1},param1,param2,param3,param4)  datetime(t_Fin_COM5{2},param1,param2,param3,param4) datetime(t_Fin_COM5{3},param1,param2,param3,param4) datetime(t_Fin_COM5{4},param1,param2,param3,param4)];
duracion_COM5=[fechaFin_COM5(1)-fechaIni_COM5(1) fechaFin_COM5(2)-fechaIni_COM5(2)  fechaFin_COM5(3)-fechaIni_COM5(3)   fechaFin_COM5(4)-fechaIni_COM5(4)]; 
segundosDuracionCOM5=[duration(duracion_COM5(1),param3,'s')  duration(duracion_COM5(2),param3,'s')  duration(duracion_COM5(3),param3,'s')   duration(duracion_COM5(4),param3,'s')];
freq_origCOM5=[num_muestrasT_COM5(1)/seconds(segundosDuracionCOM5(1))   num_muestrasT_COM5(2)/seconds(segundosDuracionCOM5(2))  num_muestrasT_COM5(3)/seconds(segundosDuracionCOM5(3))  num_muestrasT_COM5(4)/seconds(segundosDuracionCOM5(4))];
freq_arregloCOM5=[round(freq_origCOM5(1)*10000) round(freq_origCOM5(2)*10000)   round(freq_origCOM5(3)*10000)   round(freq_origCOM5(4)*10000)];

%Teniendo en cuenta que 3-Mej1 4-Mej2 5-Mej3 6-Mej4 7-Mej5 8-Mej6 9-Mej7
%10-Mej8 11-Mej9 12-Mej10 13-Mej11 14-Mej12
%E7=NA el Día22.No se usó ni E6 ni E12.

RemCOM5_Dia15_E5=resample(T_COM5_D15{:,7},10000,freq_arregloCOM5(1)); 
RemCOM5_Dia15_E7=resample(T_COM5_D15{:,9},10000,freq_arregloCOM5(1));
RemCOM5_Dia15_E8=resample(T_COM5_D15{:,10},10000,freq_arregloCOM5(1));
RemCOM5_Dia15_E9=resample(T_COM5_D15{:,11},10000,freq_arregloCOM5(1));
RemCOM5_Dia15_E10=resample(T_COM5_D15{:,12},10000,freq_arregloCOM5(1));
RemCOM5_Dia19_E1=resample(T_COM5_D19{:,3},10000,freq_arregloCOM5(2));
RemCOM5_Dia19_E2=resample(T_COM5_D19{:,4},10000,freq_arregloCOM5(2));
RemCOM5_Dia19_E3=resample(T_COM5_D19{:,5},10000,freq_arregloCOM5(2));
RemCOM5_Dia19_E4=resample(T_COM5_D19{:,6},10000,freq_arregloCOM5(2));
RemCOM5_Dia19_E11=resample(T_COM5_D19{:,13},10000,freq_arregloCOM5(2));
RemCOM5_Dia22_E5=resample(T_COM5_D22{:,7},10000,freq_arregloCOM5(3));
%RemCOM5_Dia22_E7=resample(T_COM5_D22{:,9},10000,freq_arregloCOM5(3));
RemCOM5_Dia22_E8=resample(T_COM5_D22{:,10},10000,freq_arregloCOM5(3));
RemCOM5_Dia22_E9=resample(T_COM5_D22{:,11},10000,freq_arregloCOM5(3));
RemCOM5_Dia22_E10=resample(T_COM5_D22{:,12},10000,freq_arregloCOM5(3));
RemCOM5_Dia26_E1=resample(T_COM5_D26{:,3},10000,freq_arregloCOM5(4));
RemCOM5_Dia26_E3=resample(T_COM5_D26{:,5},10000,freq_arregloCOM5(4));
RemCOM5_Dia26_E4=resample(T_COM5_D26{:,6},10000,freq_arregloCOM5(4));
RemCOM5_Dia26_E11=resample(T_COM5_D26{:,13},10000,freq_arregloCOM5(4));

save('Dia15_E5.mat', 'RemCOM5_Dia15_E5');
save('Dia15_E7.mat', 'RemCOM5_Dia15_E7');
save('Dia15_E8.mat', 'RemCOM5_Dia15_E8');
save('Dia15_E9.mat', 'RemCOM5_Dia15_E9');
save('Dia15_E10.mat', 'RemCOM5_Dia15_E10');
save('Dia19_E1.mat', 'RemCOM5_Dia19_E1');
save('Dia19_E2.mat', 'RemCOM5_Dia19_E2');
save('Dia19_E3.mat', 'RemCOM5_Dia19_E3');
save('Dia19_E4.mat', 'RemCOM5_Dia19_E4');
save('Dia19_E11.mat', 'RemCOM5_Dia19_E11');
save('Dia22_E5.mat', 'RemCOM5_Dia22_E5');
save('Dia22_E8.mat', 'RemCOM5_Dia22_E8');
save('Dia22_E9.mat', 'RemCOM5_Dia22_E9');
save('Dia22_E10.mat', 'RemCOM5_Dia22_E10');
save('Dia26_E1.mat', 'RemCOM5_Dia26_E1');
save('Dia26_E3.mat', 'RemCOM5_Dia26_E3');
save('Dia26_E4.mat', 'RemCOM5_Dia26_E4');
save('Dia26_E11.mat', 'RemCOM5_Dia26_E11');

%%%%%%%%%%%%%
%%Para COM6%%
%%%%%%%%%%%%%
num_muestrasT_COM6=[height(T_COM6_D19)  height(T_COM6_D26)  height(T_COM6_D27)];
t_Ini_COM6=[T_COM6_D19.date_t(1)  T_COM6_D26.date_t(1)    T_COM6_D27.date_t(1)]; 
t_Fin_COM6=[T_COM6_D19.date_t(num_muestrasT_COM6(1))    T_COM6_D26.date_t(num_muestrasT_COM6(2))    T_COM6_D27.date_t(num_muestrasT_COM6(3))]; 
fechaIni_COM6=[datetime(t_Ini_COM6{1},param1,param2,param3,param4)    datetime(t_Ini_COM6{2},param1,param2,param3,param4)   datetime(t_Ini_COM6{3},param1,param2,param3,param4)];
fechaFin_COM6=[datetime(t_Fin_COM6{1},param1,param2,param3,param4)  datetime(t_Fin_COM6{2},param1,param2,param3,param4) datetime(t_Fin_COM6{3},param1,param2,param3,param4)];
duracion_COM6=[fechaFin_COM6(1)-fechaIni_COM6(1) fechaFin_COM6(2)-fechaIni_COM6(2)  fechaFin_COM6(3)-fechaIni_COM6(3)]; 
segundosDuracionCOM6=[duration(duracion_COM6(1),param3,'s')  duration(duracion_COM6(2),param3,'s')  duration(duracion_COM6(3),param3,'s')];
freq_origCOM6=[num_muestrasT_COM6(1)/seconds(segundosDuracionCOM6(1))   num_muestrasT_COM6(2)/seconds(segundosDuracionCOM6(2))  num_muestrasT_COM6(3)/seconds(segundosDuracionCOM6(3))];
freq_arregloCOM6=[round(freq_origCOM6(1)*10000) round(freq_origCOM6(2)*10000)   round(freq_origCOM6(3)*10000)];

%Teniendo en cuenta que 3-Mej1 4-Mej2 5-Mej3 6-Mej4 7-Mej5 8-Mej6 9-Mej7
%10-Mej8 11-Mej9 12-Mej10 13-Mej11 14-Mej12
%No se usó ni F4, ni F7, ni F8. F9=NA el Día27

RemCOM6_Dia19_F1=resample(T_COM6_D19{:,3},10000,freq_arregloCOM6(1)); 
RemCOM6_Dia19_F2=resample(T_COM6_D19{:,4},10000,freq_arregloCOM6(1));
RemCOM6_Dia19_F3=resample(T_COM6_D19{:,5},10000,freq_arregloCOM6(1));
RemCOM6_Dia19_F5=resample(T_COM6_D19{:,7},10000,freq_arregloCOM6(1));
RemCOM6_Dia19_F6=resample(T_COM6_D19{:,8},10000,freq_arregloCOM6(1));
RemCOM6_Dia26_F1=resample(T_COM6_D26{:,3},10000,freq_arregloCOM6(2));
RemCOM6_Dia26_F2=resample(T_COM6_D26{:,4},10000,freq_arregloCOM6(2));
RemCOM6_Dia26_F3=resample(T_COM6_D26{:,5},10000,freq_arregloCOM6(2));
RemCOM6_Dia26_F5=resample(T_COM6_D26{:,7},10000,freq_arregloCOM6(2));
RemCOM6_Dia26_F6=resample(T_COM6_D26{:,8},10000,freq_arregloCOM6(2));
%RemCOM6_Dia27_F9=resample(T_COM6_D27{:,11},10000,freq_arregloCOM6(3));
RemCOM6_Dia27_F10=resample(T_COM6_D27{:,12},10000,freq_arregloCOM6(3));
RemCOM6_Dia27_F11=resample(T_COM6_D27{:,13},10000,freq_arregloCOM6(3));
RemCOM6_Dia27_F12=resample(T_COM6_D27{:,14},10000,freq_arregloCOM6(3));

save('Dia19_F1.mat', 'RemCOM6_Dia19_F1');
save('Dia19_F2.mat', 'RemCOM6_Dia19_F2');
save('Dia19_F3.mat', 'RemCOM6_Dia19_F3');
save('Dia19_F5.mat', 'RemCOM6_Dia19_F5');
save('Dia19_F6.mat', 'RemCOM6_Dia19_F6');
save('Dia26_F1.mat', 'RemCOM6_Dia26_F1');
save('Dia26_F2.mat', 'RemCOM6_Dia26_F2');
save('Dia26_F3.mat', 'RemCOM6_Dia26_F3');
save('Dia26_F5.mat', 'RemCOM6_Dia26_F5');
save('Dia26_F6.mat', 'RemCOM6_Dia26_F6');
save('Dia27_F10.mat', 'RemCOM6_Dia27_F10');
save('Dia27_F11.mat', 'RemCOM6_Dia27_F11');
save('Dia27_F12.mat', 'RemCOM6_Dia27_F12');


