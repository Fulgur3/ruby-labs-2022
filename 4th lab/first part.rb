require 'test-unit'

$arr= [4.3,2.5,3.8,2.6,1.7,3.9,7.5,9.8,10.2,20.6, 15.5, 14.7, 16.8, 19.4, 25.6, 30.7]
class Test1<Test::Unit::TestCase
  def setup
  end

   def test2
  #
    assert_equal(func2,59)
    assert_equal(func1,98)
   end

  def teardown
  end
end
def func1
  sumNum=0

  $arr.each { |i|
  if i.to_i%2==0
    sumNum+=i.to_i
  end
}
  print "Сума парних цілих частин: " + sumNum.to_s
  return(sumNum)
end

def func2
  sumIdx=0

  $arr.each { |i|
    if i.to_i%2==0
      sumIdx+=$arr.index(i)
    end
  }
  print "Сума індексів= "+sumIdx.to_s
    return (sumIdx)
end
