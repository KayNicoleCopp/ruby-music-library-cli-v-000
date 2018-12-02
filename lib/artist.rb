class Artist

attr_accessor :name

@@all = []

def initialize(name)
  @name = name
  @@all << self
  @songs = []
end

def songs
  @songs
end

def add_song(song)
  @songs << song
  song.artist = self
end

def self.all
  @@all
end

def self.destroy_all
  @@all.clear
end

def save
  @@all << self
end

def self.create(name)
  created_artist = Artist.new(name)
  created_artist.save
  created_artist
end


end
