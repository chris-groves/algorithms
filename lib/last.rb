require 'benchmark'

test_array = Array(1..100000)

10.times { test_array.last }

x = 50000

array = Array(1..x)

while true do
  Benchmark.bm do |bm|
    bm.report("Test Array #{x}:") do
      array.last
    end
  end
  x += 50000
  array = Array(1..x)
  break if x == 1050000
end
