%% Dos Maniobras
Percent_fuel1_emiss1= [0,19,0,0]; 
Percent_fuel2_emiss2= [10,9,0,0]; %PBatt [kW] = 15% Pnom 
Percent_fuel3_emiss3= [19,0,0,0];  %PBatt [kW] = 25% Pnom

p=[Percent_fuel1_emiss1;Percent_fuel2_emiss2;Percent_fuel3_emiss3];
x= ({'0% Pnom','15% Pnom','25% Pnom'});

yya=({' ','\bf 0kW - 1000kW \newline          19%',' ',' '});
yyb=({'\bf Batt \newline  10% Saved','\bf 0kW - 1000kW \newline          9%',' ',' '});
yyc=({'\bf Batt \newline  19% Saved',' ',' ',' '});

labels1_1=yya(1,1);
labels1_2=yya(1,2);
labels1_3=yya(1,3);
labels1_4=yya(1,4);

labels2_1=yyb(1,1);
labels2_2=yyb(1,2);
labels2_3=yyb(1,3);
labels2_4=yyb(1,4);

labels3_1=yyc(1,1);
labels3_2=yyc(1,2);
labels3_3=yyc(1,3);
labels3_4=yyc(1,4);

colororder({'#D95319','#0072BD'})
yyaxis right
b=bar(x,p,'stacked');
ylabel('Daily Emissions [%]','FontName','Times New Roman')
ylim([0 110])
yticks(0:10:100)
xtips = b(1).XEndPoints;
xtips1=xtips(1,1);
xtips2=xtips(1,2);
xtips3=xtips(1,3);
ytips1 = b(1).YEndPoints;
b(1).FaceColor = 'flat';
b(1).CData(1,:) = [0.42 0.68 0.87];
b(1).CData(2,:) = [0.51,0.87,0.46];
b(1).CData(3,:) = [0.51,0.87,0.46];
ytips1_1 = ytips1(1,1);
ytips2_1 = ytips1(1,2);
ytips3_1 = ytips1(1,3);
ytips2 = b(2).YEndPoints;
b(2).FaceColor = 'flat';
b(2).CData(1,:) = [0.42 0.68 0.87];
b(2).CData(2,:) = [0.42 0.68 0.87];
ytips1_2 = ytips2(1,1);
ytips2_2 = ytips2(1,2);
ytips3_2 = ytips2(1,3);
ytips3 = b(3).YEndPoints;
b(3).FaceColor = 'flat';
b(3).CData(1,:) = [0.404, 0.431, 0.388];
b(3).CData(2,:) = [0.404, 0.431, 0.388];
b(3).CData(3,:) = [0.404, 0.431, 0.388];
ytips1_3 = ytips3(1,1);
ytips2_3 = ytips3(1,2);
ytips3_3 = ytips3(1,3);
ytips4 = b(4).YEndPoints;
b(4).FaceColor = 'flat';
b(4).CData(1,:) = [0.6,0.62,0.58];
b(4).CData(2,:) = [0.6,0.62,0.58];
b(4).CData(3,:) = [0.6,0.62,0.58];
ytips1_4 = ytips4(1,1);
ytips2_4 = ytips4(1,2);
ytips3_4 = ytips4(1,3);
text(xtips1,ytips1_2,labels1_2,'HorizontalAlignment','center','FontSize',9,...
    'VerticalAlignment','top','Color',[0 0 0],'FontName','Times New Roman')
text(xtips2,ytips2_1,labels2_1,'HorizontalAlignment','center','FontSize',9,...
    'VerticalAlignment','top','FontName','Times New Roman')
text(xtips2,ytips2_2,labels2_2,'HorizontalAlignment','center','FontSize',9,...
    'VerticalAlignment','top','FontName','Times New Roman')
text(xtips3,ytips3_1,labels3_1,'HorizontalAlignment','center','FontSize',9,...
    'VerticalAlignment','top','FontName','Times New Roman')
colororder('default')
grid on
yyaxis left
ylabel('Daily Fuel Consumption [%]','FontName','Times New Roman')
ylim([0 110])
yticks(0:10:100)
xlabel('Battery bank service power [%]','FontName','Times New Roman')