def longest_streak(string)

    return string if string.length == 1

    i = 0
    array = []

    while i < string.length - 1
        count = 0
        char = string[i]
        while char == string[i] 
            if char 
            count += 1
        i += 1
    end
end

p longest_streak('a')           # => 'a'
p longest_streak('accccbbb')    # => 'cccc'
p longest_streak('aaaxyyyyyzz') # => 'yyyyy
p longest_streak('aaabbb')      # => 'bbb'
p longest_streak('abc')         # => 'c'