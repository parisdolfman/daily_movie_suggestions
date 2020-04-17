class DailyMovieSuggestions::Scraper


def self.movie_info

  doc = Nokogiri::HTML(open("https://www.rottentomatoes.com/top/bestofrt/"))
  @movie_list = doc.css(".table tr").drop(1)
  @movie_list.each.with_index(1) do |movie, i|
    @new_movie = DailyMovieSuggestions::Movie.new
        @new_movie.title = movie.css(".unstyled").text.strip
         @new_movie.number = movie.css(".bold").text.strip
         @new_movie.rating = movie.css(".tMeterScore").text.strip
            puts "#{@new_movie.number} #{@new_movie.title} #{@new_movie.rating}"
           break if i == 3
           end
         end


    end
