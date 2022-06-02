#locate the vowels and their indices
#maybe we can get a listing of all the vowels in the word (o, u, e)
#look for the index of U and assign it to 

def vowel_rotate(string)
    vowels = "aeiou"
    
    vowels_in_string = string.split("").select { |ele| vowels.include?(ele) }.join("")

    i = -1
    new_str = ""
    string.each_char do |ele|
        if vowels.include?(ele)
            new_str += vowels_in_string[i]
            i += 1
        else
            new_str += ele
        end
    end
    new_str
end

p vowel_rotate('computer')      # => "cempotur"
p vowel_rotate('oranges')       # => "erongas"
p vowel_rotate('headphones')    # => "heedphanos"
p vowel_rotate('bootcamp')      # => "baotcomp"
p vowel_rotate('awesome')       # => "ewasemo"