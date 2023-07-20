print "ingrese la cantidad de personas a evaluar: "
cantidad = gets.to_i
contador = 1
nombre_maximo = ""
altura_maxima = 0
while contador<=cantidad
    print "datos de la persona ",contador,"\n"
    print "ingrese nombre: "
    nombre = gets.chomp
    print "ingrese altura: "
    altura = gets.to_f
    if altura>altura_maxima
        altura_maxima = altura
        nombre_maximo = nombre
    end
    contador = contador+1
end
print nombre_maximo," es la persona más alta con ",altura_maxima,"mts"