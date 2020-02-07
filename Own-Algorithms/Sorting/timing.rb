require '../Timer/Array-Builder/lib/array_builder'
require './lib/sorting'
require 'benchmark'

array = ArrayBuilder.new

array.build_array

sort = Sort.new(array.array.shuffle)

results_array = []

results_array << Benchmark.realtime { sort.sort }

p results_array
