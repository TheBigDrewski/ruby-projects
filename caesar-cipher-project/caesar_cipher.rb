# frozen_string_literal: true

def caesar_cipher(text, offset)
  text.each_char.map { |char| shift_char(char, offset) }.join
end

def shift_char(char, shift)
  # 65 - 90 | A - Z
  # 97 - 122 | a - z

  # Lower case
  if (char.ord >= 65) && (char.ord <= 90)
    return (((char.ord + shift) - 90) + 64).chr if (char.ord + shift) > 90

    (char.ord + shift).chr

  # Upper case
  elsif (char.ord >= 97) && (char.ord <= 122)
    return (((char.ord + shift) - 122) + 96).chr if (char.ord + shift) > 122

    (char.ord + shift).chr

  else
    char
  end
end
