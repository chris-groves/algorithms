require 'benchmark'

file = File.open('output.txt', 'w')

x = 50000
array = Array(1..x)
results_array = []

while true do
  counter = 1
  while true do
    time = Benchmark.realtime do
        array.shuffle
    end

    results_array << time
    counter += 1
    break if counter == 101
  end

  results_array.sort
  results_array.pop(5)
  results_array.shift(5)

  file.puts "#{x} - #{results_array.sum/results_array.length}"
  results_array = []
  x += 50000
  array = Array(1..x)
  break if x == 1050000
end

file.close
