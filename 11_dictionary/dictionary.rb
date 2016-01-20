class Dictionary

	attr_accessor :entries

def initialize
	@entries = {}
end

def add (entry)
	if entry.is_a?(String)
		@entries[entry] = nil
	else
		entry.each { |key, value| @entries[key] = value }
	end
end

def keywords
	@entries.keys.sort
end

def include? (entry_key)
    @entries.include?(entry_key)
end

def find (entry_key)
	@entries.select { |key, value| key =~ /#{entry_key}/ }
end

def printable
	str = ""
	@entries.sort.each { |key, value| str += "[#{key}] \"#{value}\"\n"}
	str.strip
end
end