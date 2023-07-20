print "Ingrese primer nombre: "
nombre1 = gets.chomp
print "Ingrese segundo nombre: "
nombre2 = gets.chomp
if nombre1.length == nombre2.length
    print nombre1," tiene la misma cantidad de letras que ",nombre2
else
    if nombre1.length>nombre2.length
        print nombre1," tiene mas letras que ",nombre2
    else
        print nombre1," tiene menos letras que ",nombre2
    end
end