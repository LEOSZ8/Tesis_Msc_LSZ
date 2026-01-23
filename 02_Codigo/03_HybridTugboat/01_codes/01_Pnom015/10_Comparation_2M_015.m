clear
clc

% ct: conventional tugboat
ct = [0.50,0.31,0.19];
labels1 = {'\bf 2000 kW - 3650 kW\newline           (50%)','\bf 1000 kW - 2000 kW\newline              (31%)','\bf 0 kW - 1000 kW \newline         (19%)'};
p = pie(ct,labels1);
set(findobj(p,'type','text'),'FontName','times','FontSize',12)  % THIS LINE ADDED
p(1).FaceColor=[0.6,0.62,0.58];
p(3).FaceColor=[0.404, 0.431, 0.388];
p(5).FaceColor=[0.27,0.29,0.27];
title("Conventional Tugboat : \newline   6,385 L (17 t CO_2)\newline  ","FontName",'Times New Roman','FontSize',18)

%%
clear
clc
% ht: hybrid tugboat
ht = [0.50,0.13, 0.04, 0.33];
labels2 = {'\bf 2000 kW - 3650 kW\newline             (75%)','\bf 1000 kW - 2000 kW\newline              (19%)','\bf 0 kW - 1000 kW (6%)','\bf        BESS\newlineTotal reduction \newline        (33%)'};
explode = [0,0,0,1];
p = pie(ht,explode,labels2)
set(findobj(p,'type','text'),'FontName','times','FontSize',12)  % THIS LINE ADDED
p(1).FaceColor=[0.60,0.62,0.58];
p(3).FaceColor=[0.42 0.68 0.87];
p(5).FaceColor=[0.42 0.68 0.87];
p(7).FaceColor=[0.51 0.87 0.46];
p(7).EdgeColor=[0.51 0.87 0.46];%'#00994D';
title("  Hybrid Tugboat :\newline4,268 L (11.4 t CO_2)\newline  ","FontName",'Times New Roman','FontSize',18)




