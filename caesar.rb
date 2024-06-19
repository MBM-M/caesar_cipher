
#To convert a string/character to ASCII:
#   for single: 'a'.ord, for multiple: 'abc'.bytes

#To convert an ASCII value to its character:
#   for single: 97.chr, for multiple: [97,98,99,100].pack('c*')
def caesar_cipher(string, shift)
    
    strToAscii = string.bytes

    outOfR = strToAscii.map do |element|
        case element
        when 65..90
            new_value = (element - 65 + shift) % 26 + 65
            new_value < 65? new_value += 26 : new_value
        when 97..122
            new_value = (element - 97 + shift) % 26 + 97
            new_value < 97? new_value += 26 : new_value
        else
            element
        end
    end

    finalStr = outOfR.pack('c*')
    puts finalStr

end
caesar_cipher("What a string!", 5)