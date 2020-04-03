class DailyMovieSuggestions::Movie

attr_accessor :title, :rating, :number

@@all = []

def save
 @@all << self
end

def self.all
  @@all
end

end
