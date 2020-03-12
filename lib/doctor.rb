class Doctor 
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
    Appointment.all.select do |appoint|
      appoint.doctor == self
    end
  end  
  
  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
    #binding.pry
  end  
  
  def patients
    #returns an array of all the patients from appointments connected to a specific doctor
    self.appointments.collect do |appointment| 
      appointment.patient
    end
  end
end  

