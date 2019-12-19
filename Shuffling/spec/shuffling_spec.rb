require 'shuffling'

describe 'shuffling' do
  it 'returns an empty array for input of an empty array' do
    expect(shuffling([])).to eq []
  end

  it 'returns the array as it is for input of an array of length 1' do
    expect(shuffling([1])).to eq [1]
  end

  it 'swaps index positions of numbers in an array of length 2' do
    expect(shuffling([1,2])).to eq [2,1]
  end

  it 'output of an array of length 3 is different to input array' do
    expect(shuffling([1,2,3])).to_not eq [1,2,3]
  end

  it 'output of an array of length 10 is different to input array' do
    expect(shuffling([1,2,3,4,5,6,7,8,9,10])).to_not eq [1,2,3,4,5,6,7,8,9,10]
  end
end
