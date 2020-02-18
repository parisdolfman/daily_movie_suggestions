require 'pry'
class DailyMovieSuggestions::Movie

attr_accessor :title, :year, :rating, :url

@@all = []

def self.all
  @@all
end

def initialize(title, year, rating, url)
  @title = title
  @year = year
  @rating = rating
  @url = url
  @@all << self
end

def doc
  @doc = Nokogiri::HTML(open(self.url))
binding.pry
end




end
