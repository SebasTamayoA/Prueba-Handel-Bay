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
