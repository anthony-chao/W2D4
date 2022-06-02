def vigenere_cipher(string, array)

    alphabet = ("a".."z").to_a
    
    new_str = ""
    i = 0
    string.each_char do |ele|
        # while i < array.length
        new_index = alphabet.index(ele) + array[i % array.length]
        new_str += alphabet[new_index % 26]
        i += 1
        # end
    end
    new_str
end

# Message:  b a n a n a s i n p a j a m a s
# Keys:     1 2 3 1 2 3 1 2 3 1 2 3 1 2 3 1
# Result:   c c q b p d t k q q c m b o d t

p vigenere_cipher("toerrishuman", [1])        # => "upfssjtivnbo"
p vigenere_cipher("toerrishuman", [1, 2])     # => "uqftsktjvobp"            
p vigenere_cipher("toerrishuman", [1, 2, 3])  # => "uqhstltjxncq"
p vigenere_cipher("zebra", [3, 0])            # => "ceerd"
p vigenere_cipher("yawn", [5, 1])             # => "dbbo"