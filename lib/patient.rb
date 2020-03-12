class Patient
  attr_accessor :name, :appointment, :doctor
   @@all = []
  
  def initialize(name)
    @name = name
    #binding.pry
    @@all << self
  end
  
  def self.all 
   @@all
  end
  
 #returns all appointments associated with this patient
  def appointments
    Appointment.all.select do |appt| 
      appt.patient == self
    end
  end 
    
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
  
  def doctors #collects the doctor that belongs to each Appointment
    self.appointments.collect do |appt| 
      appt.doctor
   end
  end  
end  