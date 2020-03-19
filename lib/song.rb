class Song 
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @@count += 1
    @@genres << genre
    @@artists << artist
  end 
  
  def self.count
    @@count
  end
  
  def self.genres 
    @@genres.uniq
  end
  
  def self.artists 
    @@artists.uniq
  end 
  
  def self.genre_count 
    genre_hash = {}
    @@genres.each do |element|
      if genre_hash[element]
        genre_hash[element] += 1
      else 
        genre_hash[element] = 1
      end
    end 
    genre_hash
  end 
    
end