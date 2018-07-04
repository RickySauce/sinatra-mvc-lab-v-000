require 'pry'

class PigLatinizer

  def piglatinize(text)
    vowels = ["a","e","i","o","u"]
    text = text.split("")
    letters = []
    text.each do |letter|
      until vowels.any? {|vowel| vowel == letter}
        letters << letter 
      end
    end
  end

end
