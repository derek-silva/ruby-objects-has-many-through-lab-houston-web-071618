require "pry"

class Patient


  def initialize(name)
    @name = name
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select do |appointment_instance|
      appointment_instance.patient == self
    end
  end

  def doctors
    appointments.map do |appointment_instance|
      appointment_instance.doctor
    end
  end
  
end
