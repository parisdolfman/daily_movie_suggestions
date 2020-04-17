class DailyMovieSuggestions::Movie

attr_accessor :title, :rating, :number

def initialize(rating = nil, title = nil, number = nil)
  @rating = rating
  @title = title
  @number = number
end


@@all = []

def save
 @@all << self
end

def self.all
  @@all
end

end
