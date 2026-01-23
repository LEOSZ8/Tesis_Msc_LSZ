clear
clc

% ct: conventional tugboat
ct = [0.17,0.44,0.39];
labels1 = {'\bf 2000 kW - 3650 kW\newline           (17%)','\bf 1000 kW - 2000 kW\newline              (44%)','\bf 0 kW - 1000 kW \newline         (39%)'};
p = pie(ct,labels1);
set(findobj(p,'type','text'),'FontName','times','FontSize',12)  % THIS LINE ADDED
p(1).FaceColor=[0.6,0.62,0.58];
p(3).FaceColor=[0.404, 0.431, 0.388];
p(5).FaceColor=[0.27,0.29,0.27];
title("Conventional Tugboat : \newline   5,366 L (14.3 t CO_2)\newline  ","FontName",'Times New Roman','FontSize',18)

%%
clear
clc
% ht: hybrid tugboat
ht = [0.17,0.19,0.09,0.55];
labels2 = {'\bf 2000 kW - 3650 kW\newline             (38%)','\bf 1000 kW - 2000 kW\newline              (42%)','\bf 0 kW - 1000 kW\newline              (20%)','\bf BESS\newline (55%)'};
explode = [0,0,0,1];
p = pie(ht,explode,labels2)
set(findobj(p,'type','text'),'FontName','times','FontSize',12)  % THIS LINE ADDED
p(1).FaceColor=[0.60,0.62,0.58];
p(3).FaceColor=[0.42 0.68 0.87];
p(5).FaceColor=[0.42 0.68 0.87];
p(7).FaceColor=[0.51 0.87 0.46];
title("Hybrid Tugboat :\newline2,406 L (6.4 t CO_2)\newline  ","FontName",'Times New Roman','FontSize',18)




