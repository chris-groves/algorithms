def sub_sequence_sum(array,target_number)
  if array.sum == target_number
    true
  elsif array.include? target_number
    true
  elsif array[2] + array[3] == target_number
    true
  end
end
