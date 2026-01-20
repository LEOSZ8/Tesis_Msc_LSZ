soc = 100.*soc;
%%
t = t./3600;
%%
A = tiledlayout(4,1,'TileSpacing','Compact');

nexttile
plot(t,soc,'LineWidth',1.5,'Color',"#00994D")
ylim([50 110])
yticks(50:25:100)
%xlim([0 2])
grid on
ylabel('[%]','FontSize',16,'FontName','Times New Roman')
legend('SoC(t)','Location','southwest','Orientation','horizontal','FontName','Times New Roman','FontSize',12)

nexttile
plot(t,Vbat,'LineWidth',1.5,'Color',[0.42 0.68 0.87])
ylim([770 820])
yticks(770:10:820)
%xlim([0 2])
grid on
ylabel('[V]','FontSize',16,'FontName','Times New Roman')
legend('{V}_{batt}(t)','Location','northeast','Orientation','horizontal','FontName','Times New Roman','FontSize',12)

nexttile
plot(t,Ibat,'LineWidth',1.5,'Color',[0.51 0.87 0.46])
ylim([0 800])
yticks(0:200:800)
%xlim([0 2])
grid on
ylabel('[A]','FontSize',16,'FontName','Times New Roman')
legend('{I}_{batt}(t)','Location','northwest','Orientation','horizontal','FontName','Times New Roman','FontSize',12)

nexttile
plot(t,Pload,'LineWidth',1.5,'Color',[0.60,0.62,0.58])
ylim([0 600])
yticks(0:200:600)
%xlim([0 2])
grid on
ylabel('[kW]','FontSize',16,'FontName','Times New Roman')
xlabel('Time [h]','FontSize',16,'FontName','Times New Roman')
legend('{P}_{load}(t)','Location','northwest','Orientation','horizontal','FontName','Times New Roman','FontSize',12)