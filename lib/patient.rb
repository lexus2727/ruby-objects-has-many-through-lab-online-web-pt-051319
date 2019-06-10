class Patient
  attr_reader :name
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
  
  def new_appointment(doctor, date)
    Appointment.new(doctor,self, date)
end

def doctors
  
  self.appointments.map {|appointment| appointment.doctor}
  
end


end