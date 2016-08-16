def translate(string)
  vowels = ["a", "e", "i", "o", "u"]
  words = string.split
  output = []
  words.each do |word|
    if vowels.include?(word[0])
      output << "#{word}ay"
    elsif vowels.include?(word[0]) == false && vowels.include?(word[1]) == false && vowels.include?(word[2]) == false
      output << "#{word[3..-1]}#{word[0..2]}ay"
    elsif vowels.include?(word[0]) == false && vowels.include?(word[1]) == false
      output << "#{word[2..-1]}#{word[0..1]}ay"
    elsif  vowels.include?(word[0]) == false
      output << "#{word[1..-1]}#{word[0]}ay"
    end
  end
  output.join(" ")
end
