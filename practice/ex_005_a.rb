puts "ingrese primer numero"
num1 = gets.to_i
puts "ingrese segundo numero"
num2 = gets.to_i
puts "ingrese tercer numero"
num3 = gets.to_i
puts "el numero más grande es"
if num1>num2
    if num1>num3
        puts num1
    else
        puts num3
    end
else
    if num2>num3
        puts num2
    else
        puts num3
    end
end