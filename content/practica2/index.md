+++
date = '2025-09-26T10:23:55-07:00'
draft = false
title = 'Practica 2'
+++

# Universidad Autónoma de Baja California  
## Facultad de Ingeniería, Arquitectura y Diseño (FIAD)  



### Elementos Fundamentales de Lenguajes en el Sistema de Biblioteca
El proyecto de biblioteca se organiza en tres módulos clave que, en conjunto, demuestran la aplicación práctica de los conceptos de los lenguajes de programación.

`biblioteca.py` (Lógica Central)
Este es el módulo principal que contiene la lógica de negocio. Define las clases esenciales (Book, DigitalBook, Member, Library) que representan los objetos del sistema. Implementa todas las operaciones básicas como añadir y registrar, además de gestionar las transacciones de préstamo y devolución. La función main() sirve para ejecutar el programa en una interfaz de consola.

`biblioteca_web.py` (Interfaz Web con Flask)
Este archivo proporciona la versión en línea del sistema. Utiliza el framework Flask para crear una API REST mediante la definición de varias rutas (p. ej., /books, /members, /issue_book). Emplea render_template() para enlazar la lógica de Python con el frontend (HTML, CSS, JavaScript) a través del archivo index.html.

`memory_management.py` (Simulación de Memoria)
Este módulo introduce la clase MemoryManagement para simular la administración de memoria del heap. Sus métodos (increment_heap_allocations(), increment_heap_deallocations()) se integran con los constructores y destructores de las clases en biblioteca.py para llevar un registro del consumo y liberación de memoria al crear o eliminar objetos.

Conceptos de Lenguaje Aplicados
El sistema demuestra la interacción de varios elementos esenciales:

# 1. Nombres e Identificadores
Los nombres se utilizan para etiquetar de forma única todas las entidades del código:

- Clases: Book, Member, Library.

- Variables de Instancia: title, author, quantity, book_id.

- Subprogramas (Métodos): add_book(), find_book_by_id().

# 2. Bloques de Alcance y Marcos de Activación
La visibilidad de las variables y la ejecución de funciones se controlan con el alcance y los marcos de activación.

Alcance (Scope): Determina la accesibilidad de una variable, como el alcance de objeto (self.books) o el alcance local (variables dentro de un método).

Marcos de Activación: Cada vez que se llama a un subprograma (ejemplo: library.add_book(book)), se crea un marco de activación independiente en la pila para almacenar sus variables locales, dirección de retorno y resultados temporales.

# 3. Tipos de Datos
El proyecto maneja una variedad de tipos para representar la información:

- Tipos Primitivos: int, str, bool.

- Tipos Compuestos: list, dict.

- Tipos Personalizados (Clases): Book, Member, Library.

Ejemplo: La función json.dump convierte objetos personalizados a estructuras JSON estándar.

# 4. Subprogramas
Las funciones y métodos son los bloques modulares que estructuran el código:

- Funciones de Lógica: Métodos de clase en biblioteca.py como issue_book() o display_books().

- Funciones de Interfaz: Las rutas definidas en biblioteca_web.py (decoradas con @app.route), como get_books().

- Funciones de Utilidad: display_memory_usage() en el módulo de memoria.

# 5. Comandos (Sentencias) y Expresiones
La lógica se construye a partir de unidades de acción y cálculo:

Expresiones: Combinaciones que producen un valor, como la actualización de inventario (book.quantity -= 1) o la conversión de tipos (int(data['id'])).

Comandos: Sentencias que ejecutan acciones o controlan el flujo, incluyendo la asignación, llamadas a métodos (append), y estructuras de control.

# 6. Control de Secuencia
El flujo de ejecución del programa se maneja mediante los patrones básicos:

- Selección (Condicionales): El uso de if/else para la toma de decisiones, por ejemplo, al elegir si crear un DigitalBook o un Book estándar.

- Iteración (Bucles): Se utiliza for para procesar colecciones, como al listar todos los libros:


```Python
for book in self.books: 
    print(book.title)
Recursión: Aunque no es explícita, la arquitectura podría soportar búsquedas o conteos recursivos si fuera necesario.
```

# 7. Administración de Memoria (Simulación)
La clase MemoryManagement simula la gestión de memoria dinámica (heap), registrando activamente cómo los constructores (__init__) y destructores (__del__) de los objetos afectan la memoria con:

    
### a) Selección  
```python
if is_digital:
    book = DigitalBook(...)
else:
    book = Book(...)
```

### b) Iteración  
```python
for book in self.books:
    print(book.title)
```

```Python
- memory_management.increment_heap_allocations(1) # Simula consumo
- memory_management.increment_heap_deallocations(1) # Simula liberación
```
[Portafolio](https://github.com/AHHMED-J/Portafolio-Ahhmed)
