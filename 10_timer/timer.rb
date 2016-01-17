class Timer

	attr_accessor :seconds

def initialize
	@seconds = 0
end

def time_string
	a = "%02d" % (@seconds/3600)
	b = "%02d" % ((@seconds%3600)/60)
	c = "%02d" % ((@seconds%3600)%60)
	str = a + ":" + b + ":" + c
end

end