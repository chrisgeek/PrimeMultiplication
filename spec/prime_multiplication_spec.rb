# To change this license header, choose License Headers in Project Properties.
# To change this template file, choose Tools | Templates
# and open the template in the editor.

require_relative "../lib/multiplication_table"
require_relative "spec_helper"
describe MultiplicationTable do
  before(:each) do
    @multiplication_table = MultiplicationTable.new
    @printed = []
  end

  it "should desc" do
    # TODO
  end
  
  describe "is_prime?" do
    
    context "is 29 a prime numner" do
      it "returns true" do
        expect(@multiplication_table.is_prime?(29)).to eql(true)
      end
    end
  
    context "is 10 a prime number" do
      it "returns false" do
        expect(@multiplication_table.is_prime?(10)).to eql(false)
      end
    end
  end
  
  describe "get_primes" do 
    context "testing with num = 10" do
      it "size is 10" do
        expect(@multiplication_table.get_primes(10).size == 10)
      end
    end
  end
  
  describe "print_table" do
    context "is it successful" do
      it "is successful == true" do
        expect(@multiplication_table.print_table()).to eql(true)
      end
    end
  end
end

