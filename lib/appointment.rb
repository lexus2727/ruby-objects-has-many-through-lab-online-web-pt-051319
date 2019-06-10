class Apoointment
  attr_reader :date, :patient, :doctor
  
  @2all = []
  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end