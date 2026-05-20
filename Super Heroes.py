# 1. Creamos el bucle eterno para mantener el juego abierto
salvadores=[]
while True:
    heroe_elegido = input("\nQuien es tu Heroe Favorito: ")
    poder_elegido = input("¿Cuál es su superpoder?: ")
    fuerza_total = 100

    ficha_heroe = {
     "nombre": heroe_elegido,
        "poder": poder_elegido,
        "fuerza": fuerza_total
}

    while fuerza_total < 150:
        print(f"\n{heroe_elegido} actualmente tiene {fuerza_total} de fuerza.")
        puntos = int(input("¿Cuántos puntos entrenará ahora?: "))
        fuerza_total = fuerza_total + puntos
        
    print(f"\n¡Felicidades! {heroe_elegido} alcanzó {fuerza_total} de fuerza y salvó el mundo!")

    salvadores.append(ficha_heroe)
    # --- AQUÍ VIENE EL TRUCO PARA DEJARLO ABIERTO O CERRARLO ---
    jugar_de_nuevo = input("\n¿Quieres jugar con otro héroe? (si/no): ")
    
    if jugar_de_nuevo == "no":
        print("¡Gracias por jugar! Adiós.")
        print(f"Los heroes que salvaron el mundo hoy fueron:{salvadores}" )
        break  # <--- Esto rompe el bucle eterno y cierra el programa de forma limpia
