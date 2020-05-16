def valid?(w, h, x, y)
  return false unless [w, h, x, y].all?{|obj| obj.is_a?(Integer)}
  return false if [w, h].all?{|num| num < 0 || num > 10**9}
  return false if x < 0 || x > w
  return false if y < 0 || y > h
  true
end

def cutting(w, h, x, y)
  return nil unless valid?(w, h, x, y)
  s = w*h / 2.0
  p x == w / 2.0 && y == h / 2.0 ? "#{s} 1" : "#{s} 0"
end

puts cutting(2, 3, 1, 2) == "3.0 0" 
