class LetterCounter
    def initialize(text)
      @text = text
    end

    # Hashes have a default value that is returned when accessing keys that do not exist in the hash. 
    # If no default is set nil is used. You can set the default value by sending it as an argument
  
    def calculate_most_common()
      counter = Hash.new(0)
      most_common = nil
      most_common_count = 0
      @text.chars.each do |char|
        next unless is_letter?(char)
        counter[char] = (counter[char]) + 1
        if counter[char] > most_common_count
          most_common = char
          most_common_count = counter[char]
        end
      end
      return [most_common_count, most_common]
    end
  
    private
  
    def is_letter?(letter)
      return letter =~ /[a-z]/i
    end
  end
  
  counter = LetterCounter.new("Digital Punk")
#   counter = LetterCounter.new("Digi")
  p counter.calculate_most_common
#   p 'hello'
  
  # Intended output:
  # [2, "i"]