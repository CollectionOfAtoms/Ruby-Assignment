class CartesianProduct
    include Enumerable
 def initialize(a,b)
	product=Array.new
	a.each do |x|
		b.each do |y|
		product.push([x,y])
		end
	end
p product	
 end
end
a=[1,2,3,4]
b=["a","s","d","f"]
c=CartesianProduct.new(a,b)
