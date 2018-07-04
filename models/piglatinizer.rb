require 'pry'

class PigLatinizer

  def piglatinize(text)
    vowels = ["a","e","i","o","u"]
    text = text.split("")
    letters = []
    text.each do |letter|
      until vowels.any? {|vowel| letter == vowel|}
        letters << letter
        binding.pry
      end
    end
  end

end
