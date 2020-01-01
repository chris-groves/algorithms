require 'benchmark'

class Reverse
  attr_accessor :array_length, :array, :results_array, :file, :average_time

  INCREASE_ARRAY_LENGTH_AMOUNT = 50000

  def initialize(array_length)
    @array_length = array_length
    @results_array = []
    @file = ""
    @array = []
    @average_time = 0
  end

  def open_output_file
    @file = File.open('reverse_output.txt', 'a')
  end

  def close_output_file
    @file.close
  end

  def build_array
    @array = Array(1..@array_length)
  end

  def time_shuffle_method
    Benchmark.realtime { @array.reverse }
  end

  def add_time_to_results_array
    @results_array << time_shuffle_method
  end

  def sort_results_array
    @results_array = @results_array.sort
  end

  def remove_largest_5_results
    @results_array.pop(5)
  end

  def remove_smallest_5_results
    @results_array.shift(5)
  end

  def calculate_average_time
    @average_time = @results_array.sum/@results_array.length
  end

  def output_results_to_file
    @file.puts "#{@array_length} - #{@average_time}"
  end

  def empty_results_array
    @results_array = @results_array.clear
  end

  def increase_array_length
    @array_length += INCREASE_ARRAY_LENGTH_AMOUNT
  end
end

timer = Reverse.new(50000)

while true do
  timer.build_array
  100.times { timer.add_time_to_results_array }
  timer.sort_results_array
  timer.remove_largest_5_results
  timer.remove_smallest_5_results
  timer.calculate_average_time
  timer.open_output_file
  timer.output_results_to_file
  timer.close_output_file
  timer.empty_results_array
  timer.increase_array_length
  break if timer.array_length == 1050000
end
