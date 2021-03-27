%IMAGE-1


filename = 'imagedataset3.csv';

[num,txt,raw] = xlsread(filename,'B:B');
PGX = datetime(txt,'Format','mm:ss.SSS');
%PGX mean Pardus GPOS x-axis
PGY = xlsread(filename,'A:A'); 
%PGY mean Pardus GPOS y-axis
plot(PGX,PGY,'r','lineWidth',1);
hold on;

[num,txt,raw] = xlsread(filename,'E:E');
PRX = datetime(txt,'Format','mm:ss.SSS');
%PRX mean Pardus RTOS y-axis
PRY = xlsread(filename,'D:D');
%PRY mean Pardus RTOS x-axis
plot(PRX,PRY,'g','lineWidth',1);
hold on;

[num,txt,raw] = xlsread(filename,'H:H');
UGX = datetime(txt,'Format','mm:ss.SSS');
%UGX mean Ubuntu RTOS y-axis
UGY = xlsread(filename,'G:G');
%UGY mean Ubuntu GPOS x-axis
plot(UGX,UGY,'b','lineWidth',1);
hold on;

[num,txt,raw] = xlsread(filename,'K:K');
URX = datetime(txt,'Format','mm:ss.SSS');
%URX mean Ubuntu RTOS y-axis
URY = xlsread(filename,'J:J');
%URY mean Ubuntu RTOS x-axis
plot(URX,URY,'k','lineWidth',1);


title('Pardus&Ubuntu RTOS&GPOS')
xlabel('İşlem Süresi (Sn)')
ylabel('İşlemci Kullanımı (%)')
xtickangle(45)
%X-axis limits
%IMPORTANT: CHECK DATES BEFORE PLOT, CORRECT YEAR, MONTH AND DATE,
%OTHERWISE YOU WILL SEE A BLANK PAGE !!!!!!!!
tstart = datetime(2021,3,24,0,0,0)
tend = datetime(2021,3,24,0,1,00)
xtickformat('mm:ss')
xlim([tstart tend])
%divide x-axis into 11 equal parts
xl = xlim
xt = linspace(xl(1), xl(end), 24);
xticks(xt);
%y-axis limits and divide y-axis into 10 equal parts
ylim([0 100])
yticks(0:10:100)

grid on
grid('minor')

annotation('textbox',[0.9140 0.3385 0.05937 0.02824],'String','UBUNTU-GPOS','EdgeColor','none','Color','blue')
annotation('textbox',[0.9140 0.3085 0.05937 0.02824],'String','UBUNTU-RTOS','EdgeColor','none','Color','black')
annotation('textbox',[0.9140 0.2785 0.05937 0.02824],'String','PARDUS-GPOS','EdgeColor','none','Color','red')
annotation('textbox',[0.9140 0.2485 0.05937 0.02824],'String','PARDUS-RTOS','EdgeColor','none','Color','green')
