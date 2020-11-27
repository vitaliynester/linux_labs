# Задание: Используя позиционный параметр, отобразить содержимое текстового файла, указанного в качестве аргумента командной строки. После паузы экран очищается.
cmd_cnt=$#
if test $cmd_cnt -ne 1    #Если количество аргументов равно 1 (указано только название исполняемого файла т.е. не указан файл для чтения)
then    #Тогда выводим ошибку
echo "Ошибка: Укажите аргумент!"
exit 1  #Завершаем программу с ошибкой
else cat $1 #Иначе считываем первый аргумент (название необходимого для открытия файла) и выводим его содержимое через cat
fi  #Заканчиваем проверка условия
read _  #Считываем значение из консоли
clear   #Как только введем любой символ (прекратим паузу) очищаем экран
