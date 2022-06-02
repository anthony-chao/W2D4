def no_dupes?(array)
    new_arr = []
    count = Hash.new(0)
    array.each { |ele| count[ele] += 1 }
    count.select { |k, v| new_arr << k if v == 1 }
    new_arr
end

p no_dupes?([1, 1, 2, 1, 3, 2, 4])         # => [3, 4]
p no_dupes?(['x', 'x', 'y', 'z', 'z'])     # => ['y']
p no_dupes?([true, true, true])            # => []