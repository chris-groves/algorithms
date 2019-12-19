def shuffling(array)
  if array.length == 0 || array.length == 1
    array
  else
    output_array = []
    array.each { |number| output_array.insert(rand(0..output_array.length), number) }
    output_array
  end
end
