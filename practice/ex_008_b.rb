sumatoria = 0
loop do
    print "Ingrese numero de cuenta: "
    cuenta = gets.to_i
    if cuenta < 0
        break
    else
        print "Ingrese saldo de la cuenta: "
        saldo = gets.to_i
        if saldo==0
            puts "Nulo"
        else
            if saldo>0
                puts "Acreedor"
            else
                puts "Deudor"
            end
        end
    end
end