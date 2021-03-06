# Задание: Программой запрашивается ввод числа, значение которого затем сравнивается с допустимым значением. В результате этого сравнения на экран выдаются соответствующие сообщения.
printf "Введите минимальное значение: "
read min_digit  # Вводим левое значение диапазона 
printf "Введите максимальное значение: "
read max_digit  # Вводим левое значение диапазона
printf "Введите значение от %d до %d: " $min_digit $max_digit   # Выводим интервал
read digit # Считываем число для диапазона
if test $digit -gt $max_digit; then # Провряем число на границы диапазона
printf "Ошибка! Введенное число больше максимального на %d\n" $(echo $digit - $max_digit | bc)
elif test $digit -lt $min_digit; then
printf "Ошибка! Введенное число меньше минимального на %d\n" $(echo $min_digit - $digit | bc)
else
printf "Молодец! Введено правильное значение!\n"
fi
