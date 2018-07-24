require "pry"

class Doctor

  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, patient)
    Appointment.new(date, self, patient)
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select do |appointment_instance|
      appointment_instance.doctor == self
    end
  end

  def patients
    appointments.map do |appointment_instance|
      appointment_instance.patient
    end
  end

end
