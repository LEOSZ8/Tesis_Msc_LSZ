clc
clear



Info=open("Info_30min_HybProp_1m_025.mat");


T=Info.Info_30min(:,1);
PBatt1=[0;0;Info.Info_30min(3:6,2);0;0;0;0;0;0;Info.Info_30min(13:21,2)];
PAux1=[0;0;0;0;0;0;Info.Info_30min(7:8,2);0;Info.Info_30min(10:12,2);0;0;0;0;0;0;0;0;0];
PDiesel1=[0;0;0;0;0;0;0;0;Info.Info_30min(9,2);0;0;0;0;0;0;0;0;0;0;0;0];

eff1=Info.Info_30min(:,3);

PBatt1=PBatt1.*1e-3;
PAux1=PAux1.*1e-3;
PDiesel1=PDiesel1.*1e-3;


t = tiledlayout(2,1,'TileSpacing','Compact');

nexttile
colororder({'#D95319','#0072BD'})
yyaxis right
b(1)=bar(T,PBatt1,'FaceColor',[0.51 0.87 0.46],'DisplayName','Batt');
hold on
b(2)=bar(T,PAux1,'FaceColor',[0.42 0.68 0.87],'DisplayName','GenSet');
hold on
b(3)=bar(T,PDiesel1,'FaceColor',[0.60,0.62,0.58],'DisplayName','Diesel');
ylabel('Service Power [MW]','FontSize',12,'FontName','Times New Roman')
ylim([0 4.4])
yticks(0:1:4.4)
grid on
yyaxis left
stem(T,eff1,'.')
ylabel('Relative Efficiency [%]','FontSize',12,'FontName','Times New Roman')
ylim([0 110])
yticks(0:10:100)
legend([b(1),b(2),b(3)],'Location','northoutside','Orientation','horizontal')
xticklabels({'8:00',' ','10:00',' ','12:00',' ','14:00',' ','16:00',' ','18:00'})
ax = gca;
ax.XAxis.FontSize = 12; % or whatever
ax.XAxis.FontName = 'Times New Roman';

