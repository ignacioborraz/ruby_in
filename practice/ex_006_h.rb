puts "ingrese primer numero"
num1 = gets.to_i
puts "ingrese segundo numero"
num2 = gets.to_i
puts "ingrese tercer numero"
num3 = gets.to_i
if num1==num2 || num1==num3 || num2==num3
    puts "los numeros deben ser diferentes"
else
    puts "el n° mas grande es:"
    if num1>num2 && num1>num3
        puts num1
        puts "el n° mas chico es"
        if num2>num3
            puts num3
        else
            puts num2
        end
    else
        if num2>num3
            puts num2
            puts "el n° mas chico es"
            if num1>num3
                puts num3
            else
                puts num1
            end
        else
            puts num3
            puts "el n° mas chico es"
            if num1>num2
                puts num2
            else
                puts num1
            end
        end
    end
end