puts "ingrese la cantidad de empleados"
cantidad = gets.to_i
sumatoria = 0
contador = 1
contador_mayores = 0
contador_menores = 0
while contador<=cantidad
    print "ingrese el sueldo ",contador,"\n"
    sueldo = gets.to_i
    if sueldo>=100 && sueldo<=500
        if sueldo<300
            contador_menores = contador_menores+1
        else
            contador_mayores = contador_mayores+1
        end
        sumatoria = sumatoria+sueldo
        contador = contador+1
    else
        print "sueldo invalido \n"
    end
end
print "hay ",contador_menores," empleados que cobran menos de 300 \n"
print "hay ",contador_mayores," empleados que cobran mas de 300 \n"
print "el total a pagar de sueldos es ",sumatoria