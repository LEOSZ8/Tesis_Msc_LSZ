%%
clear
clc
Percent = [16.7,9,1.6,42.1,22.4,8.1];
Area = ["Manufacturing/Construction","Fugitive Emissions","Other fuel Combustion","Electricity/Heat","Transportation","Building"];
explode = [0,0,0,0,1,0];
p = pie(Percent,explode,'%.1f%%');
title ("GHG emissions from Energy Sector",'FontName','Times New Roman','FontSize',20)
p(1).FaceColor  = "#A3B6B8";
p(3).FaceColor  = "#C8D3D5";
p(5).FaceColor  = "#A3B6B8";
p(7).FaceColor  = "#C8D3D5";
p(9).FaceColor  = "#F7E733";
p(11).FaceColor = "#C8D3D5";

p(2).String = sprintf('%s\n %g%%',Area(1,1),Percent(1,1));
set(findobj(p(2),'type','text'),'FontName','Times New Roman','FontSize',20)
p(4).String = sprintf('%s\n %g%%',Area(1,2),Percent(1,2));
set(findobj(p(4),'type','text'),'FontName','Times New Roman','FontSize',20)
p(6).String = sprintf('%s\n %g%%',Area(1,3),Percent(1,3));
set(findobj(p(6),'type','text'),'FontName','Times New Roman','FontSize',20)
p(8).String = sprintf('%s\n %g%%',Area(1,4),Percent(1,4));
set(findobj(p(8),'type','text'),'FontName','Times New Roman','FontSize',20)
p(10).String = sprintf('%s\n %g%%',Area(1,5),Percent(1,5));
set(findobj(p(10),'type','text'),'FontName','Times New Roman','FontSize',20)
p(12).String = sprintf('%s\n %g%%',Area(1,6),Percent(1,6));
set(findobj(p(12),'type','text'),'FontName','Times New Roman','FontSize',20)  