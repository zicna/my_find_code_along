require 'pry'

def my_find(collection)
    #binding.pry
    i = 0
    coll_len = collection.length
    while i < coll_len
    #    if yield(collection[i])
    #         return collection[i]
    #     end
    return collection[i] if yield(collection[i])
        i += 1
    end
end
range = (1..100).to_a
puts my_find(range) {|item| item % 3 == 0 and item % 5 == 0}