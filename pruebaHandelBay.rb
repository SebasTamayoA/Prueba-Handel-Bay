
# Ejercicio 1
def multiplicar(numero1, numero2)
  resultado = 0
  numero2.times do
    resultado += numero1
  end
  resultado
end

puts multiplicar(3,5)