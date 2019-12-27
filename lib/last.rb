require 'benchmark'

def last(array)
  array.last
end

def timing(array)
  time = Benchmark.measure do
      array.last
  end
  puts time
end
