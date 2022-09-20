def factorial n
  n > 1 ? n * factorial(n - 1) : 1
end

$epsi=0.00001

def func1
  sum=0
  (2...100).each  { |i|
    num=0
    num=(factorial(2*i-1).to_f/(2*(factorial(i+1).to_f)**(i*(i+1))))
    sum+=num
    if num<$epsi
      return sum
    end
  }
end

def func2
  result=0
  counter=1
  (1..100).each{  |i|
    if(i%2==1)
      if(counter%2==1)
        if(1/i<=$epsi)
          break
        end
        result+=1/i
      end
    end
  }
  return result==Math::PI/4
  end

def func3
  result=0
  (1..100).each{|n|
    num=0
    num+=(factorial(3*n-1).to_f*factorial(2*n-1).to_f)/(factorial(4*n).to_f*(3**(2*n))*(factorial(2*n).to_f))
    result+=num
    if num<$epsi
      return result
    end
  }

end

puts func1
puts func2
puts func3