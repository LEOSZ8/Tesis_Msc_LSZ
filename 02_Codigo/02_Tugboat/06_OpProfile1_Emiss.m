clc
clear
P_engine_continuous=1640;
P_engine_standby=2000;
P_engine_prime=1825;


Info=open("Info_30min.mat");
fuel1=open("rate_fuel1.mat");
Info2=open("Info_30min_2m.mat");
fuel2=open("rate_fuel2.mat");

T=Info.Info_30min(:,1);
Ptg1=Info.Info_30min(:,2);
sfc1=Info.Info_30min(:,3);
eff1=Info.Info_30min(:,4);
emm1=Info.Info_30min(:,5);

emm1=emm1;
Ptg1(9,1)= 3040;
eff1(9,1)=99.77;
emm1(9,1)= 2.18;
Ptg1=Ptg1.*1e-3;
rate_fuel1=fuel1.rate_fuel1;



Ptg2=Info2.Info_30min_2m(:,2);
sfc2=Info2.Info_30min_2m(:,3);
eff2=Info2.Info_30min_2m(:,4);
emm2=Info2.Info_30min_2m(:,5);
Ptg2=Ptg2.*1e-3;
rate_fuel2=fuel2.rate_fuel2;

t = tiledlayout(2,1,'TileSpacing','Compact');

nexttile
colororder({'#D95319','#0072BD'})
yyaxis right
bar(T,emm1,'FaceColor',[0.404, 0.431, 0.388],'EdgeColor','none');
ylabel('Emissions [t co_2]','FontSize',12,'FontName','Times New Roman')
ylim([0 2.4])
yticks(0:0.3:2.4)
yyaxis left
ylabel('Fuel [L/h]','FontSize',12,'FontName','Times New Roman')
ylim([0 1800])
yticks(0:225:1800)
xticklabels({'8:00',' ','10:00',' ','12:00',' ','14:00',' ','16:00',' ','18:00'})
grid on
ax = gca;
ax.XAxis.FontSize = 12; % or whatever
ax.XAxis.FontName = 'Times New Roman';

