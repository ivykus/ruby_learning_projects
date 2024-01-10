#! /usr/bin/env ruby

# TASK:
# Implement a method #substrings that takes a word as the first argument 
# and then an array of valid substrings (your dictionary) as the second argument. 
# It should return a hash listing each substring (case insensitive) that 
# was found in the original string and how many times it was found.

def substrings(text, strings)
    strings.reduce(Hash.new) do |substr_hash, word|
        count = text.scan(/(?=#{word})/i).count
        substr_hash[word] = count unless count == 0
        substr_hash 
    end
end

# EXAMPLE
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Below", dictionary)
# should print { "below" => 1, "low" => 1 }

dictionary = ["e t"]
p substrings("above the sky", dictionary)
# should print { "e t"=>1}