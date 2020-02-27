class DailyMovieSuggestions::Movie

attr_accessor :title, :rating, :number, :url

@@all = []

def save
 @@all << self
end

def self.all
  @@all
end

def self.today
  self.scrape_rt
end

def self.scrape_rt

  doc = Nokogiri::HTML(open("https://www.rottentomatoes.com/top/bestofrt/"))

  @movie_list = doc.search("table.table a.unstyled.articleLink")
  @movie_list.each.with_index(1) do |movie, i|
    @new_movie = DailyMovieSuggestions::Movie.new
    @new_movie.title = movie.text.strip
    @new_movie.number = i
      if i < 4
      puts "#{@new_movie.number}. #{@new_movie.title}"
      end
      @new_movie.save
    end 
  end

# def self.details
#   @@all.each do |movie|
#     @movie = movie
#     if movie.title
#
# end


end
