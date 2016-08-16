require 'pry'
def translate(string)
  vowels = ["a", "e", "i", "o", "u"]
  words = string.split.map do |word|
    word.gsub(/sch/, '*')
    word.gsub(/qu/, '#')
  end
  output = []
  words.each do |word|
    if vowels.include?(word[0])
      output << "#{word}ay"
    elsif  vowels.include?(word[0]) == false
      if vowels.include?(word[1]) == false
        if vowels.include?(word[2]) == false
          output << "#{word[3..-1]}#{word[0..2]}ay"
        else
          output << "#{word[2..-1]}#{word[0..1]}ay"
        end
      else
        output << "#{word[1..-1]}#{word[0]}ay"
      end
    end
  end
  output.map! do |word|
    word.gsub(/\*/, 'sch')
    word.gsub(/#/, 'qu')
  end
  output.join(" ")
end
