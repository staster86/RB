#Глухая бабуля

voice = ""

while voice != 'ПОКА ПОКА ПОКА'

  puts "Скажите что-нибудь бабуле, чтобы она Вас услышала!"
  voice = gets.chomp
  year = rand(1930..1950)

  if voice != voice.upcase
    puts "АСЬ ?! ВНУЧЁК ГОВОРИ ПОГРОМЧЕ!"
  elsif voice == voice.upcase && voice != 'ПОКА ПОКА ПОКА'
    puts "НЕТ, НИ РАЗУ С #{year} ГОДА!"
  end
 
end
