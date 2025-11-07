clear
clc

% GHG Energy Sector
subplot(1,2,1)
Area2 = ["Building" "Transportation" "Electricity/Heat" "Fugitive Emissions" "Manufacturing/Construction" "Other"+"\newline"+"fuel"+"\newline"+"Combustion"]';
Percent2 = [8.1 22.4 42.1 9 16.7 1.6]';
GHG2 = table(Area2,Percent2)
e = donutchart(GHG2,"Percent2","Area2",LabelStyle="namepercent",ExplodedWedges=2);
e.CenterLabel = ["GHG" "Energy" "Sector"];
mycolors = ["#1C7C54" "#AFCBFF" "#386FA4" "#A2E3C4" "#1B512D" "#000000"];
colororder(mycolors)

