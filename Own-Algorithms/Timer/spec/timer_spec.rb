require 'timer'

describe Timer do
  it 'builds an array of 50,000 in length' do
    timer = Timer.new
    expect(timer.array.length).to eq 50000
  end
end
