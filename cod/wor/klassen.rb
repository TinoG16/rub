class Movie
	def initialize(ptitel, prank = "")
		@titel = ptitel.capitalize
		@rank = prank
	end

	def to_s
		"#{@titel} hat ein Ranking von: #{@rank}."
	end
end

obj_movie1 = Movie.new("Ninja Turtles", 4)
puts obj_movie1.to_s