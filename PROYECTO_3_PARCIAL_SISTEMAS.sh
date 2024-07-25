!/bin/bash

function mostrar_menu {
    echo "Selecciona una opción entre el 0 y el 15:"
    read -p "Opción: " opcion
}

while true; do
    mostrar_menu

    case $opcion in
        0)
            echo "Ingresando al nivel 0:"
            cd /home/bandit0
            ls
            cat readme
	    echo "este es el codigo"
            ;;
        1)
            echo "Ingresando al nivel 1:"
            cd /home/bandit1
            ls 
            cat <-
            echo "este es el codigo"
            ;; 
        2)
            echo "Ingresando al nivel 2:"
            cd /home/bandit2
            ls
            cat "spaces in this filename"
            echo "este es el codigo"

            ;;
        3)
            echo "Ingresando al nivel 3:"
            cd /home/bandit3
	    cd inhere
	    ls 
            ls -las
            echo "el código esta en el archivo ...Hiding-From-You"
	    cat ...Hiding-From-You
            ;;
        4)
            echo "Ingresando al nivel 4:"
            cd /home/bandit4
	    cd inhere
	    ls 
  	    file ./* 
     	    echo "el código esta en el archivo que tiene la extensión de texto -file07"
	    cat ./-file07
	    
	    

            ;;
        5)
            echo "Ingresando al nivel 5:"
	    cd /home/bandit5            
	    cd inhere
	    echo "el codigo o buscamos con las pistas qeu nos dieron"
       	    find . -size 1033c -type f
	    cat ./maybehere07/.file2
            ;;


        6)
            echo "Ingresando al nivel 6:"
	    cd /home/bandit6          
	    find / -user bandit7 -group bandit6 -size 33c 2>/dev/null
	    echo "este comando busca nuestro archivo con las especificaciones que le dimos"
            cat /var/lib/dpkg/info/bandit7.password
            ;;

        7)
            echo "Ingresando al nivel 7:"
            cd /home/bandit7
            ls
 	    grep -i "millionth" data.txt
	    echo "este comando busca la palabra seleccionada en el archivo data"
	    
            ;;
        8)
            echo "Ingresando al nivel 8:"
            cd /home/bandit8
	    ls
	    sort data.txt | uniq -u
	    echo "esta linea va a buscar donde solo haya una considencia de texto"
            ;;

        9)
            echo "Ingresando al nivel 9:"
            cd /home/bandit9
            ls
            strings data.txt | grep -n '='
            echo "este comando va a buscar"
            ;;

        10)
            echo "Ingresando al nivel 10:"
            cd /home/bandit10
            ls
            cat data.txt
	    cat data.txt | base64 --decode
	    echo "esta linea codifica el archivo que esta en base 64 a legibilidad humana"
            ;;


        11)
            echo "Ingresando al nivel 11:"
            cd /home/bandit11
            ls
            cat data.txt | tr '[A-Za-z]' '[N-ZA-Mn-za-m]'
     	    echo "este comando va a rotar de reversa las letras 13  posisciones"
            ;;

       
        *)
            echo "Opción inválida. Por favor selecciona una opción válida del 0 al 15."
            ;;
    esac

    echo ""
done