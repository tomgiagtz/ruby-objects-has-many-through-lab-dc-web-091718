class Doctor
	@@all = []
	
	attr_accessor :name
	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		@@all
	end

	def new_appointment(name, patient)
		appointment = Appointment.new(name, self, patients)
	end

	def appointments
		Appointment.all.select { |appointment| appointment.doctor == self }
	end

	def patients
		appointments.collect { |appointment| appointment.patient }
	end
end