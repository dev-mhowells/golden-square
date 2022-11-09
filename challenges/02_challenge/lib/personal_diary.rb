def make_snippet(str)
    string_length = str.split(' ').length
    if string_length > 5
        return str.split(' ').first(5).join(' ') + ' ...'
    else return str
    end
end

def count_words(str)
    string_length = str.split(' ').length
end