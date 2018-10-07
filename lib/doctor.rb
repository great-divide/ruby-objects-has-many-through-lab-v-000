class Doctor
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    # @appointments = []
  end
  
  def new_appointment(patient, date)
    Appointment.new(self, patient, date)  
  end
  
  def appointments
    Appointments.all.select { |appt| appt.doctor == self }
  end
  
  def patients
    Appointments.all.collect 
  end
    
  def self.all
    @@all
  end
end

# - The `Doctor` class needs an instance method, `#patients`, that iterates over
#   that doctor's appointments and collects the patient that belongs to each
#   appointment.