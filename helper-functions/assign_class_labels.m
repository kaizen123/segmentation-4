function class_labels = assign_class_labels(im, regions_list)
[m, n] = size(im);

subplot(1, 2, 1)
imshow(im)
title('Region to label');
hold on

map = colormap([0 0 0;
                0.202 0.478 0.991;
                0.070 0.745 0.725;
                0.786 0.757 0.159;
                0.977 0.983 0.081]);
                
    
class_labels = zeros(m, n);
subplot(1, 2, 2)
imshow(class_labels, map)
title('Class labels');

for ii = 1:length(regions_list)
    subplot(1, 2, 1)
    handle_list = plot_region(regions_list(ii));
    label = input('Enter class label for this region: ');
    if ~any(label == [1, 2, 3, 4, 5])
        error('Expected label 1, 2, 3, 4, or 5! Aborting')
    end
    
    
    clear_handles(handle_list);
    
    if label ~= 1
        mask = poly2mask(regions_list(ii).x, regions_list(ii).y, m, n);
        class_labels(mask) = label;
    end
 
    subplot(1, 2, 2)
    imshow(class_labels, map)
    title('Class labels');

end
end
