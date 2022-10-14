require 'test-unit'

class Test1<Test::Unit::TestCase

  def setup
  end

  def test2
    assert_equal(series(0.5, 25) { |x, i| a_n(i)}, -13)
  end

  def teardown
  end
end

def series(x, n = Float::INFINITY, eps = 1e-4)
  summand = yield(x, 0)
  previous_summand = summand
  sum = summand

  (1..n).each do |i|
    summand = yield(x, i)
    sum += summand

    if n == Float::INFINITY && (summand - previous_summand).abs < eps
      break
    end

    previous_summand = summand
  end
  sum
end

def a_n(i)
  ((-1)**i)*(2*(i**2)+1)/factorial(2*i)
end

def factorial n
  n > 1 ? n * factorial(n - 1) : 1
end


