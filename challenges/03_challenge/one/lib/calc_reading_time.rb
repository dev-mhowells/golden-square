def calc_time_in_mins(str)
    if str.length == 0
        return 0
    else 
        return str.split(' ').length.to_f / 200
    end
end