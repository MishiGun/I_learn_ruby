class XmlDocument

def initialize(value = false)
  @indent = value
  @indent_size = 0
end

def method_missing(method, *args, &block)
    if args.length > 0
        attributes = args[0]
    else
        attributes = {}
    end
    str = ""
    str += ("  " * @indent_size) if @indent
    str += "<#{method}"
    attributes.each do |key, value|
    str += " #{key}='#{value}'"
    end
    
    if block != nil
        str += ">"
        str += "\n" if @indent
        @indent_size += 1
        str += yield
        @indent_size -= 1
        str += "  " * @indent_size if @indent
        str += "</#{method}>"
        str += "\n" if @indent
    else
        str += "/>"
        str += "\n" if @indent
    end
    str
end

end