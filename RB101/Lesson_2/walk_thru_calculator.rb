# ask user for two numbers
# ask the user for an operation to perform
# perform the operation on the two numbers
# output the result

#answer = Kernel.gets()
#Kernel.puts (answer)

Kernel.puts("Welcome. I am Mr.Calculator. I calculate")

Kernel.puts("What's that first number, sonny?")
number1= Kernel.gets().chomp()

Kernel.puts("What's that there second number, sonny?")
number2= Kernel.gets().chomp()

#Kernel.puts(number1.chomp().inspect())
Kernel.puts("What operation you wanna perform, daddio? 1)add 2)subtract 3) multiply 4)divide")
operator = Kernel.gets().chomp()

if operator == '1'
  result = number1.to_i() + number2.to_i()
elsif operator == '2'
  result = number1.to_i() - number2.to_i()
elsif operator == '3'
  result = number1.to_i() * number2.to_i()
else 
  result = number1.to_f() / number2.to_f()
end


Kernel.puts("The result is #{result}")

