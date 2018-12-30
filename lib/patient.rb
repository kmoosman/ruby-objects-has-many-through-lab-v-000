class Patient
  
 attr_accessor :name, :patient, :doctor
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
    # @songs = songs
  end
  
  def self.all 
    @@all
  end
  
  # def new_appointment(doctor, date)
  #   Appointment.new(self, date, doctor)
  # end

  # def songs
  #   Song.all.select {|song| song.genre == self}
  # end
  
  # def artists
  #   songs.map {|song| song.artist}
  # end
end