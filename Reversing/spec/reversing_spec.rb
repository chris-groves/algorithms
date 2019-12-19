require 'reversing'

describe 'reversing' do
  it 'returns an empty array for input of an empty array' do
    expect(reversing([])).to eq []
  end

  it 'returns the input array if the input array has only one element' do
    expect(reversing([1])).to eq [1]
  end

  it 'returns a reversed array if the input array has 2 elements' do
    expect(reversing([1,2])).to eq [2,1]
  end

  it 'returns a reversed array if the input array has 3 elements' do
    expect(reversing([1,2,3])).to eq [3,2,1]
  end

  it 'returns a reversed array if the input array has 10 elements' do
    expect(reversing([1,2,3,4,5,6,7,8,9,10])).to eq [10,9,8,7,6,5,4,3,2,1]
  end
end
