
class ResultPrinter
  def initialize
    @status_image = []

    current_path = File.dirname(__FILE__)
    counter = 0

    while counter <= 7
      file_name = current_path + "/data/img/#{counter}.txt"
      begin
        f = File.new(file_name, "r:UTF-8")
        @status_image << f.read
        f.close
      rescue SystemCallError
        @status_image << "\n [ изображение не найдено ] \n"
      end
      counter += 1
    end
  end

  def print_status(game)
    cls
    puts "\nСлово: #{get_word_for_print(game.letters, game.good_letters)}"
    puts "Ошибки: #{game.bad_letters.join(", ")}"

    print_viselitsa(game.errors)

    if game.status == -1
      puts "Вы проиграли =( Загаданное слово: #{game.letters.join}"
    elsif game.status == 1
      puts "Поздравляем, вы выиграли!"
    else
      puts "У вас осталось ошибок: " + (7 - game.errors).to_s
    end
  end

  def get_word_for_print(letters, good_letters)
    result = ""
    for item in letters
      if good_letters.include?(item)
        result += item + " "
      else
        result += "__ "
      end
    end
    return result
  end

  def cls
    system("clear") || system("cls")
  end

  def print_viselitsa(errors)
    puts @status_image[errors]
  end
end
