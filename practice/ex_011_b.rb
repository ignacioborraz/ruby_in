print "Ingrese una oración: "
oracion = gets.chomp
if oracion.include?("hola")  
  if oracion.start_with?("hola")
    puts "La oración comienza con la palabra 'hola'"
  else
    if oracion.end_with?("hola")
      puts "La oración finaliza con la palabra 'hola'"
    else
      puts "La oración incluye la palabra 'hola'"
    end
  end
end