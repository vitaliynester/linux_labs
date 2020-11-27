# Задание: Программа запрашивает значения двух переменных, вычисляет 
# - сумму,
# - разность,
# - произведение,
# - деление этих переменных. 
# Результат выводится на экран (использовать команды 
# a) EXPR;
# б) ВС)
printf "Введите значение первой переменной: "   #Выводим сообщение на экран для считывания первого числа
read first_value    #Считываем первое число
printf "Введите значение второй переменной: "   #Выводим сообщение на экран для считывания второго числа
read second_value   #Считываем второе число

sum_expr=$(expr $first_value + $second_value)   #Рассчитываем сумму через EXPR
dif_expr=$(expr $first_value - $second_value)   #Рассчитываем разность через EXPR
mul_expr=$(expr $first_value \* $second_value)  #Рассчитываем произведение через EXPR
div_expr=$(expr $first_value / $second_value)   #Рассчитываем деление через EXPR

sum_bc=$(echo $first_value + $second_value | bc)    #Рассчитываем сумму через BC
dif_bc=$(echo $first_value - $second_value | bc)    #Рассчитываем разность через BC
mul_bc=$(echo $first_value \* $second_value | bc)   #Рассчитываем произведение через BC
div_bc=$(echo $first_value / $second_value | bc)    #Рассчитываем деление через BC

printf "\nСумма вычисленная с помощью EXPR: %s + %s = %s\n" $first_value $second_value $sum_expr
printf "Разность вычисленная с помощью EXPR: %s - %s = %s\n" $first_value $second_value $dif_expr
printf "Произведение вычисленное с помощью EXPR: %s * %s = %s\n" $first_value $second_value $mul_expr
printf "Деление вычисленное с помощью EXPR: %s / %s = %s\n\n" $first_value $second_value $div_expr

printf "Сумма вычисленная с помощью bc: %s + %s = %s\n" $first_value $second_value $sum_bc
printf "Разность вычисленная с помощью bc: %s - %s = %s\n" $first_value $second_value $dif_bc
printf "Произведение вычисленное с помощью bc: %s * %s = %s\n" $first_value $second_value $mul_bc
printf "Деление вычисленное с помощью bc: %s / %s = %s\n" $first_value $second_value $div_bc
