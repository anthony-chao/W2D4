#num1 + num1, num2 - 1
# 3 + 3, 5
# 3 + 3 +3, 5

#if both are negative or positive, return positive sum
#if one is negative/positive, return negative

def multiply(num1, num2)

    return 0 if num2 == 0 || num1 == 0

    # if num2.positive? && num1.positive?
    #     num1 + multiply(num1, num2 - 1)
    # elsif num2.negative? && num1.negative?
    #     -num1 + multiply(num1, num2 + 1)
    # elsif num2.positive? && num1.negative?
    #     num1 + multiply(num1, num2 - 1)
    # elsif num2.negative? && num1.positive?
    #     -num1 + multiply(num1, num2 + 1)
    # end

    array = [num1, num2]

    if array.all? { |number1| number1.positive?} || array.all? { |number2| number2.negative? }
        num1.abs + multiply(num1.abs, num2.abs - 1)
    else
        -num1.abs + multiply(-num1.abs, num2.abs - 1)
    end


end

p multiply(3, 5)        # => 15
p multiply(5, 3)        # => 15
p multiply(2, 4)        # => 8
p multiply(0, 10)       # => 0
p multiply(-3, -6)      # => 18
p multiply(3, -6)       # => -18
p multiply(-3, 6)       # => -18