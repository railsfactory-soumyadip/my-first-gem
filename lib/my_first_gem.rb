require "my_first_gem/version"

class First
 def self.first(str)
 	message = "Please enter positive values only"
  value = str.tr('[]', '').split(',').map(&:to_i)
  if value.select{|n| n < 0}.empty?
   result = str.tr('[]', '').split(/\W+/).map(&:to_i)
   sum = 0
   sum = result.inject(0){|sum,a| sum + a }
  else
  	puts "positive numbers allowed only"
   	return value.select{|n| n < 0}
  end
 end
end
