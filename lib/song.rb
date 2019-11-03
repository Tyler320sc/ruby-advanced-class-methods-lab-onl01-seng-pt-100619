class Song
  attr_accessor :name, :artist_name
  
  @@all = []

  def initialize(song)
    @song = song 
    
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

   song  = Song.create 
   Song.all.include?(song)
   song 
  
  