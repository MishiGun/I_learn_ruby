def measure (times = 1) 
  start = Time.now
  count = times
  while count > 0
    yield if block_given?
    count = count - 1
  end
  (Time.now - start) / times
end