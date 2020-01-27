require 'timer'

describe ArrayBuilder do
  it 'builds an array of 50,000 in length' do
    array = ArrayBuilder.new
    expect(array.array.length).to eq 50000
  end
end
