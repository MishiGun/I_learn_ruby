def reverser
	yield.split.map { |elem| elem.reverse }.join(' ')
end

def adder (add = 1)
	yield + add
end

def repeater (n = 1)
	i = 1
	while n >= i
		yield
		i += 1
	end
end