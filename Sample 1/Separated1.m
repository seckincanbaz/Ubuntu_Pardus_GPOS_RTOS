%IMAGE-1

filename = 'imagedataset1.csv';

subplot(2,2,1)
[num,txt,raw] = xlsread(filename,'B:B');
PGX = datetime(txt,'Format','mm:ss.SSS');
%PGX mean Pardus GPOS x-axis
PGY = xlsread(filename,'A:A'); 
%PGY mean Pardus GPOS y-axis
plot(PGX,PGY,'r','lineWidth',1);
title('Pardus GPOS')
xlabel('İşlem Süresi (Sn)')
ylabel('İşlemci Kullanımı (%)')
xtickangle(45)
%X-axis limits
%IMPORTANT: CHECK DATES BEFORE PLOT, CORRECT YEAR, MONTH AND DATE,
%OTHERWISE YOU WILL SEE A BLANK PAGE !!!!!!!!
tstart = datetime(2021,3,24,0,0,0)
tend = datetime(2021,3,24,0,1,20)
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

subplot(2,2,2)
[num,txt,raw] = xlsread(filename,'E:E');
PRX = datetime(txt,'Format','mm:ss.SSS');
%PRX mean Pardus RTOS y-axis
PRY = xlsread(filename,'D:D');
%PRY mean Pardus RTOS x-axis
plot(PRX,PRY,'g','lineWidth',1);
title('Pardus RTOS')
xlabel('İşlem Süresi (Sn)')
ylabel('İşlemci Kullanımı (%)')
xtickangle(45)
%X-axis limits
%IMPORTANT: CHECK DATES BEFORE PLOT, CORRECT YEAR, MONTH AND DATE,
%OTHERWISE YOU WILL SEE A BLANK PAGE !!!!!!!!
tstart = datetime(2021,3,24,0,0,0)
tend = datetime(2021,3,24,0,1,20)
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

subplot(2,2,3)
[num,txt,raw] = xlsread(filename,'H:H');
UGX = datetime(txt,'Format','mm:ss.SSS');
%UGX mean Ubuntu RTOS y-axis
UGY = xlsread(filename,'G:G');
%UGY mean Ubuntu GPOS x-axis
plot(UGX,UGY,'b','lineWidth',1);
title('Ubuntu GPOS')
xlabel('İşlem Süresi (Sn)')
ylabel('İşlemci Kullanımı (%)')
xtickangle(45)
%X-axis limits
%IMPORTANT: CHECK DATES BEFORE PLOT, CORRECT YEAR, MONTH AND DATE,
%OTHERWISE YOU WILL SEE A BLANK PAGE !!!!!!!!
tstart = datetime(2021,3,24,0,0,0)
tend = datetime(2021,3,24,0,1,20)
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

subplot(2,2,4)
[num,txt,raw] = xlsread(filename,'K:K');
URX = datetime(txt,'Format','mm:ss.SSS');
%URX mean Ubuntu RTOS y-axis
URY = xlsread(filename,'J:J');
%URY mean Ubuntu RTOS x-axis
plot(URX,URY,'k','lineWidth',1);
title('Ubuntu RTOS')
xlabel('İşlem Süresi (Sn)')
ylabel('İşlemci Kullanımı (%)')
xtickangle(45)
%X-axis limits
%IMPORTANT: CHECK DATES BEFORE PLOT, CORRECT YEAR, MONTH AND DATE,
%OTHERWISE YOU WILL SEE A BLANK PAGE !!!!!!!!
tstart = datetime(2021,3,24,0,0,0)
tend = datetime(2021,3,24,0,1,20)
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