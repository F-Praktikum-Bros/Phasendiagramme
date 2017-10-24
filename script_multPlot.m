figure
ax1 = subplot(2,1,1);
x1 = [0 0.5 1];          % TbS DyTbS DyS
y1 = [2095 2114 2185];
plot(ax1,x1,y1)
title(ax1,'Subplot 1')
ylabel(ax1,'Values from -1 to 1')

ax2 = subplot(2,1,2);
x2 = [0 0.5 1];
y2 = [0 0.5 1];  
scatter(ax2,x,y2)
title(ax2,'Subplot 2')
ylabel(ax2,'Values from 0 to 1')