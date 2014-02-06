class String
    def palindrome?()

	self.downcase!	#similar to string = string.downcase - sets 					the value of string to new value (downcased)
	
	self.gsub!(/[_\W]/,"")	#similar to string = string.gsub - 						sets value of string to new value 						(with all spaces and special 						characters removed)
	        
	return self == self.reverse

    end
end


p "A man, a plan, a canal -- Panama".palindrome?

module Enumerable
   def palindrome?()

	new_enum=self.reverse_each.map{|w| w}	
	return self == new_enum
	
   end
end
p [0,1,"foo",1,0].palindrome?
p [0,1,2,3,4].palindrome?


