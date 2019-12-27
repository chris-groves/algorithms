require 'last'

describe 'last' do
  it 'returns the last element in an array' do
    expect(last([1,2,3])).to eq 3
  end

  it 'returns the last element in an array' do
    expect(last([3,2,1])).to eq 1
  end

  
end
