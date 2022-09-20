def func(x)
  case x
  when -4..0
    if(x==-4)
      return "Out of bonds"
    end
    return ((x-2).abs / (x**2 * Math.cos(x)))**(1.0/7.0)
  when 0..12
    return 1.0 / (Math.tan(x + Math.exp(-x)) / Math.sin(x)**2)**(1.0/4.5)
  else
    return 1 / ( 1 + x / (1 + x / (1 + x)))
  end
end

puts "Y(-4) = #{func(-4)}"
puts "Y(21) = #{func(21)}"
puts "Y(13) = #{func(13)}"
puts "Y(9.11) = #{func(9.11)}"
puts "Y(-7) = #{func(-7)}"
puts "Y(10) = #{func(10)}"