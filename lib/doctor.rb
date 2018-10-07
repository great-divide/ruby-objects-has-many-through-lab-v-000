class Doctor
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(patient, date)
    Appointment.new(self, patient, date)  
  end
  
  def appointments
    
  def self.all
    @@all
  end
end


# - The `Doctor` class needs an instance method, `#appointments`, that iterates
#   through all appointments and finds those belonging to this doctor.
# - The `Doctor` class needs an instance method, `#patients`, that iterates over
#   that doctor's appointments and collects the patient that belongs to each
#   appointment.