class WordReader
  def read_from_args
    ARGV[0]
  end

  def read_from_file(file_name)
    f = File.new(file_name, 'r:UTF-8')
    lines = f.readlines
    f.close
    lines.sample.chomp
  rescue SystemCallError
    abort 'Файл со словами не найден'
  end
end
