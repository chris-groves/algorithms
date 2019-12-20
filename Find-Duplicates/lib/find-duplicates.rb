def find_duplicates(array)
  if array.length == 0 || array.length == 1
    0
  elsif array.length > 1
    output_array = []
    word_to_check = []
    while true do
      word_to_check << array[0]
      array.delete_at(0)
      if array[0] == word_to_check[0]
          output_array << array[0]
      end
      word_to_check.delete_at(0)
      break if array.length == 1
    end
    output_array
  end
end
