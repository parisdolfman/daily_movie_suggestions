#require 'pry'
class DailyMovieSuggestions::Movie

attr_accessor :title, :year, :rating, :url

@@all = []

def self.all
  @@all
end

def self.today
  movie_1 = self.new
  movie_1.title = "Shawshank Redemption"
  movie_1.year = "1993"
  movie_1.rating = "5/5"

  movie_2 = self.new
  movie_2.title = "Titanic"
  movie_2.year = "1995"
  movie_2.rating = "4/5"

  [movie_1, movie_2]
end

end
