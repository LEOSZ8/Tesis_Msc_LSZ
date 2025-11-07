% GHG Transportation
subplot(1,2,1)
Area3 = [ "Rail" "Aviation" "Shipping" "Road Freight Vehicles" "Passenger Road Vehicles" "Other"+"\newline"+"Sources"]';
Percent3 = [1.2 11.1 11.1 29.6 44.4 2.6]';
GHG3 = table(Area3,Percent3)
f = donutchart(GHG3,"Percent3","Area3",LabelStyle="namepercent",ExplodedWedges=3);
f.CenterLabel = ["GHG" "Transportation"];
mycolors = ["#1C7C54" "#E8FFB7" "#B7FFD8" "#136F63" "#32908F" "#000000"];
colororder(mycolors)