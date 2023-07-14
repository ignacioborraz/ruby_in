puts "ingrese coordenada X"
coord_x = gets.to_i
puts "ingrese coordenada Y"
coord_y = gets.to_i
if coord_x>0
    if coord_y>0
        puts "está en cuadrante 1"
    else
        puts "está en cuadrante 4"
    end
else
    if coord_y>0
        puts "está en cuadrante 2"
    else
        puts "está en cuadrante 3"
    end
end