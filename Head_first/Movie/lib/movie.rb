class Movie
  attr_accessor :title, :director, :year

  def initialize(title: 'title', director: 'director', year: 'year')
    self.title = title
    self.director = director
    self.year = year
  end
end