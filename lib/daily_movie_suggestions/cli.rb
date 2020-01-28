class DailyMovieSuggestions::CLI

  def call
    list_movies
    movie_details
  end

  def list_movies
    puts "Here are your movie suggestions for today:"
    #get movies from site with best movies
  end

  def movie_details
    puts "Enter the number of the movie you would like more information about:"
    #get further information about selected movie from site
  end

end
