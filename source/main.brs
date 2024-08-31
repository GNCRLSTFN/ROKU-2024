sub main()
    print "Bienvenido a RokuAcademy"

    prueba = FibonacciSeries(10)
    print prueba
    prueba2 = factorial(4)
    print prueba2

    prueba3 = Arraylist([1, 2, 3, 9, 54])
    print prueba3

mostrarPantallaInicial()

end sub


sub mostrarPantallaInicial()

    pantalla = CreateObject("roSGScreen")
    puerto = CreateObject("roMessagePort")
    pantalla.setMessagePort(puerto)
    escena = pantalla.createScene("mainScene")

    pantalla.show()
    while(true)
        evento = wait(0, puerto)
        tipoEvento = type(evento)
        print evento
        if tipoEvento = "roSGScreenEvent"
            if evento.isSceneClosed() then return
        end if
    end while

end sub


function FibonacciSeries(n as integer) as object
    fibonacciArray = []

    a = 0
    b = 1

    fibonacciArray.Push(a)
    if n > 1
        fibonacciArray.Push(b)
    end if

    for i = 2 to n-1
        c = a + b
        fibonacciArray.Push(c)
        a = b
        b = c
    end for

    return fibonacciArray
end function



function factorial (a as integer) as integer
    numeroFactorial = a - 1
    sumFactorial = 0
    while numeroFactorial > 0
        sumFactorial = a * numeroFactorial
        numeroFactorial =- 1
    end while
    print sumFactorial
end function



function Arraylist (a as object) as integer
    if a.Count() = 0
        print "La lista ingresada está vacía."
    end if
    numeroMayor = a[0]
    for each numero in a
        if numero > numeroMayor
            numeroMayor = numero
        end if
    end for
    return numeroMayor

end function

