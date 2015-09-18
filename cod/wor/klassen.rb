class Movie
	attr_accessor :titel
	def initialize(ptitel, prank = "")
		@titel = ptitel.capitalize
		@rank = prank
	end

	def thumbs_up
		@rank += 1
	end

	def thumbs_down
		@rank -= 1
	end

	def to_s
		"#{@titel} hat ein Ranking von: #{@rank}."
	end
end

movie1 = Movie.new("Ninja Turtles", 4)
movie2 = Movie.new("45 years", 8)
movie3 = Movie.new("8mm", 10)

movies = [movie1, movie2, movie3]
movies.each do |movie|
	movie.thumbs_up
	movie.thumbs_down
	puts movie
end
