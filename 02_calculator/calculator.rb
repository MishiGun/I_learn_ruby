def add (x, y)
	x+y
end

def subtract (x, y)
	x-y
end

def sum (arr)
	arr.inject(0) {|res, elem| res + elem}
end

def multiply (arr)
	arr.inject(1) {|res, elem| res * elem}
end

def power (x, y)
	x**y
end

def factorial (x)
	if x<=0
		1
	else
		#(1..x).to_a.inject(){|elem1, elem2| elem1*elem2}
		x*factorial(x-1)
	end
end