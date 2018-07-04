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
    if letters.count == 0
      letters << text.shift
      text << letters << "way"
      text.flatten.join
    else
      text << letters << "ay"
      text.flatten.join
    end
    text
    binding.pry
  end

end
