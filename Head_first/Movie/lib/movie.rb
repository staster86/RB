class Movie

  attr_accessor :title, :director, :year, :id

  def initialize(title: 'title', director: 'director', year: 'year', id: nil)
    self.title = title
    self.director = director
    self.year = year
    self.id = id
  end

end
