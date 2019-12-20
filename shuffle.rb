require 'benchmark'

file = File.open('output.txt', 'w')

x = 50000

array = Array(1..x)

while true do
  counter = 1
  while true do
    time = Benchmark.realtime do
        array.shuffle
    end

    file.puts "#{x} - #{time*1000}"
    counter += 1
    break if counter == 100
  end
  x += 50000
  array = Array(1..x)
  break if x == 1050000
end

file.close
