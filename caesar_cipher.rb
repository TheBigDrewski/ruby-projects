def caesar_cipher(text, offset)
    text.each_char.map { |char| shift_char(char, offset) }.join
end

def shift_char(char, shift)
    # 65 - 90 | A - Z
    # 97 - 122 | a - z

    # Lower case 
    if (char.ord >= 65) && (char.ord <= 90)
        if (char.ord + shift) > 90
            return (((char.ord + shift) - 90) + 64).chr
        else
            return (char.ord + shift).chr
        end
    # Upper case
    elsif (char.ord >= 97) && (char.ord <= 122)
        if (char.ord + shift) > 122
            return (((char.ord + shift) - 122) + 96).chr
        else
            return (char.ord + shift).chr
        end
    else
        return char
    end
end