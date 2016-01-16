class Array

	def sum
		res = 0
		self.each { |i| res += i}
		return res
	end

	def square
		map { |i| i*i }
	end

	def square!
		map! { |i| i*i }
	end

end