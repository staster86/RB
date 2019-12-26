class WorkList

  attr_accessor :content, :id

  def initialize(content: 'content',id: nil)
    self.content = content
    self.id = id
  end

end




