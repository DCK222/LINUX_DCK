# Actividad 6.1
Alejandro Garcia Dorronsoro
Curso 22/23
Sistemas Informaticos
U-TAD
```bash
#Ejercicio 1
#Recibir un número entero por teclado y decir si es positivo.

echo "1.Ingrese un número entero para saber si es positivo: " 
read num
 if [ $num -gt 0 ]; then
  echo "El número es positivo."
else
  echo "El número no es positivo"
fi

#Ejercicio 2
#Recibir un número entero por teclado y decir si es negativo.

echo "2.Ingrese un numero entero para saber si es negativo : "
read num
if [ $num -lt 0 ]; then
        echo "El numero no es negativo"
else
        echo "El numero es negativo"
fi

# Ejercicio 3
#Recibir un número entero por teclado y decir si es igual a cero.

read -p "Introduce un número para saber si es igual a 0: " num
if [ $num -eq 0 ]; then
  echo "El número igual 0."
else
  echo "El número distinto de 0."
fi

#Ejercicio 4
#Recibir un numero entero por teclado y decir si es positivo, negativo o cero.

echo "Ingrese numero para saber si es positivo, negativo o cero"
read num
if [ $num -eq 0 ]; then
        echo "Numero es 0."
elif [ $num -lt 0 ]; then
        echo "Negativo."
else
        echo "Positivo."
fi

#Ejercicio 5
#Ejercicio 6
#Recibir dos números por parámetros y lo suma. En caso de que el número de parámetros sea incorrecto mostrará un mensaje de error

echo "Ingrese el numero 1 : "
read num1
echo "Ingrese el numero 2 :"
read num2
 echo "La suma de los numero es : "
 suma=$(($num1 + $num2))
 echo $suma
 
#Ejercicio 7
#Recibir 3 parámetros. En el caso de que reciba un número diferente mostrará un mensaje de error. Los dos primeros serán dos números y el tercero será uno de los siguientes símbolos “+” “-“ “x” “/”, dependiendo del tercer parámetro introducido realizara la correspondiente operación. El en caso de que se introduzca un símbolo diferente, presentará un mensaje indicando cuales son las opciones correctas

if [ $# -ne 3 ]; then
  echo "Error: se deben introducir 3 parámetros"
  exit 1
fi
num1=${1}
num2=${2}
num3=${3}
 case $num3 in
         case1)
                 $suma=(($num1 + $num2))
                 echo $suma
                 ;;
         case2)
                 $resta=(($num1 - $num2))
                 echo $resta
                 ;;
        case3)
                $division=(($num1 / $num2))
                echo $division
                ;;
        case4)
                $multiplicaion=(($num1 * $num2))
                echo $multiplicacion
                ;;
# Ejercicio 8
#Recibir la ruta de un fichero e indicar si existe

Fichero.sh=$1
if [test -e "Fichero.sh"]; then
  echo "El fichero existe"
else
  echo "El fichero no existe"
fi

#Ejercicio 9 
#Recibir la ruta de un fichero e indicar si es un directorio o un fichero.

echo "Introduce el nombre"
read $1
if [ -d "$1" ]; then
  echo "Directorio"
elif [ -f "$1" ]; then
  echo "Fichero"
else
  echo "ERROR : No existe"
fi
#Ejercicio 10
#Recibir la ruta de un fichero e indicar los permisos que tiene (escritura, lectura, ejecución)


#Ejercicio 11
#Imprimir por pantalla 50 veces la palabra hola.

for i in {1..50}; do
  echo "Hola :)"
done

#Ejercicio 12
#Leer una palabra por teclado y mostrarla por consola. Debe realizar esta operación 10 veces.

read -p "Escribe una palabra: " palabra
for i in {1..10}; do
  echo "$palabra"
done

#Ejercicio 13
#Recibir un número por parámetro. El programa imprimirá la palabra “hola” el número de veces indicado por parámetro.

ead -p "Escribe las veces que quieres que se repita la palabra HOLA " num
for (( i=1; i<=num; i++ )) do
        echo "HOLA :)"
done

#Ejericicio 14
#Se debe pasar un número n por parámetro. El programa imprimirá los números del 0 al n por pantalla.

read -p "Introduce el numero para hacer el recorrido : " num
for ((i=0; i<=num; i++))
do
    echo $i
done

# Ejercicio 15
#Recibir un número n por parámetro. El programa tendrá que sumar todos los números entre 1 y n. Posteriormente mostrará el resultado de la suma por pantalla

read -p "Introduce el numero a sumar: " num
for ((i=1; i<=num; i++))
do
    sum=$((sum + i))
    echo "$sum"
done

# Ejercicio 16
#Recibir dos números por parámetro. El programa deberá hacer que el primer parámetro tome el valor del segundo parámetro y el segundo parámetro tome el valor del primero. Por ejemplo si se introduce el 2 y el 9, en un principio $1 es 1 y $2 es 9. Tras la ejecución del programa $1 valdrá 9 y $2 1.

read -p "Introduce el valor 1" num1
read -p "Introduce el valor 2" num2

valor=$num1
num1=$num2
num2=$temp

num1=$(($1 + num1))
num2=$(($2 + num1))

echo "el numero1 vale :$num1"
echo "El numero2 vale : $num2"

#Ejercicio 17
#Programa que lea palabras hasta que se escriba “:q”

while true; do
  read -p "Introduce palabras " palabra
  if [ $palabra == "q" ]; then
    break
  fi
done

#Ejercicio 18
#Programa que lea palabras y las guarde en un fichero, hasta que se escriba “:q”

while true; do
  read -p "Introduce palabras: " palabra
  if [ $palabra == ":q" ]; then
    break
  fi
  echo "$palabra" >> palabras.txt
done

#Ejercicio 19
#Programa que lea palabras y las guarde en un fichero de forma ordenada, hasta que se escriba “:q”

while true ; do
read -p "Introduce palabras " palabra
  if [ $palabra == ":q" ]; then
    break
  fi
  echo "$palabra" >> palabras.txt
  short palabras.txt -o palabras.txt
done

#Ejercicio 20 
#Realiza un programa que solicite un número y compruebe si se encuentre en un archivo llamado números.txt

read -p "Introduce un numero a buscar dentro del fichero numeros.txt " numero
grep -q $numero numeros.txt
if [ $? -eq 0 ]; then
        echo "El numero se encuentra en la lista :)"
else
  echo "El numero no se encuentra en la lista :("
fi
