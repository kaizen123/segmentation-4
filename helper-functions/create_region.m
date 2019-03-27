function [region, handles_list] = create_region(color)
region = struct(...
    'x', [], ...
    'y', []...
);

status = 'continue';
handles_list = []; 
fprintf('Use cursor to define area of interest. \n');
while strcmp(status, 'continue')
    [xv, yv, button] = ginput(1);
    if button == 1
        status = 'continue';
        h = plot(xv, yv, 'o', 'Color', color);
        handles_list = [handles_list, h];
        hold on
        region.x = [region.x; xv];
        region.y = [region.y; yv];
        h = plot(region.x, region.y, 'Color', color);
        handles_list = [handles_list, h];
    else
        h = plot([region.x(1), region.x(end)], [region.y(1), region.y(end)], 'Color', color)
        handles_list = [handles_list, h];
        status = 'end';
    end
end

end