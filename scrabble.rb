require 'pry'

class Scrabble

  def initialize
    @word
    @word_split = []
    @letter_value
    @total_value
  end

  def score(input)
    @total_value = 0
    @letter_value = {
      "A" => 1, "B" => 3, "C" => 3, "D" => 2,
      "E" => 1, "F" => 4, "G" => 2, "H" => 4,
      "I" => 1, "J" => 8, "K" => 5, "L" => 1,
      "M" => 3, "N" => 1, "O" => 1, "P" => 3,
      "Q" => 10, "R" => 1, "S" => 1, "T" => 1,
      "U" => 1, "V" => 4, "W" => 4, "X" => 8,
      "Y" => 4, "Z" => 10
    }

    if input === ''
      return 0
    else
      if input === nil
        return 0
      else
        @word = input.upcase
        @word_split = @word.split('')

        @word_split.each do |letter|
          @total_value += @letter_value[letter]
        end

        return @total_value
      end
    end
  end

end

binding.pry
