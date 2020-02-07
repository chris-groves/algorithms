class ArrayBuilder
  attr_accessor :array

ARRAY_STARTING_LENGTH = 50000
INCREASE_ARRAY_LENGTH_AMOUNT = 50000

  def initialize
    @array_length = ARRAY_STARTING_LENGTH
    @array = []
  end

  def increase_array_size
    @array_length += INCREASE_ARRAY_LENGTH_AMOUNT
  end

  def build_array
    @array = Array(1..@array_length)
  end

  def shuffle_array
    @array = @array.shuffle
  end
end
