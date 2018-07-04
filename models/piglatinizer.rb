require 'pry'

class PigLatinizer

  def piglatinize(text)
    vowels = ["a","e","i","o","u"]
    new_text = text.split("")
    letters = []
    new_text.each do |letter|
      if vowels.any?{|vowel| vowel == letter}
        new_text.clear
      else
        letters << letter
      end
    end
    text = text.split("")
    letters.each_with_index {|letter, index| text.delete_at(index)}
    text
    binding.pry
  end

end
