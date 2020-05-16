def valid?(x, a)
  return false unless [x, a].all?{|obj| obj.is_a?(Integer)}
  return false if [x, a].all?{|num| num < 0 || num > 9}
  true
end

def rounding(x, a)
  return nil unless valid?(x, a)
  x < a ? 0 : 10  
end

puts rounding(3, 5) == 0
puts rounding(7, 5) == 10