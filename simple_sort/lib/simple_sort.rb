require 'pry'

def sort_list(list)
  unsorted_array = list.split(" ").map! { |i| i.to_f }
  sorted_array = []

  until unsorted_array.length == 0 do
  	low_num = unsorted_array.min
  	sorted_array << low_num
  	unsorted_array.delete(low_num)
  end
  sorted_array
end

input = "30.02 -88.87 10.58 -99.22 107.33"
p sort_list(input)