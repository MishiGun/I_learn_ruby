class Temperature

def initialize (temp={})
	if temp.has_key?(:f)
		@temp_fahrenheit = temp[:f]
	elsif temp.has_key?(:c)
		@temp_fahrenheit = ctof temp[:c]
	end
end

def ftoc(t_in_f)
    (t_in_f-32) * (5.0/9.0)
end

def ctof(t_in_c)
    t_in_c * (9.0/5.0) + 32
end

def in_fahrenheit
	@temp_fahrenheit
end

def in_celsius
	ftoc @temp_fahrenheit
end

def self.from_celsius(in_cel)
	Temperature.new(:c => in_cel)
end

def self.from_fahrenheit(in_f)
	Temperature.new(:f => in_f)
end

end

class Celsius < Temperature
	
def initialize(c)
	super(:c => c)
end

end

class Fahrenheit < Temperature
	
def initialize(f)
	super(:f => f)
end

end
