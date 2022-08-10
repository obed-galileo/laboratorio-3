# laboratorio-3
================

## Problema 1

Construir la funcion `poblacion(set, size, number)`,

### Entradas

-   **set**: Un arreglo de n elementos.
-   **size**: tamaño del arreglo a devolver
-   **number**: Cuantos arreglos a devolver

### Salida

Una lista de **number** arreglos de tamaño **size**

### Ejemplo 1

``` r
poblacion(c(0,1), 10, 10)
```

    ## [[1]]
    ##  [1] 1 0 1 0 0 0 1 0 1 1
    ## 
    ## [[2]]
    ##  [1] 1 1 1 1 0 0 0 1 0 1
    ## 
    ## [[3]]
    ##  [1] 1 0 1 0 0 1 1 1 1 1
    ## 
    ## [[4]]
    ##  [1] 0 1 0 0 0 0 1 0 0 1
    ## 
    ## [[5]]
    ##  [1] 0 1 1 1 0 1 0 1 0 1
    ## 
    ## [[6]]
    ##  [1] 0 0 0 0 1 0 1 0 0 1
    ## 
    ## [[7]]
    ##  [1] 0 0 1 1 0 0 1 0 0 0
    ## 
    ## [[8]]
    ##  [1] 1 0 0 0 1 0 0 0 0 0
    ## 
    ## [[9]]
    ##  [1] 0 1 1 0 0 0 0 0 1 1
    ## 
    ## [[10]]
    ##  [1] 0 0 0 0 0 0 0 1 0 1

``` r
x<-poblacion(c(0,1), 10, 10)
class(x)
```

    ## [1] "list"

### Ejemplo 2

``` r
conjunto <- c("A","B","C","D")
poblacion(conjunto, 15, 5)
```

    ## [[1]]
    ##  [1] "B" "D" "A" "C" "C" "C" "C" "B" "C" "C" "C" "A" "A" "D" "D"
    ## 
    ## [[2]]
    ##  [1] "B" "C" "A" "C" "C" "C" "B" "D" "C" "C" "A" "B" "D" "A" "C"
    ## 
    ## [[3]]
    ##  [1] "D" "D" "A" "C" "D" "A" "C" "C" "B" "A" "C" "C" "B" "D" "A"
    ## 
    ## [[4]]
    ##  [1] "B" "C" "D" "A" "C" "D" "A" "C" "D" "A" "C" "A" "D" "B" "A"
    ## 
    ## [[5]]
    ##  [1] "A" "A" "A" "C" "D" "A" "A" "A" "C" "D" "B" "A" "A" "C" "A"

### Ejemplo 3

``` r
conjunto <- c("Cara","Escudo")
poblacion(conjunto, 5, 5)
```

    ## [[1]]
    ## [1] "Escudo" "Escudo" "Escudo" "Escudo" "Cara"  
    ## 
    ## [[2]]
    ## [1] "Escudo" "Escudo" "Escudo" "Escudo" "Escudo"
    ## 
    ## [[3]]
    ## [1] "Cara"   "Escudo" "Cara"   "Escudo" "Cara"  
    ## 
    ## [[4]]
    ## [1] "Cara"   "Cara"   "Cara"   "Cara"   "Escudo"
    ## 
    ## [[5]]
    ## [1] "Escudo" "Escudo" "Cara"   "Escudo" "Escudo"

## Problema 2

Construir una funcion que tome dos arreglos y contruya uno nuevo con las
siguientes caracteristicas,

1.  La primera mitad del vector de salida es igual a la primera mitad
    del primer vector de entrada.

2.  La segunda mitad del vector de salida es igual a la segunda mitad
    del segundo vector de entrada.

La funcion debe tener este nombre `mix1(v1,v2)`

### Entradas

-   **v1** : Primer vector
-   **v2** : Segundo vector

Los dos vectores tiene que ser de la misma longitud

### Salida

Un vector de la misma logitud que **v1** y **v2**

### Ejemplo 1

``` r
x <- 1:10
y <- letters[1:10]

print(x)
```

    ##  [1]  1  2  3  4  5  6  7  8  9 10

``` r
print(y)
```

    ##  [1] "a" "b" "c" "d" "e" "f" "g" "h" "i" "j"

``` r
mix1(x,y)
```

    ##  [1] "1" "2" "3" "4" "5" "f" "g" "h" "i" "j"

### Ejemplo 2

``` r
x <- 1:5
y <- letters[1:5]

print(x)
```

    ## [1] 1 2 3 4 5

``` r
print(y)
```

    ## [1] "a" "b" "c" "d" "e"

``` r
mix1(x,y)
```

    ## [1] "1" "2" "c" "d" "e"

Note que en este ejemplo el numero es impar y la funcion `mix1` devolvio
2 elementos de **v1** y 3 elementos de **v2**

## Problema 3

Crear una función que reciba dos vectores del mismo tamaño. La función
tiene que devolver en cuantas posiciones los vectores tienen los mismos
valores.

### Entradas

-   **v1** : Primer vector
-   **v2** : Segundo vector

Los dos vectores tiene que ser de la misma longitud

### Salida

Un vector de la misma logitud que **v1** y **v2**

### Ejemplo 1

En este ejemplo los vectores coinciden en las posiciones 1,3,6 por lo
tanto la función devolverá un 3.

``` r
Vec1 <- c(1,"a","c",3,4,5)
Vec2 <- c(1,2,"c","a",1,5)

vequal(Vec1,Vec2)
```

    ## [1] 3

### Ejemplo 2

``` r
Vec1 <- c("m","a","e","s","t","r","i","a")
Vec2 <-  c("m","a","e","s","t","r","o","s")

vequal(Vec1,Vec2)
```

    ## [1] 6
