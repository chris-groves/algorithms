require 'benchmark'

class Shuffle
  atrr_accessor :array_length, :array, :results_array, :file

  INCREASE_ARRAY_AMOUNT = 50000

  def initialize(array_length)
    @array_length = array_length
    @results_array = []
  end

  def open_output_file
    @file = File.open('shuffle_output.txt', 'w')
  end

  def close_output_file
    @file.close
  end

  def build_array
    @array = Array(1..@array_length)
  end

  def time_shuffle_method
    Benchmark.realtime do
      @array.shuffle
    end
  end

  def add_time_to_results_array
    @results_array << time_shuffle_method
  end

  def sort_results_array
    @results_array.sort
  end

  def remove_largest_5_results
    @results_array.pop(5)
  end

  def remove_smallest_5_results
    @results_array.shift(5)
  end

  def output_results_to_file
    @file.puts "#{@x} - #{@results_array.sum/@results_array.length}"
  end

  def empty_results_array
    @results_array.clear
  end

  def increase_array_length
    @array_length += INCREASE_ARRAY_AMOUNT
  end
end
