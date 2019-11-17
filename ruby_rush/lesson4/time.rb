time = Time.new
week_day = time.wday

if week_day == 0 || week_day == 6
  puts "Сегодня выходной)"
else
  puts "Пора на работу("
end
