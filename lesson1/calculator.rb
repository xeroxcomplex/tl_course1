#Ruby Math Calculator (integers)

def get_number
  puts "Enter a number [integer only]"
  number = gets.chomp
  until number.match(/\d+/)
    puts "Try again, enter a number [integer only]"
    number = gets.chomp
  end
    number.to_i
end

def get_operator
  puts "What operation would you like to perform? [add(+), subtract(-), multiply(*), divide(/)]"
  operator = gets.chomp
  until operator.match(/[+\-\/*]/)
    puts "Try again, only [+, -, *, /]"
    operator = gets.chomp
  end
  operator
end

def check_zero_division(operator, number2)
  if number2 == 0 && operator == "/"
    puts "You're trying to divide by 0, let's try again...\nGive me 2 numbers:"
    false
  else
    true
  end
end

def calculate(number1, number2, operator)
  case operator
    when "+"
      number1 + number2
    when "-"
      number1 - number2
    when "*"
      number1 * number2
    when "/"
      number1 / number2
  end
end

puts "Welcome to the simple ruby calculator!\nNothing fancy, just take 2 numbers and then add, subtract, multiply, or divide.\nTo start, let's get 2 numbers:"

begin
  number1 = get_number
  number2 = get_number
  operator = get_operator
end until check_zero_division(operator, number2)
  
puts "#{number1} #{operator} #{number2} = #{calculate(number1, number2, operator)}"