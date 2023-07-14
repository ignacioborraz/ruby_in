contador = 1
aprobados = 0
desaprobados = 0
while contador<=10
    print "ingrese la nota ",contador,"\n"
    nota = gets.to_f
    if nota>=7
        aprobados = aprobados+1
    else
        desaprobados = desaprobados+1
    end
    contador = contador+1
end
print "hay ",aprobados," aprobados y ",desaprobados," desaprobados"