require_relative '../lib/reverse_array'

describe 'reverse array' do
  it 'reverses the elements in an array' do
    input = [1, 2, 3, 4, 5]

    output = reverse_array(input)

    expect(output).to eq([5, 4, 3, 2, 1])
  end
end
