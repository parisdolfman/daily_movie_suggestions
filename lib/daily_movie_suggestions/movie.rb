class DailyMovieSuggestions::Movie

attr_accessor :title, :rating, :number

@@all = []

def initialize(rating = nil, title = nil, number = nil)
  @rating = rating
  @title = title
  @number = number
  @@all << self
end

def self.rating
  @@all.each do |movie|
    puts "#{movie.number} #{movie.rating}"
  end
end
#def save
 #@@all << self
#end

def self.all
  puts @@all
end

end
