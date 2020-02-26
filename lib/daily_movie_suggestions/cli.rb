class DailyMovieSuggestions::CLI

  def call
    list_movies
    movie_details
    goodbye
  end

  def list_movies
    puts "Here are your movie suggestions for today:"
    @movies = DailyMovieSuggestions::Movie.today
    @movies.each.with_index(1) do |movie, i|
      puts "#{i}. #{movie.title} - #{movie.rating}"
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
       end
    end
  end

  def goodbye
    puts "Until next time, goodbye!"
  end

end
