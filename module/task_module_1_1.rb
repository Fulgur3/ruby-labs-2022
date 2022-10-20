require 'test-unit'

  class Test1 < Test::Unit::TestCase
    def test_search
      result = f(-6, 2, 2, 1, 2, 0)

      expectedResult = {-6=>-3, -4=>10, -2=>5, 0=>0, 2=>-5}

      assert_equal( result, expectedResult)

    end
  end


  def f(start_x, end_x, dx, a, b, c)
    puts "Expression's value: ", a.truncate & (b.truncate | c.truncate)

    if a.truncate && (b.truncate || c.truncate) == 0
      a = a.to_i
      b = b.to_i
      c = c.to_i
    end
    answers = {}
    (start_x..end_x).step(dx).each do |x|
      if x+5 < 0 && c == 0
        answers[x] = 1/(a*x) -b
      elsif x+5 > 0 && c != 0
        answers[x] = (x - a) / x
      else
        answers[x] = 10*x / (c-4)
      end
    end
    answers
  end