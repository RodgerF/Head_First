class Dog

  attr_reader :name, :age  # Определение методов чтения арибутов "name" и "age"

  def  name=(value) # Метод записи атрибута для "@name"
    if value == ""
      raise "Имя не может быть пустым!" # Проверка данных.
    end
    @name = value
  end

  def age=(value) # Метод записи атрибута для "@age"
    if value < 0
      raise "Возраст #{value} недопустим!" # Проверка данных.
    end
    @age = value
  end

  def move(destination) # Метод экземпляра
    puts "#{@name} бежит  #{destination}." # Использование переменной экземплаяра "@name"
  end

  def talk # Метод экземпляра
    puts "#{@name} говорит Гав!" # Использование переменной экземплаяра "@name"
  end

  def report_age # Метод экземпляра
    puts "#{@name}  #{@age} лет" # Использование переменной экземплаяра "@name" и "@age"
  end

end

dog = Dog.new
dog.name = "Дейзи"
dog.age = 3
dog.report_age
dog.talk
dog.move("Кровать")