require 'pry'
class DailyMovieSuggestions::Movie

attr_accessor :title, :year, :rating, :url

@@all = []

def initialize(title, year, rating, url)
  @title = title
  @year = year
  @rating = rating
  @url = url
  @@all << self
end

def doc
  doc = Nokogiri::HTML(open("https://www.rottentomatoes.com/top/bestofrt/"))
binding.pry
end




end
