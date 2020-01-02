class Sort
  def initialize(array)
    @array = array
    @zero_array = []
    @one_array = []
  end

  def allocate_number_to_array
    @array.each do |number|
      if number == 0
        @zero_array << number
      elsif number == 1
        @one_array << number
      end
    end
  end

  def return_answer
    @zero_array + @one_array
  end

  def sort_array
    if @array.length < 2
      @array
    elsif @array.length >= 2
      allocate_number_to_array
      return_answer
    end
  end
end
