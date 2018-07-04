require 'pry'

class PigLatinizer

  def piglatinize(text)
    vowels = ["a","e","i","o","u"]
    text = text.split("")
    binding.pry
    letters = []
    text.each do |letter|
      if vowels.any?{|vowel| vowel == letter}
        text.clear
      else
        letters << letter
      end
    end
    letters
    binding.pry
  end

end
