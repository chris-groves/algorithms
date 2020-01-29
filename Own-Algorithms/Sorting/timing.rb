require '../Timer/Array-Builder/lib/array_builder'
require './lib/sorting'

array = ArrayBuilder.new

array.build_array

sort = Sort.new(array.array.shuffle)

p sort.sort
