require 'pry'

class PigLatinizer

  def piglatinize(text)
    text_array = text.split(" ")
    text_array.each do |text|
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
      (letters.count).times {text.shift}
      if letters.count == 0
        if text.count < 4
          letters << text.shift
          text << letters << "way"
          text = text.flatten.join
        else
          text << "way"
          text = text.flatten.join
        end
      else
        text << letters << "ay"
        text = text.flatten.join
      end
      text
    end
  end

end
