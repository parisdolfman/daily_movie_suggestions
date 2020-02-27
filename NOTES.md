Notes

Movies have:
- Title
- Year (Is included in title and does not need to be a separate variable)
- Rating
- URL


Movie Objects have:
- Attr_accessor for attributes
- All method to collect all movies into an array
  - the array will be iterated over to expose the attributes
  - the information within the array should be scraped with Nokogiri from the source page

<!--

- First Movie Title: @title = doc.search("table.table a.unstyled.articleLink")[0].text
- Second Movie Title: @title = doc.search("table.table a.unstyled.articleLink")[1].text
- Third Movie Title: @title = doc.search("table.table a.unstyled.articleLink")[2].text

- First Movie Rating: @rating = doc.search("table.table span.tMeterScore")[0].text.split(//).last(3).join
- Second Movie Rating: @rating = doc.search("table.table span.tMeterScore")[1].text.split(//).last(3).join
- Third Movie Rating: @rating = doc.search("table.table span.tMeterScore")[2].text.split(//).last(3).join


Unused methods:
  #@movie_list.each do |movie|
  #    new_movie = DailyMovieSuggestions::Movie.new
  #    new_movie.title = movie.text.strip
    #  movie.rating = doc.search("table.table span.tMeterScore").text.split(//).last(3).join.strip #select for the whole row, then inside the each loop extract out each piece of information (rank, rating, title, no of reviews)
    #  @@all << #@new_movie
  #  end

# def self.scrape_rt
#  doc = Nokogiri::HTML(open("https://www.rottentomatoes.com/top/bestofrt/"))
#  @movies_list = doc.search("table.table a.unstyled.articleLink")
#  @movies_list.each do |movie|
#      new_movie = DailyMovieSuggestions::Movie.new
#      new_movie.title = movie.text.strip
#      # this would push the new movie instance into an @@all class variable
#      new_movie.save
#    end
#  end


  # movie = self.new
  # movie.title = doc.search("table.table a.unstyled.articleLink")[0].text.strip
  # movie.rating = doc.search("table.table span.tMeterScore")[0].text.split(//).last(3).join.strip
  # movie_2 = self.new
  # movie_2.title = doc.search("table.table a.unstyled.articleLink")[1].text.strip
  # movie_2.rating = doc.search("table.table span.tMeterScore")[1].text.split(//).last(3).join.strip
  # movie
  # ----------------------------------
  # def self.scrape_rt
  # @@all = []
  # doc = Nokogiri::HTML(open("https://www.rottentomatoes.com/top/bestofrt/"))
  # # gets list of movie rows in table
  # movie_list = doc.search("table.table a.unstyled.articleLink")
  # # gets titles
  # movie_titles = movie_list.map { |movie| movie.text.strip }

  -->
