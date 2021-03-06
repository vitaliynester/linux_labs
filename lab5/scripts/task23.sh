# Задание: В качестве позиционного параметра задается файл, анализируется его размер. Если размер файла больше нуля, содержимое файла сортируется по первому столбцу по возрастанию, отсортированная информация помещается в другой файл, содержимое которого затем отображается на экране.
if [ $# -gt 1 ] # Проверяем, что переданы 2 аргумента
then    # Если переданы 2 аргумента
    srcFile=$1  # Считываем название первого файла
    dstFile=$2  # Считываем название второго файла
    if [ -s "$srcFile" ]    # Проверяем, что файл существует и не пуст
    then    # Если существует и не пуст
        sort -k 1 $srcFile > $dstFile   # Сортируем по первому столбцу файл srcFile и перенаправляем в файл dstFile
        cat $dstFile    # Выводим отсортированный файл
    else    # Если файл не существует или пуст
        printf "Файл %s не существует или пуст\n" $srcFile
    fi
else    # Если указаны не все файлы
    echo "Ошибка! Файлы не указаны!"
fi