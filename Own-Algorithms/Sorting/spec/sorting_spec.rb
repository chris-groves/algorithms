require 'sorting'

describe Sort do
  it 'returns the input array where the input array has only one element' do
    sort = Sort.new([0])
    expect(sort.sort).to eq [0]
  end

  it 'returns a correctly sorted array' do
    sort = Sort.new([1,0])
    expect(sort.sort).to eq [0,1]
  end

  it 'returns a correctly sorted array' do
    sort = Sort.new([5,4,3,2,1])
    expect(sort.sort).to eq [1,2,3,4,5]
  end

  it 'returns a correctly sorted array' do
    sort = Sort.new([10,9,8,7,6,5,4,3,2,1])
    expect(sort.sort).to eq [1,2,3,4,5,6,7,8,9,10]
  end

  it 'returns a correctly sorted array' do
    sort = Sort.new([10,9,8,10,7,6,5,4,3,2,1])
    expect(sort.sort).to eq [1,2,3,4,5,6,7,8,9,10,10]
  end
end
