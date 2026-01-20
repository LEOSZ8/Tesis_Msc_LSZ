A = tiledlayout(4,1,'TileSpacing','Compact');

nexttile
plot(t,IL,'LineWidth',1.5,'Color',[0.51 0.87 0.46])
ylim([-60 120])
yticks(-60:30:120)
xlim([0 2])
grid on
ylabel('[A]','FontSize',16,'FontName','Times New Roman')
legend('{I}_{L}(t)','Location','northwest','Orientation','horizontal','FontName','Times New Roman','FontSize',12)

nexttile
plot(t,Vc1,'LineWidth',1.5,'Color',[0.42 0.68 0.87])
ylim([0 600])
yticks(100:200:600)
xlim([0 2])
grid on
ylabel('[V]','FontSize',16,'FontName','Times New Roman')
legend('{V}_{c1}(t), {V}_{c2}(t)','Location','southeast','Orientation','horizontal','FontName','Times New Roman','FontSize',12)

nexttile
plot(t,Vo_ref,':','LineWidth',1.5)
hold on
plot(t,Vo,'LineWidth',1.5,'Color',[0.42 0.68 0.87])
ylim([0 1200])
yticks(200:400:1200)
xlim([0 2])
grid on
ylabel('[V]','FontSize',16,'FontName','Times New Roman')
legend('{V}_{ref}(t)','{V}_{o}(t)','Location','southeast','Orientation','horizontal','FontName','Times New Roman','FontSize',12)

nexttile
plot(t,Pout,'LineWidth',1.5,'Color',"#00994D")
ylim([0 60])
yticks(10:20:60)
xlim([0 2])
grid on
ylabel('[kW]','FontSize',16,'FontName','Times New Roman')
xlabel('Time [s]','FontSize',16,'FontName','Times New Roman')
legend('{P}_{out}(t)','Location','northwest','Orientation','horizontal','FontName','Times New Roman','FontSize',12)