print "Ingrese una oración: "
oracion = gets.chomp
oracion.gsub!("hola", "hello")
puts oracion