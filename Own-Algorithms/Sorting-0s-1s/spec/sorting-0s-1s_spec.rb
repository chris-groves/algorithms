require 'sorting-0s-1s'

describe Sort do
  it 'returns the input array where the input array has only one element' do
    sort = Sort.new([0])
    expect(sort.sort_array).to eq [0]
  end

  it 'returns a correctly sorted array' do
    sort = Sort.new([1,0])
    expect(sort.sort_array).to eq [0,1]
  end

  it 'returns a correctly sorted array' do
    sort = Sort.new([1,0,0,1,0])
    expect(sort.sort_array).to eq [0,0,0,1,1]
  end

  it 'returns a correctly sorted array' do
    sort = Sort.new([1,0,0,1,0,0,1,1,1,0,0])
    expect(sort.sort_array).to eq [0,0,0,0,0,0,1,1,1,1,1]
  end
end
