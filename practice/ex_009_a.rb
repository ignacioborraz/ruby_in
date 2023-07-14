suma = 0
respuesta = "si"
while respuesta=="si"
    print "ingrese un numero: "
    numero = gets.to_i
    suma = suma+numero
    print "desea ingresar otro numero (si): "
    respuesta = gets.chomp
end
print "la suma de los numeros da: ",suma