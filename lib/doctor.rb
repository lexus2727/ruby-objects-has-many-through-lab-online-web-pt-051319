class Doctor
  attr_reader :name, :appointment
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
    
    def appointments
      Appointment.all.select {|appointment| appointment.doctor == self}
      end
      
      def patients
        Appointment.all.map {|appointment| appointment.patient}
      end
  
  
end