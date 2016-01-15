def echo(says)
	says
end

def shout(says)
	says.upcase
end

def repeat(says, n=2)
	Array.new(n, says).join(' ')
end

def start_of_word(says, n)
	says[0...n]
end

def first_word(says)
	says.split.first
end

def titleize(says)
	arr = says.split
	little_words = %(and the over)
	arr.each do |i|
		if little_words.include?(i)
			i
		else
			i.capitalize!
		end
	end
	arr[0].capitalize!
	arr.join(' ')
end