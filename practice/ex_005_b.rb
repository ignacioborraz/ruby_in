puts "ingrese un numero"
num = gets.to_i
puts "el numero es"
if num>0
    puts "positivo"
else
    if num==0
        puts "nulo"
    else
        puts "negativo"
    end
end