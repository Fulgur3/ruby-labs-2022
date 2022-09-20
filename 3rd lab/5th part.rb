require 'bigdecimal'
module Math
  PI = 3.141
end

$n=4
$c=3

def y(x,n,c)
  return ((x*x)+x*Math.sqrt(((x*x)-(c*c)).abs))*(1.0/$n)+((x*x+1)/((1/x)+(1/n)))+(((3*x)+(c**x))/(x+1))
end

def z(x)
  return 2*((Math.sin(4*x)**(-1))-(Math.tan(((7*Math::PI)/2)+4*x)))+Math.tan(5*Math::PI+x)
end

def f(x, n, c)
  case x
  when 2...n
    return y(x, n,c)
  when n...2*n
    return z(x)
  else
    return y(x, n,c) + z(x)
  end
end

def subtask1
  x = 1.0
  step = ($n - 1.0)/($n + $c)
  puts "step is #{step}"
  while x <= $n
    puts "#{x} | #{y(x, $n, $c).round(10)}"
    x += step
  end
end

def subtask2
  x = Math::PI / $n
  step = (Math::PI - x)/((3/2)*$n + $c)
  puts "step is #{step}"
  while x <= Math::PI
    puts "#{x} | #{z(x)}"
    x += step
  end
end

def subtask3
  x = 2.0
  step = ($c - 2.0)/(2.0 * $n)
  puts "step is #{step}"
  while x <= $c
    puts "#{x} | #{f(x, $n, $c)}"
    x += step
    return if x == $c && step == 0
  end
end

puts "Subtask 1:"
puts "x  |  y"
subtask1


puts "\nSubtask 2:"
puts "x  |  z"
subtask2

puts "\nSubtask 3:"
puts "x  |  f"
subtask3