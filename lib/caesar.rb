require 'byebug'
def caesar_encode(string, number)

  lower = ('a'..'z').to_a
  upper = ('A'..'Z').to_a
  string_array = string.split('')
  

  if number >= 26
    number = number % 26 
  end 
# not working because doesn't start at a 

  string_array.map do |letter|
    if letter == letter.upcase
      # byebug
      letter = upper[string_array.index(letter)+number]
    elsif letter == letter.downcase
      letter = lower[string_array.index(letter)+number]
    end
  end
  # byebug
  return string_array.join('')
  # byebug
end

def caesar_decode(string, number)


  lower = ('a'..'z').to_a
  upper = ('A'..'Z').to_a
  string_array = string.split('')



  string_array.map do |letter|
    if letter == letter.upcase
      # byebug
      letter = upper[string_array.index(letter)-number]
    elsif letter == letter.downcase
      letter = lower[string_array.index(letter)-number]
    end
  end
  # byebug
  string_array.join('')
end