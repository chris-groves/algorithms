def most_frequent_words(array)
  output_array = []

  array.each do |word|
    if output_array.include?(word) == false
      output_array << word
    end
  end

  hash = output_array.product([0]).to_h

  array.map do |word|
    hash[word] += 1
  end

  answer_array = []

  hash.each {|key,value| answer_array << key if value == hash.values.max }

  hash = hash.each {|key,value| hash.delete(key) if value == hash.values.max }

  if hash.length == 0
    answer_array
  else
    hash.each {|key,value| answer_array << key if value == hash.values.max }
    answer_array
  end
end
