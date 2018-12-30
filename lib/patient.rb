class Patient
  
 attr_accessor :name, :appointment, :doctor
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def self.all 
    @@all
  end
  
  def appointments
    Appointment.all.select {|appointment| appointment.patient == self}
  end
  
  def doctors
     appointments.map {|appointment| appointment.doctor}
  end
  
  # def new_appointment(doctor, date)
  #   Appointment.new(self, date, doctor)
  # end
  
  def new_appointment(doctor, date)
     Appointment.new(self, date, doctor)
  end

  # def songs
  #   Song.all.select {|song| song.genre == self}
  # end
  
  # def artists
  #   songs.map {|song| song.artist}
  # end
end