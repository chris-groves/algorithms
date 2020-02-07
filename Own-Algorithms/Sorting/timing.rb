require '../Timer/Array-Builder/lib/array_builder'
require './lib/sorting'
require 'benchmark'


array = ArrayBuilder.new

array.build_array

array.shuffle_array

array = array.array

sort = Sorter.new(array)

Benchmark.realtime { sort.sort }
