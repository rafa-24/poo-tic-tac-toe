# 🎮 Triki (Tic Tac Toe) en Ruby

Este proyecto es una implementación del clásico juego **Tic Tac Toe**, conocido en Colombia como **Triki**, desarrollado completamente en **Ruby**.

<img width="808" height="989" alt="image" src="https://github.com/user-attachments/assets/54e843ff-1c4b-4e14-a2e7-acbf11a8a833" />
<img width="442" height="974" alt="image" src="https://github.com/user-attachments/assets/5d84effa-303b-42f0-b376-05e069baebcf" />



---

## 🧠 Descripción

El juego está pensado para **dos jugadores humanos** (no contra la máquina o IA).  
Cada jugador elige su nombre y su avatar (símbolo) antes de comenzar la partida.  
El juego termina automáticamente cuando existe un ganador o cuando el tablero está completamente lleno.

Fue desarrollado con el propósito de **aprender y practicar Programación Orientada a Objetos (POO)** en Ruby, aplicando conceptos clave como:

- Uso de **clases y objetos**
- **Atributos accesores y lectores**
- Principio **DRY (Don’t Repeat Yourself)**
- Creación de métodos reutilizables
- Uso de métodos como `all?` para validar condiciones de victoria

---

## 🧩 Reglas del Juego

1. Dos jugadores se turnan para marcar una posición en el tablero.
2. Gana quien logre **tres símbolos iguales seguidos** en:
   - una **fila**
   - una **columna**
   - o una **diagonal**
3. Si todas las posiciones están ocupadas y nadie cumple las condiciones, el juego termina en **empate**.

---

## 🧱 Estructura del Proyecto

El código está organizado en tres clases principales:

- **`Player`** → Representa a cada jugador, su nombre y su avatar.
- **`Board`** → Crea y gestiona el tablero del juego.
- **`Game`** → Controla el flujo principal, turnos, y lógica de finalización.

---

## 🚀 Ejecución del Proyecto

Para ejecutar el juego en tu máquina:

1. **Clona este repositorio** o haz un **fork**:
   ```bash
   git clone <URL_DEL_REPOSITORIO>
   
2. **Accede al directorio del proyecto** :
   ```bash
   cd tic-tac-toe
   
3. **Ejecuta el archivo principal** :
   ```bash
   ruby game.rb
   
4. **¡Disfruta el juego y reta a un amigo! 😄**



   
