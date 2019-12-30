require 'benchmark'

class Last
  attr_reader :array_length, :times_array

  def initialize(array_length)
    @array_length = array_length
    @times_array = []
  end

  def build_array
    @array = Array(1..array_length)
  end

  def timing
    starting = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    @array.last
    ending = Process.clock_gettime(Process::CLOCK_MONOTONIC)
    time = ending - starting
    p time
  end
end

timer = Last.new(5)
timer.build_array
timer.timing
