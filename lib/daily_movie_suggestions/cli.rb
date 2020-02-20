class DailyMovieSuggestions::CLI

  def call
    list_movies
    movie_details
    goodbye
  end

  def list_movies
    puts "Here are your movie suggestions for today:"
    #get movies from site with best movies
    #puts "1) Movie One, 2) Movie Two, 3) Movie Three"
    @movies = DailyMovieSuggestions::Movie.today
    @movies.each.with_index(1) do |movie, i|
      puts "#{i}. #{movie.title} - #{movie.year} - #{movie.rating}"
    end
  end

  def menu
    menu = puts "Command Menu:"
    puts "- Enter the number of the movie you would like more information about (1, 2, or 3)"
    puts "- Enter list again to view the list again"
    puts "- Enter exit to leave"
    puts menu
  end

  def movie_details
     menu

    input = nil
    while input != "exit"
      input = gets.strip

      if input.to_i > 0
        puts @movies[input.to_i - 1]
      elsif input == "list again"
        list_movies
      else
        puts "I'm not sure what you mean by that. Please enter a valid command from the menu."
        menu
      # case input
      # when "1"
      #   puts "Movie One Info"
      # when  "2"
      #   puts "Movie Two Info"
      # when "3"
      #   puts "Movie Three Info"
      # when "list again"
      #   list_movies
      #
      # end
      # if input != "1" && input != "2" && input != "3" && input != "list again" && input != "exit"
      #   puts "I'm not sure what you mean by that. Please enter a valid command from the menu."
      #   menu
       end
    end
  end

  def goodbye
    puts "Until next time, goodbye!"
  end

end
