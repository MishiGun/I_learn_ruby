def measure (num = 1)
  start = Time.now
  count = num
  while count > 0
    yield
    count = count - 1
  end
  (Time.now - start) / num
end