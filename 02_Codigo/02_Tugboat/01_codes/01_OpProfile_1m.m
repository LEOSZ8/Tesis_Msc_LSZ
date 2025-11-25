clc
clear
P_engine_prime=1825;


Info=open("Info_30min_1825kW.mat");

T=Info.Info_30min(:,1);
Ptg1=Info.Info_30min(:,2);



Ptg1=Ptg1.*1e-3;

t = tiledlayout(2,1,'TileSpacing','Compact');

nexttile
b=bar(T,Ptg1);
b.LineWidth = 1;
b.FaceColor = 'flat';
b.LineStyle = "-";
b.EdgeColor = [0,0,0];
b.CData(1,:) = [0.60,0.62,0.58];
b.CData(2,:) = [0.60,0.62,0.58];
b.CData(3,:) = [0.60,0.62,0.58];
b.CData(4,:) = [0.60,0.62,0.58];
b.CData(5,:) = [0.60,0.62,0.58];
b.CData(6,:) = [0.60,0.62,0.58];
b.CData(7,:) = [0.60,0.62,0.58];
b.CData(8,:) = [0.60,0.62,0.58];
b.CData(9,:) = [0.60,0.62,0.58];
b.CData(10,:) = [0.60,0.62,0.58];
b.CData(11,:) = [0.60,0.62,0.58];
b.CData(12,:) = [0.60,0.62,0.58];
b.CData(13,:) = [0.60,0.62,0.58];
b.CData(14,:) = [0.60,0.62,0.58];
b.CData(15,:) = [0.60,0.62,0.58];
b.CData(16,:) = [0.60,0.62,0.58];
b.CData(17,:) = [0.60,0.62,0.58];
b.CData(18,:) = [0.60,0.62,0.58];
b.CData(19,:) = [0.60,0.62,0.58];
b.CData(20,:) = [0.60,0.62,0.58];
ylabel('Service Power [MW]','FontSize',12,'FontName','Times New Roman')
ylim([0 4])
yticks(0:0.5:4)
grid on
xticklabels({'8:00',' ','10:00',' ','12:00',' ','14:00',' ','16:00',' ','18:00'})
ax = gca;
ax.XAxis.FontSize = 12; % or whatever
ax.XAxis.FontName = 'Times New Roman';

