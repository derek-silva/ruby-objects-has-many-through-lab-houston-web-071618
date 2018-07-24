require "pry"

class Appointment

  @@all = []

  attr_reader :doctor, :patient

  def initialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end


end
