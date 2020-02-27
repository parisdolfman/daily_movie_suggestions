class DailyMovieSuggestions::Movie

attr_accessor :title, :rating, :url

def self.today
  self.scrape_rt
end

def self.scrape_rt

  doc = Nokogiri::HTML(open("https://www.rottentomatoes.com/top/bestofrt/"))

  @movie_list = doc.search("table.table a.unstyled.articleLink")
  @movie_list.each.with_index(1) do |movie, i|
    puts "#{i}. #{movie.text.strip}"

    end
  end

end
