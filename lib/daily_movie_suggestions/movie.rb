class DailyMovieSuggestions::Movie

attr_accessor :title, :rating, :url


def self.today
  self.scrape_movies
end

def self.scrape_movies
  @@all = []
  @@all << self.scrape_rt

  @@all
end

def self.scrape_rt
  doc = Nokogiri::HTML(open("https://www.rottentomatoes.com/top/bestofrt/"))

  movie = self.new
  movie.title = doc.search("table.table a.unstyled.articleLink")[0].text.strip
  movie.rating = doc.search("table.table span.tMeterScore")[0].text.split(//).last(3).join.strip

  movie
#  @title = doc.search("table.table a.unstyled.articleLink")[0].text
#  @rating = doc.search("table.table span.tMeterScore")[0].text.split(//).last(3).join
#  binding.pry
  end

end
