require 'pry'

class PigLatinizer

  def piglatinize(text)
    vowels = ["a","e","i","o","u"]
    text = text.split("")
    new_text = text
    letters = []
    text.each_with_index do |letter, index|
      if vowels.any?{|vowel| vowel == letter}
        text.clear
      else
        letters << letter
        new_text[index].delete
      end
      binding.pry
    end
  end

end
