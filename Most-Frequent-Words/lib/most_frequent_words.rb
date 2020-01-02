class Words
  attr_accessor :array, :output_array, :hash

  def initialize(array)
    @array = array
    @output_array = []
    @hash = {}
    @answer_array = []
  end

  def identify_unique_words
    @array.each do |word|
      if output_array.include?(word) == false
        @output_array << word
      end
    end
  end

  def create_hash_of_unique_words
      @hash = output_array.product([0]).to_h
  end

  def store_count_of_each_unique_word_in_hash
    @array.map do |word|
      @hash[word] += 1
    end
  end

  def add_most_frequent_word_to_answer_array
    @hash.each {|key,value| @answer_array << key if value == @hash.values.max }
  end

  def remove_most_frequent_word_from_hash
    @hash = @hash.each {|key,value| @hash.delete(key) if value == @hash.values.max }
  end

  def return_answer
    if @hash.length == 0
      @answer_array
    else
      @hash.each {|key,value| @answer_array << key if value == @hash.values.max }
      @answer_array
    end
  end

  def most_frequent_words(array)
    identify_unique_words
    create_hash_of_unique_words
    store_count_of_each_unique_word_in_hash
    add_most_frequent_word_to_answer_array
    remove_most_frequent_word_from_hash
    return_answer
  end
end
