require 'matrix'

matrix1=Matrix[ [1,2,3], [4,5,6], [7,8,9]]
matrix2= Matrix[ [9,8,7], [6,5,4], [3,2,1]]

sum=matrix1+matrix2

print "A+B =\n"
sum.to_a.each{|r| puts r.inspect}

print sum

