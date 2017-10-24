% read data from file (unsere Messung, TbGdScO3 & DyTbScO3)
tempsMeas=dlmread('Messdaten\ExpDat_Tb_0.5Gd_0.5ScO3-2200-2x-3(unsere)_tab.txt','\t', 'A1..A4030');
DyTbScO3_raw1=dlmread('Messdaten\ExpDat_Tb_0.5Gd_0.5ScO3-2200-2x-3(unsere)_tab.txt','\t', 'B1..B4030');
DyTbScO3_raw2=dlmread('Messdaten\ExpDat_Tb_0.5Gd_0.5ScO3-2200-2x-3(unsere)_tab.txt','\t', 'C1..C4030');
TbGdScO3_raw1=dlmread('Messdaten\ExpDat_Tb_0.5Gd_0.5ScO3-2200-2x-3(unsere)_tab.txt','\t', 'D1..D4030');
TbGdScO3_raw2=dlmread('Messdaten\ExpDat_Tb_0.5Gd_0.5ScO3-2200-2x-3(unsere)_tab.txt','\t', 'E1..E4030');
Al2O3_raw=dlmread('Messdaten\ExpDat_Tb_0.5Gd_0.5ScO3-2200-2x-3(unsere)_tab.txt','\t', 'F1..F4030');

% read data from file (RE-Skandate alte Messung (Klimm), GdScO3 & DyScO3; K...Klimm)
tempsMeasK=dlmread('Messdaten\ExpDat_GdScO3_DyScO3_Al2O3-Eich-6_tab.txt','\t', 'A1..A2477');
GdScO3_raw1=dlmread('Messdaten\ExpDat_GdScO3_DyScO3_Al2O3-Eich-6_tab.txt','\t', 'B1..B2477');
GdScO3_raw2=dlmread('Messdaten\ExpDat_GdScO3_DyScO3_Al2O3-Eich-6_tab.txt','\t', 'C1..C2477');
DyScO3_raw1=dlmread('Messdaten\ExpDat_GdScO3_DyScO3_Al2O3-Eich-6_tab.txt','\t', 'F1..F2477');
DyScO3_raw2=dlmread('Messdaten\ExpDat_GdScO3_DyScO3_Al2O3-Eich-6_tab.txt','\t', 'G1..G2477');
Al2O3_rawK1=dlmread('Messdaten\ExpDat_GdScO3_DyScO3_Al2O3-Eich-6_tab.txt','\t', 'D1..D2477');
Al2O3_rawK2=dlmread('Messdaten\ExpDat_GdScO3_DyScO3_Al2O3-Eich-6_tab.txt','\t', 'E1..E2477');

% Offset Temperatur (berechnet aus Differenz der gemessenen
% Schmelztemperatur T_S und dem theoret. Referenzwert für Al2O3
tempKorr1=198;
tempKorr2=125.5;

% Temperaturkalibrierung beider Messreihen (New=unsere, Old=alte(K))
tempsNew=tempsMeas+tempKorr1;
tempsOld=tempsMeasK+tempKorr2;

% Für bessere Darstellung im Plot (Verschiebung auf Ordinate)
GdScO3_1=GdScO3_raw1+2.65;
GdScO3_2=GdScO3_raw2+2.3;
TbGdScO3_1=TbGdScO3_raw1-1.8;
TbGdScO3_2=TbGdScO3_raw2-2.25;
DyTbScO3_1=DyTbScO3_raw1-3.05;
DyTbScO3_2=DyTbScO3_raw2-3.65;
DyScO3_1=DyScO3_raw1-4;
DyScO3_2=DyScO3_raw2-4.3;

% Plot aller DTA-Kurven
figure(1)
hold on
plot(tempsOld,GdScO3_1,'Color',[1 0 0]); % Gd
plot(tempsOld,GdScO3_2,'Color',[0.8 0.2 0]); % Gd
plot(tempsNew,TbGdScO3_1,'Color',[0.3 1 0.3]);  % TbGd
plot(tempsNew,TbGdScO3_2,'Color',[0.4 0.8 0.2]);  % TbGd
plot(tempsNew,DyTbScO3_1,'Color',[0 0 1]);  % DyTb
plot(tempsNew,DyTbScO3_2,'Color',[0 0.2 0.8]);  % DyTb
plot(tempsOld,DyScO3_1,'Color',[0 0 0]); % Dy
plot(tempsOld,DyScO3_2,'Color',[0.33 0.1 0.3]); % Dy
%line([2141 2141],[-10 10], 'Color', [1 0 0]);
hold off
axis([2090 2225 -4.7 1.35])
xticks(2090:20:2225)
yticks([])
xtickangle(0)
xlabel('Temperatur (°C)');
ylabel('DTA (\muV/mg)');


