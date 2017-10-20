diary on

% read data from file (unsere Messung, TbGdScO3 & DyTbScO3)
tempsMeas=dlmread('Messdaten\ExpDat_Tb_0.5Gd_0.5ScO3-2200-2x-3(unsere)_tab.txt','\t', 'A1..A4030');
DyTbScO3_raw1=dlmread('Messdaten\ExpDat_Tb_0.5Gd_0.5ScO3-2200-2x-3(unsere)_tab.txt','\t', 'B1..B4030');
DyTbScO3_raw2=dlmread('Messdaten\ExpDat_Tb_0.5Gd_0.5ScO3-2200-2x-3(unsere)_tab.txt','\t', 'C1..C4030');
TbGdScO3_raw1=dlmread('Messdaten\ExpDat_Tb_0.5Gd_0.5ScO3-2200-2x-3(unsere)_tab.txt','\t', 'D1..D4030');
TbGdScO3_raw2=dlmread('Messdaten\ExpDat_Tb_0.5Gd_0.5ScO3-2200-2x-3(unsere)_tab.txt','\t', 'E1..E4030');
Al2O3_raw=dlmread('Messdaten\ExpDat_Tb_0.5Gd_0.5ScO3-2200-2x-3(unsere)_tab.txt','\t', 'F1..F4030');

% read data from file (RE-Skandate Klimm, GdScO3 & DyScO3; K...Klimm)
size(dlmread('Messdaten\ExpDat_GdScO3_DyScO3_Al2O3-Eich-6_tab.txt'
tempsMeasK=dlmread('Messdaten\ExpDat_GdScO3_DyScO3_Al2O3-Eich-6_tab.txt','\t', 'A1..A4030');
GdScO3_raw1=dlmread('Messdaten\ExpDat_GdScO3_DyScO3_Al2O3-Eich-6_tab.txt','\t', 'B1..B4030');
GdScO3_raw2=dlmread('Messdaten\ExpDat_GdScO3_DyScO3_Al2O3-Eich-6_tab.txt','\t', 'C1..C4030');
DyScO3_raw1=dlmread('Messdaten\ExpDat_GdScO3_DyScO3_Al2O3-Eich-6_tab.txt','\t', 'F1..F4030');
DyScO3_raw2=dlmread('Messdaten\ExpDat_GdScO3_DyScO3_Al2O3-Eich-6_tab.txt','\t', 'G1..G4030');
Al2O3_rawK1=dlmread('Messdaten\ExpDat_GdScO3_DyScO3_Al2O3-Eich-6_tab.txt','\t', 'D1..D4030');
Al2O3_rawK2=dlmread('Messdaten\ExpDat_GdScO3_DyScO3_Al2O3-Eich-6_tab.txt','\t', 'E1..E4030');





