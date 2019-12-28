require 'benchmark'

def last(array)
  array.last
end

def timing(array)
  counter = 1
  while true do
    time = Benchmark.measure do
      array.last
    end
    print counter
    print time
    counter += 1
    break if counter == 101
  end
end

timing([1,2,3])
