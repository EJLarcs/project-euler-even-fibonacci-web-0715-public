# Implement your object-oriented solution here!

class EvenFibonacci

  def initialize(limit)
    @limit = limit
    @fibonacci_array = [1, 2]
  end

  def sum
    new_fibonacci = @fibonacci_array[-1] + @fibonacci_array[-2]
    if new_fibonacci <= @limit
      @fibonacci_array << new_fibonacci
      sum
    else
      @fibonacci_array.select! {|n| n%2 == 0}.inject(:+)
    end
  end

end
