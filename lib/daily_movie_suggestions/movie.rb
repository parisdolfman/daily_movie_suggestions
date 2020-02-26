class DailyMovieSuggestions::Movie

attr_accessor :title, :rating, :url

@@all = []

def self.all
  @@all << self.today
  @@all
end

def self.today
  doc = Nokogiri::HTML(open("https://www.rottentomatoes.com/top/bestofrt/"))

  @title = doc.search("table.table a.unstyled.articleLink")[1].text
  @rating = doc.search("table.table span.tMeterScore")[1].text.split(//).last(3).join
  binding.pry
end


def rating
  @rating = doc.search("table.table span.tMeterScore")[1].text
end


end
