function regions_list = read_regions_list_from_file(fn)

data = csvread(fn, 0, 1);

[m, n] = size(data);
n_regions = m/2; 
regions_list = []; 
for region_number = 1 : n_regions
   x = data(2*(region_number-1)+1, :);
   x(x == 0) = [];
   y = data(2*(region_number-1)+2, :);
   y(y==0) = [];
    
   region = struct(...
       'x', x, ...
       'y', y ...
   );
   
   regions_list = [regions_list, region];
    
end
end