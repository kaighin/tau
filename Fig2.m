
coastMap = load('coast');

load tau

fig_num = 1;
figure(fig_num);
clf
set(fig_num,'position',[200 100 950 500]);
pcolor(lon,lat,tau_median)
shading flat
hold on
geoshow(coastMap.lat,coastMap.long,'linewidth',1,'color','k');
xlabel('Longitude'); ylabel('Latitude');
%title('Median \tau');
cmap = flipud(colormap('parula'));
colormap(cmap)
caxis([0 20]);
h = colorbar;
set(h,'YTick',[0:2:20],'YTickLabel',{'0','2','4','6','8','10','12','14','16','18','>20'});
ylim([-60 85]);
xlim([-180 180]);
xtl = {'150^o W','100^o W','50^o W','0^o','50^o E',...
    '100^o E','150^o E'};
ytl = {'60^o S','40^o S','20^o S','0^o','20^o N',...
    '40^o N','60^o N','80^o N'};
set(gca, ...
    'Box'         , 'on'     , ...
    'XMinorTick'  , 'off'      , ...
    'YMinorTick'  , 'off'      , ...
    'YGrid'       , 'off'      , ...
    'LineWidth'   , 1         , ...
    'fontsize',      20,... %12,...
    'XtickLabel',xtl,...
    'yticklabel',ytl,'fontweight','b');