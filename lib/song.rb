class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.create
    song = self.new
    song.save #saved to @@all through the class method Song.all.
    song
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.new_by_name(name)
    song = self.new
    song.name = name
    song
  end

  def self.create_by_name(name)
    song = self.create
    song.name = name
    song.save
    song
  end

  def self.find_by_name(name)
    if @@all.include?(name)
    song = @@all.collect {name}
    song
    end
  end

  def self.find_or_create_by_name(name)
    if @@all.include?(name)
      @@all.collect {name}
    elsif !@@all.include?(name)
      self.create_by_name(name)
    end
  end


end
