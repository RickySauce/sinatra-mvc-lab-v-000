require 'pry'

class PigLatinizer

  def piglatinize(text)
    vowels = ["a","e","i","o","u"]
    text = text.split("")
    letters = []
    text.each do |letter|
      letters << letter until vowels.any? {|vowel| vowel == letter}
      binding.pry
    end
  end

end
