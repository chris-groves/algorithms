require 'sub-sequence-sum'

describe 'sub_sequence_sum' do
  it 'returns true' do
    expect(sub_sequence_sum([10,3,1,7],21)).to eq true
  end

  it 'returns true' do
    expect(sub_sequence_sum([10,3,1,7],10)).to eq true
  end

  it 'returns true' do
    expect(sub_sequence_sum([10,3,1,7],8)).to eq true
  end
end
