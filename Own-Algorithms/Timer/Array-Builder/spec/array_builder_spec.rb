require 'array_builder'

describe ArrayBuilder do
  it 'builds an array of 50,000 in length' do
    array = ArrayBuilder.new
    array.build_array
    expect(array.array.length).to eq 50000
  end

  it 'can increase in size by 50,000' do
    array = ArrayBuilder.new
    array.increase_array_size
    array.build_array
    expect(array.array.length).to eq 100000
  end
end
