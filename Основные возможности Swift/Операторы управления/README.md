**Операторы управления**

Задание 1

Напишите код, который будет выводить на консоль персонализированное приветствие пользователю в зависимости от его имени.
Пусть в константе name хранится имя пользователя. Используя операторы управления (условия if и ветвления switch) реализуйте различный вывод на консоль в зависимости от значения в константе name
Покажите варианты решения с использованием switch и if. Определите вывод на консоль для трех произвольных имен, а так же в блоке «во всех остальных случаях» (default и else).

Задание 2

У вас есть логическая переменная open, которая может принять одно из двух доступных значений (true или false) var open = true или var open = false

Вам необходимо создать новую переменную типа String и инициализировать ей строковое значение:
— если open равно true, то инициализировать "открыто"
— если open равно false, то инициализировать "закрыто"

Задание 3

Вам даны три переменные var1, var2 и var3 целочисленного типа Int
Составьте программу, в конце которой в константе result будет находиться наибольшее из трех целочисленных значений.

Задание 4

Вы имеете три переменные-кортежа, содержащие координаты точек
Напишите программу, которая определяет, может ли существовать треугольник с заданными координатами вершин

Задание 5

Переменная lang может принимать 2 значения: "ru", "en". Если она имеет значение "ru", то в переменную days запишите массив дней недели на русском языке, а если имеет значение "en" – то на английском
Покажите решение задачи через конструкцию switch-case

Задание 6

Основано на предыдущем задании
У вас появилась дополнительная переменная chars, которая может принять два значения "up" и "down"
Доработайте конструкцию switch-case таким образом, чтобы в зависимости от значения chars массив заполнялся большими или маленькими символами

Задание 7

1) Определите псевдоним Operation типу кортежа, содержащему три элемента со следующими именами: operandOne, operandTwo, operation.
Первые два — это числа с плавающей точкой. Они будут содержать операнды для выполнения операции.
Третий элемент — строковое значение типа Character. Оно будет содержать указатель на проводимую операцию. Всего может быть четыре вида операций: +, -, *, /.
2) Создайте константу типа Operation и инициализируйте ей произвольное значение, к примеру (3.1, 33, "+")
3) Используя конструкцию switch-case вычислите значение операции, указанной в элементе для операндов operandOne и operandTwo. Оператор switch должен корректно отрабатывать любую из четырех операций.
4) Проверьте правильность работы конструкции по для следующих операций:

(3.1, 33, "+")
(24.9, 22.32, "*")
(11.3, 5, "/")
(5, 2.5, "-")
