require 'pry'

class PigLatinizer

  def piglatinize(text)
    vowels = ["a","e","i","o","u"]
    new_text = text.downcase.split("")
    letters = []
    new_text.each do |letter|
      if vowels.any?{|vowel| vowel == letter}
        new_text.clear
      else
        letters << letter
      end
    end
    text = text.split("")
    binding.pry
    letters.each_with_index {|letter, index| text.delete_at(index)}
    binding.pry
    if letters.count == 0
      letters << text.shift
      text << letters << "way"
      text = text.flatten.join
    else
      text << letters << "ay"
      text = text.flatten.join
    end
    text
  end

end
