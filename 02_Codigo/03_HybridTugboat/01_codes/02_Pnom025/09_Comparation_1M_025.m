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
ht = [0.17,0.19];
labels2 = {'\bf 2000 kW - 3650 kW\newline             (47%)','\bf 1000 kW - 2000 kW\newline              (53%)'};
p = pie(ht,labels2)
set(findobj(p,'type','text'),'FontName','times','FontSize',12)  % THIS LINE ADDED
p(1).FaceColor=[0.60,0.62,0.58];
p(3).FaceColor=[0.42 0.68 0.87];
title("Hybrid Tugboat :\newline1,929 L (5.1 t CO_2)\newline  ","FontName",'Times New Roman','FontSize',18)




