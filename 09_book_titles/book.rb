class Book

	attr_reader :title

def title= (title)
	@title = title.split.map!{ |elem| elem.capitalize }.join(" ").gsub(/\s(A|An|And|In|Over|Of|The)\b/){ |str| str.downcase }
end

end