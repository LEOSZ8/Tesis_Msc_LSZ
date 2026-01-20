A = tiledlayout(4,1,'TileSpacing','Compact');

nexttile
plot(t,Iout,'LineWidth',1.5,'Color',[0.51 0.87 0.46])
ylim([0 60])
yticks(0:10:60)
xlim([0 7])
grid on
ylabel('[A]','FontSize',16,'FontName','Times New Roman')
legend('{I}_{TLBBC}(t)','Location','northwest','Orientation','horizontal','FontName','Times New Roman','FontSize',14)

nexttile
plot(t,Vdc1,'LineWidth',1.5,'Color',[0.42 0.68 0.87])
ylim([0 1200])
yticks(0:200:1200)
xlim([0 7])
grid on
ylabel('[V]','FontSize',16,'FontName','Times New Roman')
legend('{V}_{DC-DC1}(t)','Location','southeast','Orientation','horizontal','FontName','Times New Roman','FontSize',14)

nexttile
plot(t,Vdc2,'LineWidth',1.5,'Color',[0.42 0.68 0.87])
ylim([0 1200])
yticks(0:200:1200)
xlim([0 7])
grid on
ylabel('[V]','FontSize',16,'FontName','Times New Roman')
legend('{V}_{DC-DC2}(t)','Location','southeast','Orientation','horizontal','FontName','Times New Roman','FontSize',14)

nexttile
plot(t,Pout,'LineWidth',1.5,'Color',"#00994D")
ylim([0 600])
yticks(0:100:600)
xlim([0 7])
grid on
ylabel('[kW]','FontSize',16,'FontName','Times New Roman')
xlabel('Time [s]','FontSize',16,'FontName','Times New Roman')
legend('{P}_{BusDC}(t)','Location','northwest','Orientation','horizontal','FontName','Times New Roman','FontSize',14)