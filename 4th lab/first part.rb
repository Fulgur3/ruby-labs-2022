def func1
  arr= [4.3,2.5,3.8,2.6,1.7,3.9,7.5,9.8,10.2,20.6, 15.5, 14.7, 16.8, 19.4, 25.6, 30.7]
  sumNum=0
  sumIdx=0
arr.each { |i|
  if i.to_i%2==0
    sumNum+=i.to_i
    sumIdx+=arr.index(i)
  end
}
  print "Сума парних цілих частин: " + sumNum.to_s + " Сума індексів " +sumIdx.to_s
end

func1