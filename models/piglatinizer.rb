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
        new_text.delete_at(index)
      end
      binding.pry
    end
    new_text
  end

end
