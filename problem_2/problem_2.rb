class Fibonacci
  attr_accessor :seed, :max, :sequence

  def initialize
    @seed = [1,1]
    @max = 4000000
  end 

  def next_num
    @seed[-1] + @seed[-2]
  end

  def collect_num
    while next_num <= @max
      @seed << next_num
    end
  end

  def even_fib
    @seed.select {|n| n.even?}
  end

  def sum_evens
    collect_num
    even_fib.inject(:+)
  end

end

if $0 == __FILE__

@fib = Fibonacci.new
puts @fib.sum_evens

end