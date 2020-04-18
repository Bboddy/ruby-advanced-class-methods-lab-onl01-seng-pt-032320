class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    song = Song.new 
    song.save
    return song
  end
  
  def self.new_by_name(songName)
    song = self.new 
    song.name = songName
    return song
  end
  
  def self.create_by_name(songName)
    song = self.create
    song.name = songName
    return song
  end
  
  def self.find_by_name(songSearch)
    self.all.find{ |song|
      if song.name == songSearch
        return song
      end
    }
  end
  
  def self.find_or_create_by_name(songSearch)
    if self.find_by_name(songSearch)
      return self.find_by_name(songSearch)
    else
      self.create_by_name(songSearch)
    end
  end
  
  def self.alphabetical
    self.all.sort_by{|song|
      song.name.downcase
    }
  end
  
  def self.new_from_filename(fileSearch)
    firstHalf = fileSearch.split(" - ")
    song.artist_name = firstHalf[0]
    song.name = 
  end
end
