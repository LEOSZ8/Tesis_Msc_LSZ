clear
clc

% GHG Energy Sector
Area2 = ["Building" "Transportation" "Electricity/Heat" "Fugitive"+"\newline"+"Emissions" "Manufacturing/"+"\newline"+"Construction" "Other"+"\newline"+"fuel"+"\newline"+"Combustion"]';
Percent2 = [8.1 22.4 42.1 9 16.7 1.6]';
GHG2 = table(Area2,Percent2)
e = donutchart(GHG2,"Percent2","Area2",LabelStyle="namepercent",ExplodedWedges=2);
e.CenterLabel = ["GHG" "Energy" "Sector"];
mycolors = ["#F8EC62" "#F7E733" "#F8EC62" "#F7E733" "#F8EC62" "#F7E733"];
colororder(mycolors)

%%
clear
clc
Area = ["Building","Transportation","Electricity/Heat","Other fuel Combustion","Fugitive Emissions","Manufacturing/Construction"];
Percent = [8.1 22.4 42.1 1.6 9 16.7];
p = piechart(Percent,Area,ExplodedWedges=2);

%%
clear
clc
Percent = [16.7,9,1.6,42.1,22.4,8.1];
Area = ["Manufacturing/Construction","Fugitive Emissions","Other fuel Combustion","Electricity/Heat","Transportation","Building"];
explode = [0,0,0,0,1,0];
p = pie(Percent,explode,'%.1f%%');
title ("GHG emissions from"+"\newline"+ "Energy Sector")
p(1).FaceColor  = "#A3B6B8";
p(3).FaceColor  = "#C8D3D5";
p(5).FaceColor  = "#A3B6B8";
p(7).FaceColor  = "#C8D3D5";
p(9).FaceColor  = "#F7E733";
p(11).FaceColor = "#C8D3D5";

p(2).String = sprintf('%s\n %g%%',Area(1,1),Percent(1,1));
p(4).String = sprintf('%s\n %g%%',Area(1,2),Percent(1,2));
p(6).String = sprintf('%s\n %g%%',Area(1,3),Percent(1,3));
p(8).String = sprintf('%s\n %g%%',Area(1,4),Percent(1,4));
p(10).String = sprintf('%s\n %g%%',Area(1,5),Percent(1,5));
p(12).String = sprintf('%s\n %g%%',Area(1,6),Percent(1,6));