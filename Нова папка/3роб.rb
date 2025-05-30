tasks = []

def show_menu
  puts "\n--- To-Do List ---"
  puts "1. Додати нову задачу"
  puts "2. Показати всі задачі"
  puts "3. Видалити задачу"
  puts "4. Вийти"
  print "Оберіть опцію (1-4): "
end

loop do
  show_menu
  choice = gets.chomp

  case choice
  when "1"
    print "Введіть нову задачу: "
    task = gets.chomp
    tasks << task
    puts "Задачу додано!"

  when "2"
    puts "\n--- Список задач ---"
    if tasks.empty?
      puts "Список порожній."
    else
      tasks.each_with_index do |task, index|
        puts "#{index + 1}. #{task}"
      end
    end

  when "3"
    if tasks.empty?
      puts "Немає задач для видалення."
    else
      puts "\n--- Список задач ---"
      tasks.each_with_index do |task, index|
        puts "#{index + 1}. #{task}"
      end
      print "Введіть номер задачі для видалення: "
      num = gets.chomp.to_i
      if num.between?(1, tasks.length)
        removed = tasks.delete_at(num - 1)
        puts "Задачу '#{removed}' видалено."
      else
        puts "Невірний номер задачі."
      end
    end

  when "4"
    puts "До побачення!"
    break

  else
    puts "Невірний вибір. Спробуйте ще раз."
  end
end
