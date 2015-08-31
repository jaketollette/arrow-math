class Arrow
	
	AC_OF_GRAVITY = 225120.0

	attr_accessor :mass, :speed

	def initialize(mass, bow)
		@mass = mass.to_f
		@speed = bow.speed.to_f
	end

	def kinetic_energy
		(mass * speed**2)/(2 * AC_OF_GRAVITY)
	end

	def momentum
		(mass * speed)/AC_OF_GRAVITY
	end

	def game_type
		case kinetic_energy
			when 0..24 then 'small game'
			when 25..41 then 'small game and medium game'
			when 42..65 then 'small, medium, and large game'
			else 'small, medium, large, and tough game... Like Grizzlies and shit. Good job.'
		end
	end
end