require_relative 'bow.rb'
require_relative 'arrow.rb'

puts "Welcome to the calculator"
puts "Please enter your bow's speed in FPS: "
entered_speed = gets.chomp.to_f

bow = Bow.new(entered_speed)

puts "Great. Now enter your arrow's weight in grains: "
entered_weight = gets.chomp.to_f

arrow = Arrow.new(entered_weight, bow)

answer = ''

until answer == 'exit'
	puts
	puts "Make a selection. Type 'exit' to leave: "
	puts "K for Kinetic Energy"
	puts "M for momentum"
	puts "G for types of game you can kill with this setup"
  puts
	answer = gets.chomp.downcase

	puts arrow.kinetic_energy.round(2) if answer == 'k'
	puts arrow.momentum.round(2) if answer == 'm'
	puts arrow.game_type if answer == 'g'
end