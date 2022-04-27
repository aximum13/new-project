current_path = File.dirname(__FILE__)

answers_path = current_path + "/data/answers.txt"
questions_path = current_path + "/data/questions.txt"

if File.exist?(questions_path)
  question_file = File.new(questions_path, "r:UTF-8")
  questions = question_file.readlines
  question_file.close
else
  abort "Вопросы не найдены"
end

if File.exist?(answers_path)
  answer_file = File.new(answers_path, "r:UTF-8")
  answers = answer_file.readlines
  answer_file.close
else
  abort "Ответы не найдены"
end

right = 0

puts "Мини-викторина. Ответьте на вопросы."
 
questions.each_with_index do |question, index|
  puts question
  user_answer = gets.chomp.strip
 
  if user_answer == answers[index].strip
    puts "Верно"
    right += 1
  else
    puts "Неправильно. Правильный ответ: #{answers[index]}"
  end
  puts  
end

abort "У вас #{right} правильных ответов из 3"

 
