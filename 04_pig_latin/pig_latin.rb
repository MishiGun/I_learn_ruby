def translate (word)
	vowels = ["a", "o", "e", "i", "u"]
	consonant = ("a".."z").to_a - vowels
	arr = word.split
	arr.map! do |elem|
		if vowels.include?(elem[0])
	 		elem + "ay"
		elsif consonant.include?(elem[0]) && consonant.include?(elem[1]) && consonant.include?(elem[2])
	 		elem[3..-1] + elem[0..2] + "ay"
	 	elsif consonant.include?(elem[0]) && consonant.include?(elem[1])
	 		elem[2..-1] + elem[0..1] + "ay"
		elsif elem[0..1] == "qu"
	 		elem[2..-1] + "qu" + "ay"
		else consonant.include?(elem[0])
	 		elem[1..-1] + elem[0] + "ay"
		end
	end
	arr.join(" ")
end
