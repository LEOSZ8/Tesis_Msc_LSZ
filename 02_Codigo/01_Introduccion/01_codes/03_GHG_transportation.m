% GHG Transportation
clear
clc
Area3 = [ "Aviation","Rail","Shipping","Road"+"\newline"+"Freight Vehicles","Other Sources","Passenger"+"\newline"+"Road Vehicles"]';
Percent3 = [11.1 1.2 11.1 29.6 2.6 44.4]';
GHG3 = table(Area3,Percent3)
f = donutchart(GHG3,"Percent3","Area3",LabelStyle="namepercent",ExplodedWedges=3,FaceColor="flat",FaceAlpha=1);
title ("GHG emissions from"+"\newline"+ "Transport Sector")
mycolors = ["#C8D3D5" "#A3B6B8" "#F7E733" "#A3B6B8" "#C8D3D5" "#A3B6B8"];
colororder(mycolors)