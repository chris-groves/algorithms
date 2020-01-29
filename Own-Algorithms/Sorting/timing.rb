require '../Timer/Array-Builder/lib/array_builder'
require './lib/sorting'
require 'benchmark'

array = ArrayBuilder.new

array.build_array

sort = Sort.new(array.array.shuffle)

file = File.open('sorting_output.txt', 'a')

file.puts Benchmark.realtime { sort.sort }

file.close
