require 'spec_helper'


# Each new term in the Fibonacci sequence is generated by 
# adding the previous two terms. By starting with 1 and 2,
# the first 10 terms will be:

# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# By considering the terms in the Fibonacci sequence whose values 
# do not exceed four million, find the sum of the even-valued terms.

##My Steps 
#collect all the values in the fibonacci sequence up to 4 million 
#select all the even values 
#sum them

describe Fibonacci do 

  before :each do 
    @fib = Fibonacci.new
  end


  describe '#new' do 
    it "it has a seed var of [1,1]" do 
      expect(@fib.seed).to include(1,1)
      expect(@fib.max).to eq(4000000)
    end
  end 

  #add the last and second to last element 
  describe 'next_num' do 
    it "sums the last and second to last elements" do 
      @fib.seed = [1, 1, 2, 3, 5]
      expect(@fib.seed).to eq([1, 1, 2, 3, 5])
      expect(@fib.next_num).to eq(8)
    end
  end 

  describe '#collect_num' do 
    it "collects next num" do 
       @fib.seed = [1, 1, 2, 3, 5]
       @fib.max = 14
       @fib.collect_num
       expect(@fib.seed).to eq([1, 1, 2, 3, 5, 8, 13])
    end 
  end 

  describe '#even_fib' do 
    it 'collects the even nums in the sequence' do 
      @fib.seed = [1, 1, 2, 3, 5, 8, 13]
      expect(@fib.even_fib).to eq([2,8])
    end
  end

  describe '#sum_evens' do 
    it "sums the even nums in fibonacci sequence" do 
      @fib.seed = [1, 1, 2, 3, 5, 8, 13]
      @fib.max = 14
      expect(@fib.sum_evens).to eq(10)
    end 
  end 

end