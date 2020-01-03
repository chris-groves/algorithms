require 'most_frequent_words'

describe Words do
  describe 'find most_frequent_words' do
    it 'returns "cat" for an array with one word' do
      words = Words.new(["cat"])
      expect(words.most_frequent_words(["cat"])).to eq ["cat"]
    end

    it 'returns "dog" for an array with three words' do
      words = Words.new(["cat", "dog", "dog"])
      expect(words.most_frequent_words(["cat", "dog", "dog"])).to eq ["dog", "cat"]
    end

    it 'returns "dog", "cat" for an array with two words' do
      words = Words.new(["cat", "dog"])
      expect(words.most_frequent_words(["cat", "dog"])).to eq ["cat","dog"]
    end

    it 'returns "dog" and "cat" for an array with four words' do
      words = Words.new(["cat", "dog", "dog", "cat"])
      expect(words.most_frequent_words(["cat", "dog", "dog", "cat"])).to eq ["cat", "dog"]
    end

    it 'returns "dog" and "cat" for an array with five words' do
      words = Words.new(["cat", "dog", "dog", "cat", "mouse"])
      expect(words.most_frequent_words(["cat", "dog", "dog", "cat", "mouse"])).to eq ["cat", "dog"]
    end

    it 'returns "dog" and "cat" for an array with five words' do
      words = Words.new(["cat", "dog", "dog", "dog", "cat", "mouse", "hamster", "guinea pig"])
      expect(words.most_frequent_words(["cat", "dog", "dog", "dog", "cat", "mouse", "hamster", "guinea pig"])).to eq ["dog", "cat"]
    end
  end

end
