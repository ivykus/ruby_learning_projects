#! /usr/bin/env ruby

ALPHABET_LENGTH = 26

def caesar_cipher(string, shift)
    encoded_string = ""
    string.each_char do |ch|
        if ch.match?(/[a-zA-Z]/)
            base = ch.ord < "a".ord ? "A".ord : "a".ord 
            rotated = ((ch.ord - base) + shift) % ALPHABET_LENGTH + base
            encoded_string += rotated.chr 
        else
            encoded_string += ch
        end
    end
    encoded
end

puts caesar_cipher("WAhat a string!", 5)
puts caesar_cipher("zz", 1)