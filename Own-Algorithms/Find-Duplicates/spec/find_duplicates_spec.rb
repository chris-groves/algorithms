require 'find-duplicates'

describe 'find_duplicates' do
  it 'returns 0 for an empty array' do
    expect(find_duplicates([])).to eq 0
  end

  it 'returns 0 for an array with one word' do
    expect(find_duplicates(["cat"])).to eq 0
  end

  it 'returns "cat" for an array with 2 words, both the same' do
    expect(find_duplicates(["cat", "cat"])).to eq ["cat"]
  end

  it 'returns "cat" for an array with 3 words' do
    expect(find_duplicates(["cat", "cat", "dog"])).to eq ["cat"]
  end

  it 'returns "cat", "dog" for an array with 4 words' do
    expect(find_duplicates(["cat", "cat", "dog", "dog"])).to eq ["cat", "dog"]
  end
end
