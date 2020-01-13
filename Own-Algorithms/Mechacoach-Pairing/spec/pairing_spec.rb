require 'pairing'

describe Pairing do
  it 'returns 3 combinationa for an input array with 4 elements' do
    pairing = Pairing.new(["Alice","Bob","Charly","Dan"])
    pairing.working_array
    expect(pairing.pairing).to eq [
    [["Alice", "Bob"], ["Charly", "Dan"]],
    [["Alice", "Charly"], ["Bob" , "Dan"]],
    [["Alice", "Dan"], ["Bob" , "Charly"]],
]
  end
end
