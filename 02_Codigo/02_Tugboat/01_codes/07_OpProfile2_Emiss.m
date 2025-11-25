clc
clear

P_engine_prime=1825;



Info2=open("Info_30min_2m_1825kW.mat");


T=Info2.Info_30min_2m(:,1);
emm2=Info2.Info_30min_2m(:,4);



t = tiledlayout(2,1,'TileSpacing','Compact');

nexttile
colororder({'#D95319','#0072BD'})
yyaxis right
bar(T,emm2,'FaceColor',[0.404, 0.431, 0.388],'EdgeColor','none');
ylabel('Emissions [t CO_2]','FontSize',12,'FontName','Times New Roman')
ylim([0 2.5])
yticks(0:0.5:2.5)
yyaxis left
%stem(T,rate_fuel2,'*');
ylabel('Fuel [L/h]','FontSize',12,'FontName','Times New Roman')
ylim([0 1875])
yticks(0:375:1875)
xticklabels({'8:00',' ','10:00',' ','12:00',' ','14:00',' ','16:00',' ','18:00'})
grid on
ax = gca;
ax.XAxis.FontSize = 12; % or whatever
ax.XAxis.FontName = 'Times New Roman';




