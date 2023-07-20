puts "ingrese sueldo"
sueldo = gets.to_i
puts "ingrese años de antiguedad"
antiguedad = gets.to_i
puts "sueldo de:"
if sueldo<500
    if antiguedad>=10
        sueldo = sueldo*1.2
    else
        sueldo = sueldo*1.05
    end
end
puts sueldo