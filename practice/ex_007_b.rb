suma = 0
cantidad = 0
while cantidad<10
    puts "ingrese un numero"
    num = gets.to_i
    suma = suma+num
    cantidad = cantidad+1
end
print "la suma es "
print suma,"\n"
print "el promedio es "
print suma/cantidad