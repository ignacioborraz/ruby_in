puts "ingrese cantidad de piezas"
cantidad = gets.to_i
contador = 0
aptas = 0
while contador<cantidad
    puts "ingrese longitud (ideal entre 1.2 y 1.3)"
    longitud = gets.to_f
    if longitud>=1.2 && longitud<=1.3
        aptas = aptas+1
    end
    contador = contador+1
end
print "se cargaron ",aptas," piezas aptas"