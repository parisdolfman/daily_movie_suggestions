class DailyMovieSuggestions::Scraper

def get_page
  Nokogiri::HTML(open("https://www.rottentomatoes.com/top/bestofrt/"))
  binding.pry
end



end
