class DailyMovieSuggestions::CLI

  def call
    list_movies
    movie_details
  end

  def list_movies
    puts "Here are your movie suggestions for today:"
    DailyMovieSuggestions::Scraper.movie_info
    puts "          "
    puts "Would you like to view the ratings for these movies?"
  end

  def menu
    puts "          "
    menu = puts "Command Menu:"
    puts "- Enter yes to view the ratings for each movie"
    puts "- Enter list again to view the movie list again"
    puts "- Enter exit to leave"
    puts menu
  end

  def movie_details
     menu

    input = nil
    while input != "exit"
      input = gets.strip

      if input.downcase == "yes"
        DailyMovieSuggestions::Scraper.rating
      elsif input == "list again"
        list_movies
      elsif input == "exit"
        goodbye
      else
        puts "          "
        puts "I'm not sure what you mean by that. Please enter a valid command from the menu."
        menu
      end
    end
  end

  def goodbye
    puts "Until next time, goodbye!"
  end

end
