class Fibonacci
  attr_accessor :output_array

  def initialize(number)
    @number = number
    @output_array = [0,1]
    @counter = 2
  end

  def calculate(number)
    if @number == 0
      []
    elsif @number == 1
      [0]
    elsif @number == 2
      @output_array
    elsif @number > 2
      array_loop
      return_output
    end
  end

  def array_loop
    while true do
      @output_array << @output_array[-1] + @output_array[-2]
      @counter += 1
      break if @counter == @number
    end
  end

  def return_output
    @output_array
  end
end
