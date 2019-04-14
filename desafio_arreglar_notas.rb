# arreglar notas 'N.A'=2.0

notas = [5,7,1,3,5,8,9,'N.A','N.A',3]
# se le dice que convierta los strings a "integer"
entero = notas.map! {|x| x.to_i}
# se le dice que si x es distinto a 0 siga sindo x , sino que se transforme en 2
new_notas = entero.map {|x| x != 0 ? x : 2}

print new_notas

suma_notas = new_notas.inject(0) { |sum, x| sum + x }

puts suma_notas
#suma las notas y las divide por la cantidad de notas
promedio = suma_notas.to_f / new_notas.count

puts promedio
