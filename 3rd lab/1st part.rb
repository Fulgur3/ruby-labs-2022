
def subtask1(a, b, c, x, y, z)
  puts "subtask 1"
  puts"a) !(a || b) && (a && !b) = #{!(a || b) && (a && !b)}"
  puts "b) (z != y) <= (6 >= Y) && a || b && c && x>=1.5 = #{(z != y) == (6 >= y) && a || b && c && x>=1.5}"
  puts "c) (8 - x * 2 <= z) && (x^2 >= y^2) ||  (z >= 15) = #{(8 - x * 2 <= z) && (x**2 >= y**2) ||  (z >= 15)}"
  puts "d) x > 0 && y < 0 || z >= (x * y - (y / x)) - (-z) = #{x > 0 && y < 0 || z >= (x * y - (y / x)) - (-z)}"
  puts "e) !(a || b && !(c || (!a || b))) = #{!(a || b && !(c || (!a || b)))}"
  puts "f) x^2 + y^2 >= 1 && x >= 0 && y >= 0 = #{x^2 + y^2 >= 1 && x >= 0 && y >= 0}"
  puts "g) (a && (c && b == b || a) || c) && b = #{(a && (c && b == b || a) || c) && b}"
end

def subtask2(x,p)
  puts "subtask 2 #{Math.log(x,Math::E)<x&& !p && (Math.sqrt(x)>x*x||(2*x==x))}"
end

puts subtask1(true,true,false,12,3,-2)
puts subtask2(4,false)