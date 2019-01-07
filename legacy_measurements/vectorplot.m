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

function [ output_args ] = vectorplot( xbin, ybin, histvalues, scaled )
%vectorplot - Generate a Vector Plot Diagram
%
% Syntax:  [ output_args ] = vectorplot( xbin, ybin, histvalues, scaled )
%
% Inputs:
%    xbin - Description
%    ybin - Description
%    histvalues - Description
%    scaled - Description
%
% Outputs:
%    output_args - Description
%
%
% Other m-files required: none
% Subfunctions: none
% MAT-files required: none
%
%
% Author: Matthias Schulz
% email address: mschulz@seemoo.tu-darmstadt.de
% Website: https://ww.seemoo.de
% Date: 2017

%------------- BEGIN CODE --------------

    map = colormap;
    histvalues = histvalues.';
    if (scaled == true)
        histvalues_sc = round(histvalues / max(max(histvalues)) * (size(map,1) - 1) + 1);
    else
        histvalues_sc = histvalues;
    end
    rectangle('Position',[xbin(1),ybin(1),max(xbin)-min(xbin),max(ybin)-min(ybin)],'FaceColor',map(1,:),'LineStyle','none')
    for x = 1:(length(xbin)-1)
        for y = 1:(length(ybin)-1)
            %if (histvalues_sc(x,y) >= 0)
            if (histvalues_sc(x,y) > 1)
                rectangle('Position',[xbin(x),ybin(y),xbin(x+1)-xbin(x),ybin(y+1)-ybin(y)],'FaceColor',map(histvalues_sc(x,y),:),'LineStyle','none')
            end
        end
    end
    axis([min(xbin) max(xbin) min(ybin) max(ybin)]);
end

%------------- END OF CODE --------------
