class RPNCalculator
	
	attr_accessor :calculator_ram

def initialize
	@calculator_ram = []
	@value = 0
end

def push(num)
	@calculator_ram.push(num.to_f)
end

def arr_pop
	if @calculator_ram.empty?
		raise "calculator is empty"
	else
		@calculator_ram.pop
	end
end

def value
	@calculator_ram.last
end

def plus
	push(arr_pop + arr_pop)
end

def minus
	push(arr_pop - arr_pop)
end

def divide
	push(arr_pop / arr_pop)
end

def times
	push(arr_pop * arr_pop)
end

def tokens(str)
	sym = ["+", "-", "*", "/"]
	str.split.map! do |elem|
		if sym.include?(elem)
			elem.to_sym
		else
			elem.to_i
		end
	end
end

def evaluate(str)
	tokens(str).map do |elem|
		case elem
			when :+
				plus
			when :-
				minus
			when :/
				divide
			when :*
				times
			else
				push elem
		end
	end
	value
end

end