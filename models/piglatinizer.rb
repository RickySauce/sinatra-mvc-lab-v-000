require 'pry'

class PigLatinizer

  def piglatinize(text)
    vowels = ["a","e","i","o","u"]
    text = text.split("")
    letters = []
    text.each do |letter|
      if vowels.any?{|vowel| vowel != letter}
        letters << letter
      else
        text.clear
      end
      binding.pry
    end
  end

end
