clc
clear




Info2=open("Info_30min_HybProp_2m_025.mat");


T=Info2.Info_30min_2m(:,1);
PBatt2=[Info2.Info_30min_2m(1:3,2); 0;0;0;0 ;Info2.Info_30min_2m(8:15,2); 0;0;0;0;0;0 ];
PAux2=[0;0;0;Info2.Info_30min_2m(4,2);0;0;Info2.Info_30min_2m(7,2); 0;0;0;0;0;0;0;0;Info2.Info_30min_2m(16,2);0;0;Info2.Info_30min_2m(19:20,2);0];
PDiesel2=[0;0;0;0;Info2.Info_30min_2m(5:6,2);0;0;0;0;0;0;0;0;0;0;Info2.Info_30min_2m(17:18,2);0;0;0];

PBatt2=PBatt2.*1e-3;
PAux2=PAux2.*1e-3;
PDiesel2=PDiesel2.*1e-3;

Ptg2=Info2.Info_30min_2m(:,2);
eff2=Info2.Info_30min_2m(:,3);
Ptg2=Ptg2.*1e-3;




t = tiledlayout(2,1,'TileSpacing','Compact');

nexttile
colororder({'#D95319','#0072BD'})
yyaxis right
%bar(T,Ptg2);
b(1)=bar(T,PBatt2,'FaceColor',[0.51 0.87 0.46],'DisplayName','Batt');
hold on
b(2)=bar(T,PAux2,'FaceColor',[0.42 0.68 0.87],'DisplayName','GenSet');
hold on
b(3)=bar(T,PDiesel2,'FaceColor',[0.60,0.62,0.58],'DisplayName','Diesel');
ylabel('Service Power [MW]','FontSize',12,'FontName','Times New Roman')
ylim([0 4.4])
yticks(0:1:4.4)
grid on
yyaxis left
stem(T,eff2,'.')
ylabel('Relative Efficiency [%]','FontSize',12,'FontName','Times New Roman')
ylim([0 110])
yticks(0:10:100)
xticklabels({'8:00',' ','10:00',' ','12:00',' ','14:00',' ','16:00',' ','18:00'})
legend([b(1),b(2),b(3)],'Location','northoutside','Orientation','horizontal')
ax = gca;
ax.XAxis.FontSize = 12; % or whatever
ax.XAxis.FontName = 'Times New Roman';