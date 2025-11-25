clc
clear

P_engine_prime=1825;


Info=open("Info_30min_1825kW.mat");


T=Info.Info_30min(:,1);
Ptg1=Info.Info_30min(:,2);
eff1=Info.Info_30min(:,3);

Ptg1=Ptg1.*1e-3;


t = tiledlayout(2,1,'TileSpacing','Compact');

nexttile
colororder({'#D95319','#0072BD'})
yyaxis right
bar(T,Ptg1);
ylabel('Service Power [MW]','FontSize',12,'FontName','Times New Roman')
ylim([0 4.4])
yticks(0:1:4.4)
grid on
yyaxis left
stem(T,eff1,'.')
ylabel('Relative Efficiency [%]','FontSize',12,'FontName','Times New Roman')
ylim([0 110])
yticks(0:10:100)
xticklabels({'8:00',' ','10:00',' ','12:00',' ','14:00',' ','16:00',' ','18:00'})
ax = gca;
ax.XAxis.FontSize = 12; % or whatever
ax.XAxis.FontName = 'Times New Roman';

