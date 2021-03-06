def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i() !=0
end

def operation_to_message(op)
  case op
  when '1'
      'Adding'
  when '2'
      'Subtracting'
  when '3'
      'Multiplying'
  when '4'
      'Dividing'
  end
end

prompt("Welcome. I am Mr.Calculator. I calculate. Enter your name:")

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt("Make sure to give me a name")
  else
    break
  end
end

prompt("Hi #{name}!")

loop do #main loop
  number1 = ''
  loop do
    prompt("What's that first number, sonny?")
    number1= Kernel.gets().chomp()

  if valid_number?(number1)
    break
    else
      prompt("Hmm, that ain't a valid number, LITTLE BOY")
    end
  end

  number2=''
  loop do
    prompt("What's that there second number, sonny?")
    number2= Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt("Aint a valid number, sir")
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)
  
  
  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2 , 3, or 4")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers..")

  result = case operator
          when '1'
            result = number1.to_i() + number2.to_i()
          when '2'
            result = number1.to_i() - number2.to_i()
          when '3'
            result = number1.to_i() * number2.to_i()
          when '4'
            result = number1.to_f() / number2.to_f()
          end 


  prompt("The result is #{result}")

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer= Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thanks for using the calculator, homie")