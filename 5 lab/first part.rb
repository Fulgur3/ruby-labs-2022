require 'test-unit'

class Test1<Test::Unit::TestCase

def setup
end

def test2

  assert_equal(prm(0.3, 1.0, 1e+5){|x| f1(x)},0.5250732872636921)
  assert_equal(trp(0.2, 0.3, :f2, $n),0.12101312327672367)
end

def teardown
end
end

def prm(a, b, n, h = 1.0 * (b - a) / n)
  sum = 0.0
  x = a + h - h / 2
  loop do
    y = yield(x)
    sum += h * y
    x += h
    break if x > b
  end
  sum
end

def trp(a, b, function, n)
  h = 1.0 * (b - a) / n

  current_argument = a + h
  sum = method(function).call(a) / 2 + method(function).call(b) / 2

  while current_argument <= b - h do
    sum += method(function).call(current_argument)
    current_argument += h
  end

  h * sum
end

def f1(x)
  Math.sqrt((2**x)-1)
end

def f2(x)
  Math.asin(Math.sqrt(x))/Math.sqrt(x*(1-x))
end

a = 0.3
b = 1.0
$n = 1e+5

printf("First function integration using rectangles:\na = #{a} b = #{b}\nIntegrate(f1) =#{prm(a, b, $n){|x| f1(x)}}\n\n")

a = 0.2
b = 0.3

printf("Second function integration using trapezium:\na = #{a} b = #{b}\nIntegrate(f1) =#{trp(a, b, :f2, $n)}\n")