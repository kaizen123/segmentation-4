function clear_handles(handle_list)
    for handle = handle_list
        set(handle, 'Visible', 'off')
    end
end