a = [1, 2, 3, 4, 5]

# def reverse_array(array)
#   array.sort { |a, b| b <=> a }
# end

# p reverse_array(a)

class Array
  def reverse_order
    self.sort { |a, b| b <=> a }
  end
end

p a.reverse_order

