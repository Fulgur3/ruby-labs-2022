


def toDec(numb, base=2)
  val=0
  numb.split('').map(&:to_i).reverse.each_with_index { |dig,idx |
  val+=base**idx if dig==1
  }
  return val
end

def biToDec(value)
  return toDec(value,2)
end

numb="1000010010010"

puts "#{numb} in decimal is #{biToDec(numb)}"