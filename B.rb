def valid?(n, x, l_arr)
  return false unless [n, x].all?{|obj| obj.is_a?(Integer)}
  return false unless l_arr.all?{|obj| obj.is_a?(Integer)}
  return false if n < 1 || n > 100
  return false if x < 1 || x > 1000
  return false if l_arr.all?{|num| num < 1 || num > 100} 
  return false if n != l_arr.size
  true
end

def bounding(n, x, l_arr)
  return nil unless valid?(n, x, l_arr)
  sum = 0
  n_arr = l_arr.map{|l| sum += l}.push(0).sort
  cnt = 0
  n_arr.each do |n|
    if x >= n
      cnt += 1
    end
  end
  p cnt
end

puts bounding(3, 6, [3, 4, 5]) == 2
puts bounding(4, 9, [3, 3, 3, 3]) == 4
