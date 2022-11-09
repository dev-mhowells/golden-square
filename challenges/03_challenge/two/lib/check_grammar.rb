def check_grammar(sentence)
    if sentence.length == 0
        return false
    else 
        first_char = sentence.chars.first(1).join
        last_char = sentence.chars.last(1).join
        # check if first_char is capitalised
        if first_char.upcase != first_char
            return false
        elsif last_char != '.' && last_char != '!' && last_char != '?'
            return false
        else
            return true
        end
    end
end