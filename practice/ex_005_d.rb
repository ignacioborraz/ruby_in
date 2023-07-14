puts "ingrese cantidad de preguntas realizadas"
preguntas = gets.to_f
puts "ingrese cantidad de preguntas correctas"
correctas = gets.to_f
porcentaje = 100*correctas/preguntas
puts "el nivel es:"
if porcentaje>=90
    puts "máximo!"
else
    if porcentaje>=75
        puts "medio"
    else
        if porcentaje>=50
            puts "regular"
        else
            puts "bajo y está fuera!"
        end
    end
end