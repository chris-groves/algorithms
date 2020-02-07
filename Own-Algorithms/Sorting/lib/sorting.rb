class Sorter
  attr_accessor :smallest_element, :array, :array_length, :output_array

  def initialize(array)
    @array = array
    @output_array = []
    @smallest_element = @array[0]
    @array_length = @array.length
  end

  def identify_smallest_array_element
    @array.each do |number|
      if number < @smallest_element
        @smallest_element = number
      end
    end
    add_smallest_array_element_to_output_array
    delete_smallest_array_element
    reassign_smallest_element
  end

  def reassign_smallest_element
    @smallest_element = @array[0]
  end

  def delete_smallest_array_element
    @array.delete_at(@array.index(@smallest_element))
  end

  def add_smallest_array_element_to_output_array
    @output_array << @smallest_element
  end

  def sort
    if @array.length == 1
      @array
    elsif @array.length > 1
      @array_length.times { identify_smallest_array_element }
      @output_array
    end
  end
end
