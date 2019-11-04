class Song
  attr_accessor :name, :artist_name
  
  @@all = []

  def initialize(song)
    @@all << song
  end 

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create 
    @@all << self.new
  end 
  
end

  # song  = Song.create 
  # Song.all.include?(song)
   
  
#   But you need to return the son
# User avatar
# Benjamin Aschenbrenner 2 MINUTES AGO
# Which may mean you need to a) instantiate it and save it under a variable name
# User avatar
# Benjamin Aschenbrenner 2 MINUTES AGO
# b) shovel it into the @@all
# User avatar
# Benjamin Aschenbrenner 2 MINUTES AGO
# c) return it