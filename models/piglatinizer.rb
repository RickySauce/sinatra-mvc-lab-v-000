require 'pry'

class PigLatinizer

  def piglatinize(text)
    vowels = ["a","e","i","o","u"]
    text = text.split("")
    letters = []
    text.each do |letter|
      if vowels.any?{|vowel| vowel == letter}
        text.clear
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
