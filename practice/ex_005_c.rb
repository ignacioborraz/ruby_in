puts "ingrese un numero"
num = gets.to_i
puts "el numero tiene"
if num>999
    puts "más de 4 cifras!"
else
    if num>99
        puts "3 cifras"
    else
        if num>9
            puts "2 cifras"
        else
            if num>=0
                puts "1 cifra"
            else
                puts "negatividad!"
            end
        end
    end
end