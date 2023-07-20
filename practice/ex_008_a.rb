sumatoria = 0
loop do
    print "Ingrese un valor entre 0 y 99 (0 finaliza):"
    valor = gets.to_i
    if valor == 0
        puts "se cierra la sumatoria"
        break
    else
        if valor>0 && valor<100
            sumatoria = sumatoria+valor
        else
            puts "valores no permitidos"
            break
        end
    end
end
print "la sumatoria da: ",sumatoria