# Write a method, least_common_multiple, that takes in two numbers and returns the smallest number that is a mutiple
# of both of the given numbers
def least_common_multiple(num_1, num_2)
    largest = [num_1, num_2].max
    (largest..10000).each do |possible_multiple|            #there prob is a better way for this... so we don't indicate the largest #
        return possible_multiple if possible_multiple % num_1 == 0 && possible_multiple % num_2 == 0
    end
end


# Write a method, most_frequent_bigram, that takes in a string and returns the two adjacent letters that appear the
# most in the string.
def most_frequent_bigram(str)
    pair = []
    i = 0
    while i < str.length - 1
    pair << str[i] + str[i + 1]
    i += 1
    end
    count = Hash.new(0)
    pair.each { |duo| count[duo] += 1 }
    count.sort_by { |k, v| -v }[0][0]       #there's 100% a better way to do this lol
end


class Hash
    # Write a method, Hash#inverse, that returns a new hash where the key-value pairs are swapped
    def inverse
        new_hash = {}
        self.each { |k, v| new_hash[v] = k}
        new_hash
    end
end


class Array
    # Write a method, Array#pair_sum_count, that takes in a target number returns the number of pairs of elements that sum to the given target
    def pair_sum_count(num)
        pairs = []
        (0...self.length).each do |idx1|
            (0...self.length).each do |idx2|
                if idx1 < idx2
                    pairs << [self[idx1], self[idx2]]
                end
            end
        end
        pairs.count { |pair| pair.sum == num }
    end

    # Write a method, Array#bubble_sort, that takes in an optional proc argument.
    # When given a proc, the method should sort the array according to the proc.
    # When no proc is given, the method should sort the array in increasing order.
    #
    # Sorting algorithms like bubble_sort, commonly accept a block. That block accepts
    # two parameters, which represents the two elements in the array being compared.
    # If the block returns 1, it means that the second element passed to the block
    # should go before the first (i.e. switch the elements). If the block returns -1,
    # it means the first element passed to the block should go before the second
    # (i.e. do not switch them). If the block returns 0 it implies that
    # it does not matter which element goes first (i.e. do nothing).
    #
    # This should remind you of the spaceship operator! Convenient :)
    def bubble_sort(&prc)
        
        prc ||= Proc.new { |a, b| a <=> b }
        !sorted = false

        while !sorted
            sorted = true
            i = 0
            while i < self.length - 1
                if prc.call(self[i], self[i + 1]) == 1              #if the proc evaluates to 1, it means that a > b. 
                    self[i], self[i + 1] = self[i + 1], self[i]     #this is so switch the positions of the numbers
                    sorted = false
                end
                i += 1
            end
        end
        self
    end
end
