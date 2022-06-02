def bi_prime?(num)
    
    prime_factors = []
    (2...num).each { |number| prime_factors << number if num % number == 0 && prime?(number) }
    
    prime_factors.each.with_index do |factor1, idx1|
        prime_factors.each.with_index do |factor2, idx2|
            if idx1 <= idx2
                return true if factor1 * factor2 == num
            end
        end
    end
    false
end

def prime?(num)
    (2...num).none? { |number| num % number == 0 }
end

p bi_prime?(14)   # => true
p bi_prime?(22)   # => true
p bi_prime?(25)   # => true
p bi_prime?(94)   # => true
p bi_prime?(24)   # => false
p bi_prime?(64)   # => false