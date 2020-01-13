class Pairing
  attr_accessor :pair_array, :working_array, :counter, :day_array

  def initialize(array)
    @array = array
    @output_array = []
    @day_array = []
    @pair_array = []
    @working_array = []
    @counter = 1
  end

  def working_array
    @array.each do |name|
      @working_array << name
    end
  end

  def pairing
    @pair_array << @working_array[0]
    @pair_array << @array[@counter]
    @working_array.delete_at(@counter)
    @working_array.delete_at(0)
    @counter += 1
    @output_array << @pair_array
    @pair_array = []
    @pair_array << @working_array[0]
    @pair_array << @working_array[1]
    @output_array << @pair_array
    @day_array << @output_array

    @pair_array = []
    @output_array = []
    @working_array = []
    working_array
    @pair_array << @working_array[0]
    @pair_array << @array[@counter]
    @working_array.delete_at(@counter)
    @working_array.delete_at(0)
    @counter += 1
    @output_array << @pair_array
    @pair_array = []
    @pair_array << @working_array[0]
    @pair_array << @working_array[1]
    @output_array << @pair_array
    @day_array << @output_array

    @pair_array = []
    @output_array = []
    @working_array = []
    working_array
    @pair_array << @array[0]
    @pair_array << @array[@counter]
    @working_array.delete_at(@counter)
    @working_array.delete_at(0)
    @counter += 1
    @output_array << @pair_array
    @pair_array = []
    @pair_array << @working_array[0]
    @pair_array << @working_array[1]
    @output_array << @pair_array
    @day_array << @output_array
    @day_array
  end
end
