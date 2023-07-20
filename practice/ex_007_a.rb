primer = 1
puts "ingrese el numero final"
num = gets.to_i
if num>1    
    while primer<=num
        print primer,"-"
        primer = primer+1
    end
else
    puts "el numero debe ser mayor a 1"
end