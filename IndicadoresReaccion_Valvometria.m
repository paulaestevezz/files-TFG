%%Script para el cálculo y representación de los indicadores de reacción
%%como resultado de las interpretaciones de los datos de valvometría.
%
%%Paula Estévez Márquez (2022)

%%Representación del cambio relativo de apertura de valva (%) entre valor
%%máximo y mínimo de apertura por intervalos de cambio.
%AVa=apertura de valva antes reacción. AVd=apertura de valva después reacción
%cambioRelPerc= - (AVa - AVd)/AVa*100;%cambio relativo en "%". Si negativo indica un cierre de valva. Si positivo indica una apertura de valva. 
%scatter. stem https://es.mathworks.com/help/matlab/ref/stem.html
%30min=1789s, 35min=2087s, 40min=2386s, 45min=2684s, 50min=2982s
step30=1789;
step35=2087;
step40=2386;
step45=2684;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%De Día 14 reaccionan: C2, C3 y C11
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%C2 verde g: 3 intervalos de cambio
AVa30_C2=38.75;%1780 segundos. 10 segundos despois cambio nivel. 
AVd30_C2=18.11;%1820
SPLmin30Dia14_C2=114.5; %1789. Considerar este intervalo realmente?? Sí
tReaccion30_C2=1799-step30;
dif30_C2=AVa30_C2 - AVd30_C2;
CR30_AV_C2=-dif30_C2/AVa30_C2*100;

AVa35_C2=28.47; %2059
AVd35_C2=14.12;%2112
SPLmin35Dia14_C2=119.4;%2087
tReaccion35_C2=2094-step35;
dif35_C2=AVa35_C2-AVd35_C2;
CR35_AV_C2=-dif35_C2/AVa35_C2*100;

AVa45_C2=15.61; % 2660
AVd45_C2=9.199; %2726
SPLmin45Dia14_C2=128.8;
tReaccion45_C2=2692-step45; 
dif45_C2=AVa45_C2-AVd45_C2;
CR45_AV_C2=-dif45_C2/AVa45_C2*100;

%C3 azul b: 1 intervalo ó varios de cambio en el mismo nivel, ó considerar segundos que tarda en
%responder?? Realmente empieza a bajar progresivamente. Sólo tenemos en
%cuenta los drásticos?
AVa45_C3=59.11;%2658
AVd45_C3=46.68;%2743 el del drop
SPLmin45Dia14_C3=128.8;
tReaccion45_C3=2688-step45;
dif45_C3=AVa45_C3-AVd45_C3;
CR45_AV_C3=-dif45_C3/AVa45_C3*100;

%C11 negro k: 2 intervalos. Pero decae en el intermedio de los dos niveles
%progresivamente
AVa35_C11=16.52; %2086 
AVd35_C11=13.35; %2127
SPLmin35Dia14_C11=119.4;
tReaccion35_C11=2098-step35;
dif35_C11=AVa35_C11-AVd35_C11;
CR35_AV_C11=-dif35_C11/AVa35_C11*100;

AVa45_C11=13.54;%2658
AVd45_C11=10.48;%2704
SPLmin45Dia14_C11=128.8;
tReaccion45_C11=2691-step45;
dif45_C11=AVa45_C11-AVd45_C11;
CR45_AV_C11=-dif45_C11/AVa45_C11*100;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%De Día 15 reaccionan: D6, D7 y D8
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%D6 verde g: 1 caída en 30 descartada + 1 intervalo + 1 pequeño en otro nivel??

AVa40_D6=40.18;%2382
AVd40_D6=14.77;%2440
SPLmin40Dia15_D6=124.6;
tReaccion40_D6=2390-step40;
dif40_D6=AVa40_D6-AVd40_D6;
CR40_AV_D6=-dif40_D6/AVa40_D6*100;

AVa45_D6=14.77;%2669
AVd45_D6=13.13;%2728
SPLmin45Dia15_D6=130.8;
tReaccion45_D6=2695-step45;
dif45_D6=AVa45_D6-AVd45_D6;
CR45_AV_D6=-dif45_D6/AVa45_D6*100;

%D7 azul b: 2 ó 3 intervalos? hay 2 que caen en mismo nivel, considerarlos
%uno sólo y con retraso?? Yo diría que sólo uno y con la caída de al
%principio únicamente.
AVa40_D7=55.12;%2379s
AVd40_D7=42.54;%2436s
SPLmin40Dia15_D7=124.6;
tReaccion40_D7=2420-step40; %instante de reacción - instante c.nivel
dif40_D7=AVa40_D7-AVd40_D7;
CR40_AV_D7=-dif40_D7/AVa40_D7*100;

AVa45_D7=47.82;%2661
AVd45_D7=19.41;%2706
SPLmin45Dia15_D7=130.8;
tReaccion45_D7=2692-step45;
dif45_D7=AVa45_D7-AVd45_D7;
CR45_AV_D7=-dif45_D7/AVa45_D7*100;

% D8 en azul cyan c: 1 intervalo en 30??? + 1 intervalo
AVa30_D8=68.68;%1788
AVd30_D8=62.77;%1827
SPLmin30Dia15_D8=114.8;
tReaccion30_D8=1797-step30;
dif30_D8=AVa30_D8-AVd30_D8;
CR30_AV_D8=-dif30_D8/AVa30_D8*100;

AVa35_D8=58.68;%2085
AVd35_D8=9.88;%2150
SPLmin35Dia15_D8=119.4;
tReaccion35_D8=2092-step35;
dif35_D8=AVa35_D8-AVd35_D8;
CR35_AV_D8=-dif35_D8/AVa35_D8*100;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%De Día 19 reaccionan: E1 y E4.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%E1 rojo r: 1 intervalo con delay
AVa45_E1=70.71;%2683
AVd45_E1=39.98;%2902
SPLmin45Dia19_E1=122.2;
tReaccion45_E1=2851-step45;
dif45_E1=AVa45_E1-AVd45_E1;
CR45_AV_E1=-dif45_E1/AVa45_E1*100;


%%E4 azul cyan c: 1 intervalo 30 con delay, casi al siguiente nivel, descartado.
%%(demasiado bajo 108 dB) a 35. Yo este lo descartaría o diría que empieza
%%a decaer en 40 progresivamente hasta el final. Considerar 2 tramos??
%Considero que empieza a decaer en el 30 con mucho delay
%DESCARTADO


%Tengo 12 valores para cada uno
x_SPL=[SPLmin30Dia14_C2 SPLmin35Dia14_C2 SPLmin45Dia14_C2 SPLmin45Dia14_C3 SPLmin35Dia14_C11 SPLmin45Dia14_C11 SPLmin40Dia15_D6 SPLmin45Dia15_D6 SPLmin40Dia15_D7 SPLmin45Dia15_D7 SPLmin30Dia15_D8 SPLmin35Dia15_D8 SPLmin45Dia19_E1];
y_Delay_AV=[tReaccion30_C2 tReaccion35_C2 tReaccion45_C2 tReaccion45_C3 tReaccion35_C11 tReaccion45_C11 tReaccion40_D6 tReaccion45_D6 tReaccion40_D7 tReaccion45_D7 tReaccion30_D8 tReaccion35_D8 tReaccion45_E1];
y_CRel_AV=[CR30_AV_C2 CR35_AV_C2 CR45_AV_C2 CR45_AV_C3 CR35_AV_C11 CR45_AV_C11 CR40_AV_D6 CR45_AV_D6 CR40_AV_D7 CR45_AV_D7 CR30_AV_D8 CR35_AV_D8 CR45_AV_E1];
figure('Name','SPL vs Cambio relativo en apertura de valva')
scatter(x_SPL,y_CRel_AV,'MarkerFaceColor','c')
grid on
%title('Reacciones detectadas tras un incremento del nivel de ruido')
%Reacciones detectadas ó Reacciones detectadas tras un cambio del nivel de
%exposición
xlabel('SPL (dB re 1 \muPa)')
ylabel('Cambio relativo en la abertura de valva del individuo (%)')
xlim([114, 132]) 
ylim([-85, 0])
yticks(-85:5:0)
xticks(114:1:132) 

figure('Name','SPL vs Tiempo que tardan en reaccionar los mejillones')
scatter(x_SPL,y_Delay_AV,'MarkerFaceColor','c')
grid on
%title('Reacciones detectadas tras un incremento del nivel de ruido')
%Reacciones detectadas ó Reacciones detectadas tras un cambio del nivel de
%exposición
xlabel('SPL (dB re 1 \muPa)')
ylabel('Tiempo que tarda en reaccionar el individuo (s)')
xlim([114, 132]) 
ylim([0, 170])
yticks(0:5:170)
xticks(114:1:132)
%conjdatos=[var1,var2];
%stem(ejex,conjdatos,'LyneStyle','none')

