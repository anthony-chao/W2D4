class String

    def select(&prc)
        prc ||= Proc.new { false }
        new_str = ""
        self.each_char { |char| new_str += char if prc.call(char) }
        new_str
    end

end

p "app academy".select { |ch| !"aeiou".include?(ch) }   # => "pp cdmy"
p "HELLOworld".select { |ch| ch == ch.upcase }          # => "HELLO"
p "HELLOworld".select          # => ""