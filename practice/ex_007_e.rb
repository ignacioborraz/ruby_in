puts "ingrese la cantidad de personas"
cantidad = gets.to_i
sumatoria = 0
contador = 1
while contador<=cantidad
    print "ingrese la altura de la persona ",contador,"\n"
    altura = gets.to_f
    sumatoria = sumatoria+altura
    contador = contador+1
end
promedio = sumatoria/cantidad
print "el promedio de alturas es ",promedio