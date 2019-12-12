class CelestiaBody
  attr_accessor :name, :type
end

# Ключу хэша присваиваем объект типа CelestiaBody
# Ключ передаётся так bodies['Something']
# bodies['Something'].name = 'Something'
# ['Something'] это ключ = key
bodies = Hash.new do |hash, key| # = {}, 'Something'
  body = CelestiaBody.new # Передаём ссылку на объект
  body.type = 'planet' # Устанавливаем значение по умолчанию для параметра :type
  hash[key] = body # {'Mars' => #<CelestiaBody:0x000000000553d4c8 @type="planet">}
  body
end

bodies['Mars'] # {'Mars' => #<CelestiaBody:0x000000000553d4c8 @type="planet">}
bodies['Mars'].name = 'Mars' #{"Mars"=>#<CelestiaBody:0x000000000553d4c8 @type="planet", @name="Mars">}