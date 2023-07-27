def caesar_cipher(string, shift)
  shifted_string = string.split('').map do |char|
    if char.match(/[a-z]/)
      char = char.ord + shift
      char = char - 26 until char <= 122
      char = char + 26 until char >= 97
      char.chr
    elsif char.match(/[A-Z]/)
      char = char.ord + shift
      char = char - 26 until char <= 90
      char = char + 26 until char >= 65
      char.chr
    else char
    end
  end
  return shifted_string.join('')
end

puts "What would you like to apply the Caesar cipher to?"
input_string = gets.chomp
puts "How many places would you like to shift by?"
input_shift = gets.chomp.to_i

puts caesar_cipher(input_string, input_shift)