require 'pry'

class Owner

	@@all = []

	attr_reader :species
	attr_accessor :name, :pets
  
	def initialize(species)
		@species = species
		@pets = {:fishes => [], :dogs => [], :cats => []}

		@@all << self
	end

	#### CLASS METHODS ######
	def self.all
		@@all
	end

	def self.reset_all
		@@all = []
	end

	def self.count
		@@all.length
	end

	#### INSTANCE METHODS #####

	def say_species
		"I am a #{@species}."
	end

	def buy_fish(name)
		@pets[:fishes] << Fish.new(name)
	end

	def buy_cat(name)
		@pets[:cats] << Cat.new(name)
	end

	def buy_dog(name)
		@pets[:dogs] << Dog.new(name)
	end

	def walk_dogs
		@pets[:dogs].each do |dog|
			dog.mood = "happy"
		end
	end

	def play_with_cats
		@pets[:cats].each do |cat|
			cat.mood = "happy"
		end
	end

	def feed_fish
		@pets[:fishes].each do |fish|
			fish.mood = "happy"
		end
	end

	def sell_pets
		@pets.each do |type, pets|
			pets.each do |pet|
				#binding.pry
				pet.mood = "nervous"
			end
		end

		@pets.each do |type, pets|
			pets.clear
		end
	end

	def list_pets
		"I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
	end

end