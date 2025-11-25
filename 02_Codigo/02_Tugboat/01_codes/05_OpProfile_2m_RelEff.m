clc
clear

P_engine_prime=1825;



Info2=open("Info_30min_2m_1825kW.mat");


T=Info2.Info_30min_2m(:,1);
Ptg2=Info2.Info_30min_2m(:,2);
eff2=Info2.Info_30min_2m(:,3);
Ptg2=Ptg2.*1e-3;




t = tiledlayout(2,1,'TileSpacing','Compact');

nexttile
colororder({'#D95319','#0072BD'})
yyaxis right
bar(T,Ptg2);
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
ax = gca;
ax.XAxis.FontSize = 12; % or whatever
ax.XAxis.FontName = 'Times New Roman';
