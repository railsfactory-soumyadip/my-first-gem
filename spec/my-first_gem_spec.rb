require 'spec_helper'
require 'my_first_gem'


describe First do
	puts "****************************************************"
  puts "This is my first gem"
  puts "****************************************************"

  it "should return 0 in case of null" do
  	param_obj = First.first("")
  	expect(param_obj).to eq(0)
	end

	it "should return 3 in case of 1,2" do
  	param_obj = First.first("1,2")
  	expect(param_obj).to eq(3)
	end

	it "should return 3 in case of 1***2" do
		param_obj = First.first("1***2")
  	expect(param_obj).to eq(3)
	end

	it "should return error in case of a negative number" do
		param_obj = First.first("1,-2")
  	expect(param_obj).to eq([-2])
	end
end