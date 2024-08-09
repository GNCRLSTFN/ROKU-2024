sub main()
    print "Bienvenido a RokuAcademy"

    prueba = fibonacci(10)
    print prueba

end sub


function fibonacci(a as integer) as integer
    numeroActual = 1
    numeroAnterior = 0
    contador = 0
    suma = 0
    while contador <= a:
        suma = numeroActual + numeroAnterior
        print suma
        numeroAnterior = numeroActual
        numeroActual = suma
        contador ++
    end while
end function

