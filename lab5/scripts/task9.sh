# Задание: Программа запрашивает имя пользователя, затем здоровается с ним, используя значение введенной переменной.
printf "Введите имя пользователя: " #Выводим сообщение на консоль
read user_name  #Считываем введенное значение в переменную user_name
echo "Здравствуйте, $user_name!"    #Приветствуем пользователя