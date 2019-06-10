class Doctor
  attr_reader :name
  attr_accessor :patient, :date
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(date, patient)
    Appointment.new(patient, self, date)
    end
  
  
end