% GHG Global Dona
clear
clc  
Area = ["Energy" "Industrial"+"\newline&"+"Processes" "Agriculture" "Land Use Change"+"\newline&"+"\newline Forestry" "Waste"]';
Percent = [75.6 6.1 11.6 3.3 3.3]';
GHG = table(Area,Percent)
d = donutchart(GHG,"Percent","Area",LabelStyle="namepercent",ExplodedWedges=1,InnerRadius=0.8);
d.CenterLabel = ["GHG" "Emissions" "2024"];
mycolors = ["#A2E3C4" "#7E8D85" "#B3BFB8" "#F0F7F4" "#3C493F"];
colororder(mycolors)
%% GHG Global Torta
clear
clc
Percent = [3.4 3.3 11.6 6.1 75.6]';
Area = ["Waste" "Forestry" "Agriculture" "Industrial Processes" "Energy"]';
explode = [0,0,0,0,1];
pie3(Percent,explode)
title ("Global Sources"+"\newline"+"of Greenhouse Gas Emissions (GHG)")
lgd = legend(Area,"Location","southwest","Orientation","vertical");
