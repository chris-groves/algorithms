require 'benchmark'

Benchmark.bmbm do |bm|
  array = Array.new(100000) { rand(1...9) }
  bm.report('Test Last:') do
    array.last
  end

  bm.report('Test Reverse:') do
    array.reverse
  end

  bm.report('Test Shuffle:') do
    array.shuffle
  end

  bm.report('Test Sort:') do
    array.sort
  end
end
