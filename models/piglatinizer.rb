require 'pry'

class PigLatinizer

  def piglatinize(text)
    vowels = ["a","e","i","o","u"]
    text = text.split("")
    new_text = text
    letters = []
    text.each do |letter|
      if vowels.any?{|vowel| vowel == letter}
        text.clear
      else
        letters << letter
      end
      binding.pry
    end
  end

end
