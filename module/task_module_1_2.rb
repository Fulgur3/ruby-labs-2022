require 'test-unit'

class Test3 < Test::Unit::TestCase
  def test_sort
    customer1 = Customer.new(1, "Bilokrynytskyi", "Oleksandr", "Oleksandrovych", "somewhere", "2222222222222222", "1500")
    customer2 = Customer.new(2, "Andreev", "Danyil", "fathername", "idk", "1234567890123456", "1501")
    customer3 = Customer.new(3, "Zaharenko", "Kiril", "don't remember", "Kyiv", "5555555555555555", "1505")
    customer4 = Customer.new(4, "Bondarevska", "Polina", "Oleksandrivna", "Golosiivskyi", "8888888888888888", "1200")
    customer5 = Customer.new(5, "surname", "name", "fathername", "adress", "4444444444444444", "1")
    array = [customer1, customer2, customer3, customer4, customer5]
    result = [customer2, customer1, customer4, customer3, customer5]
    sort = sortAlphabet(array)
    assert_equal(result, sort)
  end
  def test_credit
    customer1 = Customer.new(1, "Bilokrynytskyi", "Oleksandr", "Oleksandrovych", "somewhere", "2222222222222222", "1500")
    customer2 = Customer.new(2, "Andreev", "Danyil", "fathername", "idk", "1234567890123456", "1501")
    customer3 = Customer.new(3, "Zaharenko", "Kiril", "don't remember", "Kyiv", "5555555555555555", "1505")
    customer4 = Customer.new(4, "Bondarevska", "Polina", "Oleksandrivna", "Golosiivskyi", "8888888888888888", "1200")
    customer5 = Customer.new(5, "surname", "name", "fathername", "adress", "4444444444444444", "1")
    array = [customer1, customer2, customer3, customer4, customer5]
    result = [customer1, customer3, customer5]
    credit = creditDiapason(array)
    assert_equal(result, credit)
  end
end

class Customer
  attr_reader :id, :surname, :name, :fatherName, :address, :cardNumber, :accountNumber

  def initialize(id, surname, name, fatherName, address, cardNumber, accoutNumber)
    @id = id
    @surname = surname
    @name = name
    @fatherName = fatherName
    @address = address
    @cardNumber = cardNumber
    @accountNumber = accoutNumber
  end

  def <=>(other)
    @surname <=> other.surname
  end

  def to_s
    @id.to_s + " " + @surname.to_s + " " + @name.to_s + " " + @fatherName.to_s + " " + @address.to_s + " " + @cardNumber.to_s + " " + @accountNumber.to_s
  end

end

customer1 = Customer.new(1, "Bilokrynytskyi", "Oleksandr", "Oleksandrovych", "somewhere", "2222222222222222", "1500")
customer2 = Customer.new(2, "Andreev", "Danyil", "fathername", "idk", "1234567890123456", "1501")
customer3 = Customer.new(3, "Zaharenko", "Kiril", "don't remember", "Kyiv", "5555555555555555", "1505")
customer4 = Customer.new(4, "Bondarevska", "Polina", "Oleksandrivna", "Golosiivskyi", "8888888888888888", "1200")
customer5 = Customer.new(5, "surname", "name", "fathername", "adress", "4444444444444444", "1")
array = [customer1, customer2, customer3, customer4, customer5]

def sortAlphabet(array)
  arrSort = array
  arrSort.sort!
  arrSort.to_s

  arrSort
end

def creditDiapason(array)
  credit = Array.new
  array.each do |customer|
    if (customer.cardNumber.to_i > 1333333333333333 && customer.cardNumber.to_i < 7777777777777777)
      credit.append(customer)
    end
  end
  credit
end

printf("\n")
printf("Alphabet sort")
printf("\n")
puts sortAlphabet(array)

printf("\n")
printf("interval from 1333333333333333 to 7777777777777777")
printf("\n")

puts creditDiapason(array)