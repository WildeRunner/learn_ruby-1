def echo(string)
  string
end

def shout(string)
  return string.upcase
end

def repeat(string, times = 2)
  output = "#{string} " * times
  return output.strip
end

def start_of_word(string, num)
  string[0...num]
end

def first_word(string)
  string.split[0]
end

def titleize(string)
  little_words = ['the', 'over', 'and'] # <= Lazy option
  output = string.split.each do |word|
    word.capitalize! unless little_words.include?(word)
  end
  output[0].capitalize!
  output.join(" ")
end
