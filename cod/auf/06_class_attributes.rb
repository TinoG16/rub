# a. machen Sie aus der Instanzvariablen @health ein lesbares Attribut
# b. geben Sie die Eigenschaft health des Objektes player1 aus
# c. die Eigenschaft name soll sowohl lesbar, als auch schreibbar sein
# d. erzeugen Sie ein virtuelles Attribut score, das den Wert von health addiert mit der Buchstabenlaenge des name -Attributes
# e. aendern Sie die to_s - Methode, zur Ausgabe des Score
class Player
	def initialize(name, health = 100)
		@name = name
		@health = health
		@score = @health + @name.length
	end

	attr_reader :health
	attr_accessor :name

	def say_hello 
	 	"Ich bin #{@name} mit einem Wert von #{@health}" 
	end

	def blam
		@health -= 10
		puts "#{@name} got blamed"
	end

	def w00t
		@health += 10
		puts "#{@name} got w00ted"
	end

	def to_s
		"Your score is #{@score}"
	end
end

player1 = Player.new('Ralf', 90)
player2 = Player.new('Jürgen')
players = player1.say_hello, player2.say_hello
puts player1.health
puts player1
puts player2