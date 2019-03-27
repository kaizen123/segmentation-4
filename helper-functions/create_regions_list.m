function regions_list = create_regions_list

regions_list = [];
status = 'continue';
while strcmp(status, 'continue')
    [region, handles_list] = create_region('red');
    commandwindow
    new_region = input('Press 0 to restart region, 1 to create another region, or 2 to finish: ', 's');
    if new_region == '0'
        clear_handles(handles_list)
        status = 'continue';
    elseif new_region == '1'
        regions_list = [regions_list, region];
        status = 'continue';
    elseif new_region == '2'
        regions_list = [regions_list, region];
        status = 'end';
    else
        fprintf('Invalid input -- expecting 0, 1, or 2. Region not saved.\n')
        status = 'continue'; 
    end
end

end