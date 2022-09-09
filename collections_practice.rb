def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort.reverse
end

def sort_array_char_count(array)
  array.sort {|a, b| a.length <=> b.length }
end

def swap_elements(array, from = 1, to = 2)
  new_array = []
  array.length.times do |i| i == from ? new_array << array[to] : i == to ? new_array << array[from] : new_array << array[i] end
  new_array
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(array)
  #why on earth shouldn't we use map for this?
  new_array = []
  array.each do |item| 
    item[2] = "$"
    new_array << item
  end
  new_array
end

def find_a(array)
  array.select {|item| item[0] == "a"}
end

def sum_array(array)
  array.inject :+ #reduce and inject are aliases, can be used the same as reduce in JS, but in Ruby, you can just add a symbol to apply that to each element in the array.  You can also add in a starting number (array.inject 10, :+)
end

def add_s(array)
  array.map.with_index {|item, index| index != 1 ? item << "s" : item}
end