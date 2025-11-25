clc
clear

P_engine_prime=1825;

P_engine1  = (2e-3)*P_engine_prime*[    0.05,   0.15,    0.56,     0.72,   0.45,     0.25,    0.16,    0.15,   0.12,   0.05,    0]';
P_engine1_kW   =  2*P_engine_prime*[    0.05,   0.15,    0.56,     0.72,   0.45,     0.25,    0.16,    0.15,   0.12,   0.05,    0]';
sfc_engine1    =                 2*[     335,  291.1,     223,    218.5,  230.1,   261.3,   287.6,   291.1,    302,   335,    0]';
Time           =                   [      8,      9,      10,       11,      12,      13,      14,      15,     16,     17,   18]';   






%

CF = 3.206;
for j=1:(length(Time))
    EMM1(j,1)=sfc_engine1(j,1)*P_engine1_kW(j,1)*CF/(1e6);
end


matrix=[EMM1,sfc_engine1,P_engine1];

%

t = tiledlayout(2,1,'TileSpacing','Compact');

nexttile
b1=bar(Time,P_engine1);
b1.FaceColor = 'flat';
b1.FaceColor = 'flat';
b1.LineStyle = "-";
b1.EdgeColor = [0,0,0];
b1.CData(1,:) = [0.60,0.62,0.58];
b1.CData(2,:) = [0.60,0.62,0.58];
b1.CData(3,:) = [0.60,0.62,0.58];
b1.CData(4,:) = [0.60,0.62,0.58];
b1.CData(5,:) = [0.60,0.62,0.58];
b1.CData(6,:) = [0.60,0.62,0.58];
b1.CData(7,:) = [0.60,0.62,0.58];
b1.CData(8,:) = [0.60,0.62,0.58];
b1.CData(9,:) = [0.60,0.62,0.58];
b1.CData(10,:) = [0.60,0.62,0.58];
b1.CData(11,:) = [0.60,0.62,0.58];
xticklabels({'8:00',' ','10:00',' ','12:00',' ','14:00',' ','16:00',' ','18:00'})
ylabel('[MW]','FontSize',18,'FontName','Times New Roman')
ylim([0 3])
yticks(0.5:1:3.5)
grid on
ax = gca;
ax.XAxis.FontSize = 14; % or whatever
ax.XAxis.FontName = 'Times New Roman';
ax.YAxis.FontSize = 14; % or whatever
ax.YAxis.FontName = 'Times New Roman';
title ('\bf Perfil Operacional - Una maniobra','FontSize',16,'FontName','Times New Roman')



nexttile
b3=bar(Time,EMM1);
b3.FaceColor = 'flat';
b3.EdgeColor = 'none';
b3.CData(1,:) = [0.404, 0.431, 0.388];
b3.CData(2,:) = [0.404, 0.431, 0.388];
b3.CData(3,:) = [0.404, 0.431, 0.388];
b3.CData(4,:) = [0.404, 0.431, 0.388];
b3.CData(5,:) = [0.404, 0.431, 0.388];
b3.CData(6,:) = [0.404, 0.431, 0.388];
b3.CData(7,:) = [0.404, 0.431, 0.388];
b3.CData(8,:) = [0.404, 0.431, 0.388];
b3.CData(9,:) = [0.404, 0.431, 0.388];
b3.CData(10,:) = [0.404, 0.431, 0.388];
b3.CData(11,:) = [0.404, 0.431, 0.388];
xticklabels({'8:00',' ','10:00',' ','12:00',' ','14:00',' ','16:00',' ','18:00'})
yticks(0.7:1.4:4.2)
ylim([0 4.2])
ylabel(' [t CO_2]','FontSize',18,'FontName','Times New Roman')
grid on
ax = gca;
ax.XAxis.FontSize = 14; % or whatever
ax.XAxis.FontName = 'Times New Roman';
ax.YAxis.FontSize = 14; % or whatever
ax.YAxis.FontName = 'Times New Roman';









