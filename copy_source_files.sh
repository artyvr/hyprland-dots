#!/usr/bin/env bash

printf "Копирование конфигурационных файлов из home\n"

config_dirs=(btop dunst fish gtk-3.0 gtk-4.0 hypr kitty mc nwg-look waybar wlogout wofi xsettingsd)
config_files=(.gtkrc-2.0)

for i in ${config_dirs[*]}
do
    printf "Удаляем старую папку %s\n" $i
    rm -r -f config/$i
    printf "Копируем новую папку %s\n" $i
    cp -r ~/.config/$i config/$i
    printf "\n"
done
printf "~~~~~~~~~~~\n"

for i in ${config_files[*]}
do
    printf "Удаляем старый файл %s\n" $i
    rm -r -f $i
    printf "Копируем новый файл %s\n" $i
    cp -r ~/$i $i
    printf "\n"
done
printf "~~~~~~~~~~~\n"
