function handle_list = plot_region(region)
    n_pts = length(region.x);
    handle_list = []; 
    for pt = 1 : (n_pts-1)
       h = plot([region.x(pt), region.x(pt+1)], ...
            [region.y(pt), region.y(pt+1)], ...
            'r', 'LineWidth', 2);  
       handle_list = [handle_list, h];
    end
    h = plot([region.x(end), region.x(1)], ...
         [region.y(end), region.y(1)], ...
         'r', 'LineWidth', 2);
    handle_list = [handle_list, h]; 
end