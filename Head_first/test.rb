class Test

  attr_reader :hello

  def talk(content)
    @hello = content
    puts "#{@hello}"
  end

  attr_writer :say

  def say
    @say
  end


end
