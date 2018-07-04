require 'pry'

class PigLatinizer

  def piglatinize(text)
    vowels = ["a","e","i","o","u"]
    text = text.split("")
    letters = []
    text.each do |letter|
      vowels.any? {|vowel| vowel == letter}
      binding.pry
    end
  end

end
