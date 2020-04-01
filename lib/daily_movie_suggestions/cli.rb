class DailyMovieSuggestions::CLI

  def call
    list_movies
    movie_details
  end

  def list_movies
    puts "Here are your movie suggestions for today:"
    DailyMovieSuggestions::Scraper.movie_titles
  end

  def menu
    menu = puts "Command Menu:"
    puts "- Enter the number of the movie you would like to know the rating for: 1, 2, or 3"
    puts "- Enter list again to view the list again"
    puts "- Enter exit to leave"
    puts menu
  end

  def movie_details
     menu

    input = nil
    while input != "exit"
      input = gets.strip

      if input.to_s == "1" || input.to_s == "2" || input.to_s == "3"
        DailyMovieSuggestions::Scraper.rating




      elsif input == "list again"
        list_movies
      elsif input == "exit"
        goodbye
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
