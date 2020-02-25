class DailyMovieSuggestions::Scraper

def self.get_page
  doc = Nokogiri::HTML(open("https://www.rottentomatoes.com/top/bestofrt/"))
  binding.pry
end



end
