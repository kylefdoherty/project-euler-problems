# If we list all the natural numbers below 10 that are multiples of 3 or 5, 
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

class SumMultiples
  attr_accessor :num

  def initialize
    @num = 9999
  end 

  def collect_multiples 
    (1..@num).to_a.select {|x| x % 3 == 0 || x % 5 == 0}
  end 

  def sum_multiples
    collect_multiples.inject(:+)
  end 


end 

if $0 == __FILE__

  @sum = SumMultiples.new
  puts @sum.sum_multiples

end


  