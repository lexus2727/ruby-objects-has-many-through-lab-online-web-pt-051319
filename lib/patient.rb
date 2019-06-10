class Patient
  attr_reader :name
  @@all = []
  
  def initialize(name)
    @name = name
  end
  
  def self.all
    @@all
  end
  
  def appointments
  Appointment.all.select {|appointments| appointment.patient == self}
  end
  
  def new_appointment(doctor, date)
    Appointment.new(doctor,self, date)
end

def patients
  Appointment.all.map {|appointment| appointment.patient)
  
end
end