#creates multiplication table in basic arithmetic form
def multiplication_table(n)
  [*1..n].product([*1..n]).map { |x, y| "#{x*y}" }.join("\t")
end

#creates a times table with top row_1 of 1..n and column_1 of 1..n
def times_table(n)
  [*1..n].product([*1..n]).map { |x, y| "#{x} * #{y} = #{x*y}" }.join("\t")
end

#without using array#product method to get the Cartesian product
class CartesianArray < Array

  def initialize(array_1, array_2)
    @array_1 = array_1
    @array_2 = array_2
  end

  def product
    results = []
    @array_1.each do |a1|
      @array_2.each { |a2| results << [a1, a2] }
    end
    results
  end

end

num_1 = [*1..12]
num_2 = [*1..12]
cart_array = CartesianArray.new(num_1, num_2)
p cart_array.product

puts times_table(5)

puts multiplication_table(12)
