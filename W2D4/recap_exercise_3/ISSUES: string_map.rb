class String
    
    def map!(&prc)
        new_str = ""
        self.each_char.with_index do |char, idx|
            new_str += prc.call(char, idx)
        end
        new_str
    end

end

word_1 = "Lovelace"
word_1.map! do |ch| 
    if ch == 'e'
        '3'
    elsif ch == 'a'
        '4'
    else
        ch
    end
end
p word_1        # => "Lov3l4c3"

word_2 = "Dijkstra"
word_2.map! do |ch, i|
    if i.even?
        ch.upcase
    else
        ch.downcase
    end
end
p word_2        # => "DiJkStRa"