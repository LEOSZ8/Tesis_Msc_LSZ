%% graficos stackeados
clear
clc


Percent_fuel1_emiss1= [39,44,17];
Percent_fuel2_emiss2= [19,31,50];
p=[Percent_fuel1_emiss1;Percent_fuel2_emiss2];

yya=({'\bf  0kW - 1000kW \newline\newline             39%','\bf 1000kW - 2000kW \newline\newline\newline               44%','\bf  2000kW - 3650kW \newline               17%'});
yyb=({'\bf 0kW - 1000kW \newline            19%','\bf 1000kW - 2000kW \newline\newline\newline               31%','\bf 2000kW - 3650kW \newline\newline\newline               50%'});
labels1_1=yya(1,1);
labels1_2=yya(1,2);
labels1_3=yya(1,3);
labels2_1=yyb(1,1);
labels2_2=yyb(1,2);
labels2_3=yyb(1,3);

colororder({'#D95319','#0072BD'})
yyaxis right
b=bar(p,'stacked');
ylabel('Daily Emissions [%]','FontSize',12,'FontName','Times New Roman')
ylim([0 110])
yticks(0:10:100)
xtips = b(1).XEndPoints;
xtips1_1=xtips(1,1);
xtips1_2=xtips(1,1);
xtips1_3=xtips(1,1);
xtips2_1=xtips(1,2);
xtips2_2=xtips(1,2);
xtips2_3=xtips(1,2);
b(1).FaceColor = [0.27,0.29,0.27];
ytips1 = b(1).YEndPoints;
ytips1_1 = ytips1(1,1);
ytips2_1 = ytips1(1,2);
ytips2 = b(2).YEndPoints;
ytips1_2 = ytips2(1,1);
ytips2_2 = ytips2(1,2);
b(2).FaceColor = [0.404, 0.431, 0.388];
ytips3 = b(3).YEndPoints;
ytips1_3 = ytips3(1,1);
ytips2_3 = ytips3(1,2);
b(3).FaceColor = [0.6,0.62,0.58];
text(xtips1_1,ytips1_1,labels1_1,'HorizontalAlignment','center','FontSize',9,...
    'VerticalAlignment','top','Color',[1 1 1],'FontName','Times New Roman')
text(xtips1_2,ytips1_2,labels1_2,'HorizontalAlignment','center','FontSize',9,...
    'VerticalAlignment','top','Color',[1 1 1],'FontName','Times New Roman')
text(xtips1_3,ytips1_3,labels1_3,'HorizontalAlignment','center','FontSize',9,...
    'VerticalAlignment','top','FontName','Times New Roman')
text(xtips2_1,ytips2_1,labels2_1,'HorizontalAlignment','center','FontSize',9,...
    'VerticalAlignment','top','Color',[1 1 1],'FontName','Times New Roman')
text(xtips2_2,ytips2_2,labels2_2,'HorizontalAlignment','center','FontSize',9,...
    'VerticalAlignment','top','Color',[1 1 1],'FontName','Times New Roman')
text(xtips2_3,ytips2_3,labels2_3,'HorizontalAlignment','center','FontSize',9,...
    'VerticalAlignment','top','FontName','Times New Roman')
grid on
yyaxis left
ylabel('Daily Fuel Consumption [%]','FontSize',12,'FontName','Times New Roman')
ylim([0 110])
yticks(0:10:100)
xlabel('Service operation: Number of maneuvers (-)','FontSize',12,'FontName','Times New Roman')
