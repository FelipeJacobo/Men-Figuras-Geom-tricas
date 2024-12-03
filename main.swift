var continuar = true

while continuar {
    print("""
    --- Menú de Áreas de Figuras Geométricas ---
    1. Área del cuadrado
    2. Área del rectángulo
    3. Área del triángulo
    4. Área del círculo
    5. Salir
    Seleccione una opción:
    """)

    if let opcion = readLine(), let seleccion = Int(opcion) {
        switch seleccion {
        case 1:
            print("Ingrese el lado del cuadrado:")
            if let entrada = readLine(), let lado = Double(entrada) {
                print("El área del cuadrado es: \(lado * lado)")
            } else {
                print("Entrada no válida.")
            }
        case 2:
            print("Ingrese la base del rectángulo:")
            if let entradaBase = readLine(), let base = Double(entradaBase) {
                print("Ingrese la altura del rectángulo:")
                if let entradaAltura = readLine(), let altura = Double(entradaAltura) {
                    print("El área del rectángulo es: \(base * altura)")
                } else {
                    print("Entrada no válida.")
                }
            } else {
                print("Entrada no válida.")
            }
        case 3:
            print("Ingrese la base del triángulo:")
            if let entradaBase = readLine(), let base = Double(entradaBase) {
                print("Ingrese la altura del triángulo:")
                if let entradaAltura = readLine(), let altura = Double(entradaAltura) {
                    print("El área del triángulo es: \((base * altura) / 2)")
                } else {
                    print("Entrada no válida.")
                }
            } else {
                print("Entrada no válida.")
            }
        case 4:
            print("Ingrese el radio del círculo:")
            if let entrada = readLine(), let radio = Double(entrada) {
                let area = 3.14159 * radio * radio
                print("El área del círculo es: \(area)")
            } else {
                print("Entrada no válida.")
            }
        case 5:
            continuar = false
            print("Gracias por usar el programa.")
        default:
            print("Opción no válida.")
        }
    } else {
        print("Entrada no válida. Por favor, ingrese un número.")
    }
}
