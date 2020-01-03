require 'fibonacci'

describe 'fibonacci' do
  it 'returns an empty array for input of 0' do
    fibonacci = Fibonacci.new(0)
    expect(fibonacci.calculate(0)).to eq []
  end

  it 'returns [0] for input of 1' do
    fibonacci = Fibonacci.new(1)
    expect(fibonacci.calculate(1)).to eq [0]
  end

  it 'returns [0,1] for input of 2' do
    fibonacci = Fibonacci.new(2)
    expect(fibonacci.calculate(2)).to eq [0,1]
  end

  it 'returns [0,1,1] for input of 3' do
    fibonacci = Fibonacci.new(3)
    expect(fibonacci.calculate(3)).to eq [0,1,1]
  end

  it 'returns [0,1,1,2] for input of 4' do
    fibonacci = Fibonacci.new(4)
    expect(fibonacci.calculate(4)).to eq [0,1,1,2]
  end

  it 'returns [0,1,1,2,3,5,8,13,21,34] for input of 10' do
    fibonacci = Fibonacci.new(10)
    expect(fibonacci.calculate(10)).to eq [0,1,1,2,3,5,8,13,21,34]
  end
end
