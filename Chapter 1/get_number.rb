#Get My Number Game
# Written by: my

puts "Добро пожаловать в 'Угадай число!'"

# Получение имени игрока и вывод приветствия.
print "Как ваше имя? "
input = gets
name = input.chomp
puts "Привет, #{name}!"

#Сохранение случайного числа
puts "У тебя есть случайное число между 1 и 100."
puts "Сможете угадать его?"
target = rand(100) + 1

# Отслеживание колчества попыток.
num_guesses = 0

# Признак продолжения игры.
guessed_it = false

until num_guesses == 10 || guessed_it

  puts "У тебя осталось #{10 - num_guesses} попыток"
  print "Сделайте догадку: "
  guess = gets.to_i

  num_guesses += 1

  # Сравнение введеного числа с загаданным
  # и вывод соответствующего сообщения.
  if guess < target
    puts "Ой, Ваше число МЕНЬШЕ."
  elsif guess > target
    puts "Ой, Ваше число БОЛЬШЕ>."
  elsif guess == target
    puts "Хорошая работа, #{name}!"
    puts "Ты угадал мое число за #{num_guesses} попыток"
    guessed_it = true
  end

end

# Если попыток не осталось
unless guessed_it
  puts "Извините. Вы не угадали моё число. (Это число #{target}.)"
end