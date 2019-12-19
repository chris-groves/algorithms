def reversing(array)
  if array.length == 0 || array.length == 1
    array
  else
    output_array = []
    while true do
      output_array << array.last
      array.delete_at(-1)
      break if array.length == 0
    end
    output_array
  end
end
