class Playlist
	def initialize(name)
		@name = name
		@movies = []
	end

	def add_movie(movie)
		@movies << movie
	end

	def play
		puts "#{@name}'s PLAYLIST"
		@movies.each do |movie|
			puts movie
		end
	end

	def to_s
		@movies.size.to_s
	end
end

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

# movies = [movie1, movie2, movie3]
# movies.each do |movie|
# 	movie.thumbs_up
# 	movie.thumbs_down
# 	puts movie
# end

pl = Playlist.new("Action")
pl.add_movie(movie1)
pl.add_movie(movie2)
# puts pl
pl.play