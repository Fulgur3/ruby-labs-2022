def func3(x)
  print" Enter n:"
  n=gets.chomp.to_i
  sum=0
  fact=1
  (o..n+1).each {
    |i|
    sum+=(x.to_f**i)/fact
    fact*=(i+1)
  }
  return sum
end

def func5(x)
  print "Enter n:"
  n=gets.chomp.to_i
  if n == 0
    return 0
  end

  return Math.sqrt(2.0 + multiple_sqrt(n - 1))
  end


puts "Sum 1 + x^1/1! + ... + x^n/n! = #{func3(x)}"
puts "Sum of n variables in sqrt(2+sqrt(2+...)=#{func5(x)}"