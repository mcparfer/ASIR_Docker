#!/bin/bash

if [[ $1 ]]; then
    if [[ $2 ]]; then

        SOURCE_PATH="/practicas/C/"
        TOTAL_BACKUP_PATH="/practicas/C/"
        DIF_BACKUP_PATH="/practicas/C/"

        #Fecha
        FECHA_Y_HORA=$(date +%d-%m-%y_%H-%M-%S)

        #Log
        LOG_PATH="/practicas/log_c.txt"
        ERROR_LOG_PATH="/practicas/error_log_c.txt"

        read -p "Introduzca el puerto de la máquina $1: " PUERTO_1
        read -p "Introduzca el puerto de la máquina $2: " PUERTO_2

        #Ejecución script
        echo "[$FECHA_Y_HORA] - Comenzando copia diferencial..." >> $LOG_PATH
        rsync -av -e "ssh -p $PUERTO_1" --compare-dest="$TOTAL_BACKUP_PATH" $MY_PATH $1:$DIF_BACKUP_PATH 1>> $LOG_PATH 2>> $ERROR_LOG_PATH
        rsync -av -e "ssh -p $PUERTO_2" --compare-dest="$TOTAL_BACKUP_PATH" $MY_PATH $2:$DIF_BACKUP_PATH 1>> $LOG_PATH 2>> $ERROR_LOG_PATH
        echo "Fin copia diferencial" >> $LOG_PATH
        echo >> $LOG_PATH

    else
        echo Introduzca la segunda IP.
    fi
else
    echo Introduzca las dos IP.
fi


