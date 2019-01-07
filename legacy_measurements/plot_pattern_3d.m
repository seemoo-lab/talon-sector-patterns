%          ###########   ###########   ##########    ##########
%         ############  ############  ############  ############
%         ##            ##            ##   ##   ##  ##        ##
%         ##            ##            ##   ##   ##  ##        ##
%         ###########   ####  ######  ##   ##   ##  ##    ######
%          ###########  ####  #       ##   ##   ##  ##    #    #
%                   ##  ##    ######  ##   ##   ##  ##    #    #
%                   ##  ##    #       ##   ##   ##  ##    #    #
%         ############  ##### ######  ##   ##   ##  ##### ######
%         ###########    ###########  ##   ##   ##   ##########
%
%            S E C U R E   M O B I L E   N E T W O R K I N G
% 
% 
% plot_pattern_3d - Plot 3D Antenna Sector Patterns
%
% Other m-files required: vectorplot.m
% Subfunctions: none
% MAT-files required: sectorpattern_3d_sta.mat, sectorpattern_3d_ap.mat
%
% Author: Daniel Steinmetzer
% email address: dsteinmetzer@seemoo.tu-darmstadt.de
% Website: https://ww.seemoo.de
% Date: 2017

%------------- BEGIN CODE --------------

clear; close all;
p_sta = load('sectorpattern_3d_sta.mat');
p_ap = load('sectorpattern_3d_ap.mat');

shift = min(min(min(p_sta.pattern_snr)));
scale = (64 - 1) / (max(max(max(p_sta.pattern_snr))) - shift);

for s = 1:numel(p_sta.sector_set)
    sector_id = string(p_sta.sector_set(s));
    
    figure(s)
    vectorplot( ...
        [p_sta.az(1,:) (p_sta.az(1,end) + mean(diff(p_sta.az(1,:))))], ...
        [p_sta.el(:,1); (p_sta.el(end,1) + mean(diff(p_sta.el(:,1))))], ...
        round((p_sta.pattern_snr(:,:,s) - shift) * scale + 1), ...
        false ...
    );
    title(strcat("Sector ", sector_id))
    caxis([-8, 17])
    colormap(gca,parula)
    if(s >30)
        xlabel('azimuth')
    end
    if (mod(s-1,5)==0)
        ylabel('elevation')
    end
    
    if(mod(s,5)==0)
        c = colorbar;
        ylabel(c, 'SNR')
    end  
end


s = 34;
figure(35)
vectorplot( ...
    [p_ap.az(1,:) (p_ap.az(1,end) + mean(diff(p_ap.az(1,:))))], ...
    [p_ap.el(:,1); (p_ap.el(end,1) + mean(diff(p_ap.el(:,1))))], ...
    round((p_ap.pattern_snr(:,:,s) - shift) * scale + 1), ...
    false ...
);
title(strcat("Sector RX"))
caxis([-8, 17])
colormap(gca,parula)
xlabel('azimuth')
% ylabel('elevation')
c = colorbar;
ylabel(c, 'SNR')

%------------- END OF CODE --------------
