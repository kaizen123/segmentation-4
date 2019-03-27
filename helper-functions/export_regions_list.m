function export_regions_list(regions_list, fn)
    regions_fid = fopen(fn, 'w');
    for region_number = 1 : numel(regions_list)
        fprintf(regions_fid, 'x%u, ', region_number);
        for pt = 1:length(regions_list(region_number).x)
            fprintf(regions_fid, '%2f', regions_list(region_number).x(pt));
            if pt < length(regions_list(region_number).x)
                fprintf(regions_fid, ', ');
            end
        end
        fprintf(regions_fid, '\n');

        fprintf(regions_fid, 'y%u, ', region_number);
        for pt = 1:length(regions_list(region_number).y)
            fprintf(regions_fid, '%2f', regions_list(region_number).y(pt));
            if pt < length(regions_list(region_number).x)
                fprintf(regions_fid, ', ');
            end
        end
        fprintf(regions_fid, '\n');
    end
    fclose(regions_fid);
end