%% GHG Global Torta
clear
clc
Percent = [3.4 3.3 11.6 6.1 75.6]';
Area = ["Waste" "Forestry" "Agriculture" "Industrial Processes" "Energy"]';
explode = [0,0,0,0,1];
pie3(Percent,explode)
title ("Global Sources"+"\newline"+"of Greenhouse Gas Emissions (GHG)",'FontSize',20)
lgd = legend(Area,"Location","southwest","Orientation","vertical");
fontname("Times New Roman")
fontsize(20,"points")
