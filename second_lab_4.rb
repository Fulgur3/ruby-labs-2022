
def decToBi(numb)
  value=''
  while numb>0
    value+=(numb%2).to_s
    numb/=2
  end
  return value.reverse
end

numb=145

puts "#{numb} in binary is #{decToBi(numb)}"