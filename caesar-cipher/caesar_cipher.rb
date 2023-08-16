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
