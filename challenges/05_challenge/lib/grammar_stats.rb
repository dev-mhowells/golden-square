class GrammarStats
    def initialize
      # ...
      @checks_ran = 0
      @checks_passed = 0
    end
  
    def check(sentence) # text is a string
      # Returns true or false depending on whether the text begins with a capital
      # letter and ends with a sentence-ending punctuation mark.
      @checks_ran += 1
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
                @checks_passed += 1
                return true
            end
        end
    end
  
    def percentage_good
      # Returns as an integer the percentage of texts checked so far that passed
      # the check defined in the `check` method. The number 55 represents 55%.
      return (@checks_passed / @checks_ran.to_f) * 100
    # return @checks_passed
    end
  end