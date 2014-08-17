require 'spec_helper'


# If we list all the natural numbers below 10 that are multiples of 3 or 5, 
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

#20

# 3, 5, 6, 9, 12, 15, 18, 20, 
# go through each number & check if it's divisblbe by 3 || 5 and if so store it 
# then we want to sum that collection 
#defaults to check for multiples up to 100 otherwise it uses what is passed in 
#can take in any number of values to find the multiples of within the range 

describe SumMultiples do 

  before :each do 
    @three_five = SumMultiples.new
    @three_five.num = 20
  end 

  describe '#new' do 
    it "returns a SumMultiples object with num of 20" do 
      expect(@three_five).to be_an_instance_of SumMultiples
      expect(@three_five.num).to eq(20)
    end 
  end 

  describe '#collect_multiples' do 
    it "loops through num and collects all the multiples of 3 || 5" do 
      expect(@three_five.collect_multiples).to include(3,5,6,9,10,12,15,18,20)
    end 
  end 

  describe '#sum_multiples' do 
    it 'sums the return value of collect_multiples' do 
      expect(@three_five.sum_multiples).to eq(98)
    end 
  end 

end 

