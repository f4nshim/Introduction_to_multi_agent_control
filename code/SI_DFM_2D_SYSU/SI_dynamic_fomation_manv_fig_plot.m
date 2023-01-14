% plot SYSU 
clear
clc
close all
load '../SI_dynamic_fomation_manv_results.mat'
fs = 12; % Font size in the figure
avgMs = 5; % Average marker size
lw = 3.5; % Linewidth
tf = max(t);

Adj_plot_s = [0, 1, 1, 0, 0, 0; ...
    1, 0, 0, 0, 0, 0; ...
    1, 0, 0, 0, 0, 1; ...
    0, 0, 0, 0, 1, 0; ...
    0, 0, 0, 1, 0, 1; ...
    0, 0, 1, 0, 1, 0];

Adj_plot_y = [0, 0, 1, 0, 0, 0; ...
    0, 0, 1, 0, 0, 0; ...
    1, 1, 0, 1, 0, 0; ...
    0, 0, 1, 0, 1, 0; ...
    0, 0, 0, 1, 0, 1; ...
    0, 0, 0, 0, 1, 0];

Adj_plot_u = [0, 0, 1, 0, 0, 0; ...
    0, 0, 0, 0, 0, 1; ...
    1, 0, 0, 1, 0, 0; ...
    0, 0, 1, 0, 1, 0; ...
    0, 0, 0, 1, 0, 1; ...
    0, 1, 0, 0, 1, 0];

figure
set (gcf,'position', [200,300,800,600]);
xlim([-1, 8]);
ylim([-2.1, 4]);
pic_num=1;
cla;
hold on
for ii = 1:1:length(t)
    if ii==1
        for i0 = 1:n - 1
            for j0 = i0 + 1:n
                if Adj_plot_s(i0,j0)==1
                    line([xx(ii, i0), xx(ii, j0)], [yy(ii, i0), yy(ii, j0)], ...
                    'LineWidth', lw)
                    F=getframe(gcf);
                    I=frame2im(F);
                    [I,map]=rgb2ind(I,256);
                    if pic_num == 1
                        imwrite(I,map,'test.gif','gif','Loopcount',inf,'DelayTime',0.02);
                    else
                        imwrite(I,map,'test.gif','gif','WriteMode','append','DelayTime',0.02);
                    end
                    pic_num=pic_num+1;
                end
                if Adj_plot_s(i0,j0)==1
                    line([xx_Y(ii, i0), xx_Y(ii, j0)], [yy_Y(ii, i0), yy_Y(ii, j0)], ...
                        'LineWidth', lw)
                    F=getframe(gcf);
                    I=frame2im(F);
                    [I,map]=rgb2ind(I,256);
                    if pic_num == 1
                        imwrite(I,map,'test.gif','gif','Loopcount',inf,'DelayTime',0.02);
                    else
                        imwrite(I,map,'test.gif','gif','WriteMode','append','DelayTime',0.02);
                    end
                    pic_num=pic_num+1;
                end
                if Adj_plot_y(i0, j0) == 1
                    line([xx_S(ii, i0), xx_S(ii, j0)], [yy_S(ii, i0), yy_S(ii, j0)], ...
                        'LineWidth', lw)
                    F=getframe(gcf);
                    I=frame2im(F);
                    [I,map]=rgb2ind(I,256);
                    if pic_num == 1
                        imwrite(I,map,'test.gif','gif','Loopcount',inf,'DelayTime',0.02);
                    else
                        imwrite(I,map,'test.gif','gif','WriteMode','append','DelayTime',0.02);
                    end
                    pic_num=pic_num+1;
                end
                if Adj_plot_s(i0, j0) == 1
                    line([xx_U(ii, i0), xx_U(ii, j0)], [yy_U(ii, i0), yy_U(ii, j0)], ...
                        'LineWidth', lw)
                    F=getframe(gcf);
                    I=frame2im(F);
                    [I,map]=rgb2ind(I,256);
                    if pic_num == 1
                        imwrite(I,map,'test.gif','gif','Loopcount',inf,'DelayTime',0.02);
                    else
                        imwrite(I,map,'test.gif','gif','WriteMode','append','DelayTime',0.02);
                    end
                    pic_num=pic_num+1;
                end
            end
        end
    end
    if ii==length(t)
         for i0 = 1:n - 1
            for j0 = i0 + 1:n
                if Adj_plot_u(i0, j0) == 1
                    line([xx_U(ii, i0), xx_U(ii, j0)], [yy_U(ii, i0), yy_U(ii, j0)], ...
                        'LineWidth', lw)
                    F=getframe(gcf);
                    I=frame2im(F);
                    [I,map]=rgb2ind(I,256);
                    if pic_num == 1
                        imwrite(I,map,'test.gif','gif','Loopcount',inf,'DelayTime',0.02);
                    else
                        imwrite(I,map,'test.gif','gif','WriteMode','append','DelayTime',0.02);
                    end
                    pic_num=pic_num+1;
                end
            end
         end
    end
end
for ii = 1:1:length(t)
    for jj = 1:n
        plot(xx(ii, jj), yy(ii, jj), 'cs', 'MarkerSize', 1.4*avgMs);
        plot(xx(length(t), jj), yy(length(t), jj), 'ro', ...
        'MarkerSize', avgMs);
        drawnow;
        F=getframe(gcf);
        I=frame2im(F);
        [I,map]=rgb2ind(I,256);
        if pic_num == 1
            imwrite(I,map,'test.gif','gif','Loopcount',inf,'DelayTime',0.02);
        else
            imwrite(I,map,'test.gif','gif','WriteMode','append','DelayTime',0.02);
        end
        pic_num=pic_num+1;
    end
end
for ii = 1:1:length(t)
    for jj = 1:n
        plot(xx_Y(ii, jj), yy_Y(ii, jj), 'bs', 'MarkerSize', 1.4*avgMs);
        plot(xx_Y(length(t), jj), yy_Y(length(t), jj), 'ro', ...
        'MarkerSize', avgMs);
        F=getframe(gcf);
        I=frame2im(F);
        [I,map]=rgb2ind(I,256);
        if pic_num == 1
            imwrite(I,map,'test.gif','gif','Loopcount',inf,'DelayTime',0.02);
        else
            imwrite(I,map,'test.gif','gif','WriteMode','append','DelayTime',0.02);
        end
        pic_num=pic_num+1;
    end
end
for ii = 1:1:length(t)
    for jj = 1:n
        plot(xx_S(ii, jj), yy_S(ii, jj), 'ms', 'MarkerSize', 1.4*avgMs);
        plot(xx_S(length(t), jj), yy_S(length(t), jj), 'ro', ...
        'MarkerSize', avgMs);
        F=getframe(gcf);
        I=frame2im(F);
        [I,map]=rgb2ind(I,256);
        if pic_num == 1
            imwrite(I,map,'test.gif','gif','Loopcount',inf,'DelayTime',0.02);
        else
            imwrite(I,map,'test.gif','gif','WriteMode','append','DelayTime',0.02);
        end
        pic_num=pic_num+1;
    end
end
for ii = 1:1:length(t)
    for jj = 1:n
        plot(xx_U(ii, jj), yy_U(ii, jj), 'ks', 'MarkerSize', 1.4*avgMs);
        plot(xx_U(length(t), jj), yy_U(length(t), jj), 'ro', ...
        'MarkerSize', avgMs);
        F=getframe(gcf);
        I=frame2im(F);
        [I,map]=rgb2ind(I,256);
        if pic_num == 1
            imwrite(I,map,'test.gif','gif','Loopcount',inf,'DelayTime',0.02);
        else
            imwrite(I,map,'test.gif','gif','WriteMode','append','DelayTime',0.02);
        end
        pic_num=pic_num+1;
    end
end
