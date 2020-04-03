class DailyMovieSuggestions::Scraper


def self.movie_titles

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


  def self.rating

    doc = Nokogiri::HTML(open("https://www.rottentomatoes.com/top/bestofrt/"))

    @movie_list = doc.search("table.table span.tMeterScore")
    @movie_list.each.with_index(1) do |rating, i|
      @new_movie = DailyMovieSuggestions::Movie.new
      @new_movie.rating = rating.text.strip
       @new_movie.number = i
        if i < 4
        puts "#{@new_movie.number}. #{@new_movie.rating}"
        end
        @new_movie.save
      end
    end


end
