# Ejercicio 1
def multiplicar(numero1, numero2)
  resultado = 0
  numero2.times do
    resultado += numero1
  end
  resultado
end

puts 'Ejercicio 1. Multiplicar dos numeros sin usar operador *'
puts multiplicar(3, 5)
puts

# Ejercicio 5
def cantidad_palabras(frase)
  cantidad = {} # uso de hash para mostrar las cantidades de palabras de una frase
  palabras = frase.split(' ')
  palabras.each do |palabra|
    if cantidad[palabra]
      cantidad[palabra] += 1
    else
      cantidad[palabra] = 1
    end
  end
  cantidad
end

puts 'Ejercicio 5. Cantidad de palabras de una frase'
puts cantidad_palabras('Prueba de Handel bay Prueba bay')
puts

# Ejercicio 3
def mayor(arreglo = [])
  mayor = arreglo[0]
  arreglo.each do |i|
    mayor = i if i > mayor
  end
  mayor
end

puts 'Ejericio 3. Número mayor del arreglo'
puts mayor([1, 15, 10, 25, 100])
puts

# Ejercicio 4

arreglo = [[1, 4], [[1]], [8, []]]

def remover_nivel_profundidad(arreglo)
  nuevo_arreglo = []
  arreglo.each do |i| # recorrer el arreglo
    if i.is_a?(Array)
      i.each do |j| # recorrer el subarreglo
        nuevo_arreglo << j # << se agrega elemento j al final del nuevo arreglo
      end
    else
      nuevo_arreglo << i # << se agrega elemento i al final del nuevo arreglo
    end
  end
  nuevo_arreglo
end

puts 'Ejercicio 4. Eliminar nivel de profundidad de un arreglo'

# Método para imprimir arreglo con los corchetes y comas
def imprimir_arreglo(arreglo)
  arreglo.each do |i|
    if i.is_a?(Array)
      print '['
      imprimir_arreglo(i)
      print ']'
    else
      print i
    end
    print ', ' unless i == arreglo.last
  end
end

imprimir_arreglo(remover_nivel_profundidad(arreglo))