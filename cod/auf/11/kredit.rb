class Kredit
	attr_accessor :kredit
	attr_reader :kunde

	def initialize(kundendaten)
		@kunde = kundendaten
	end
	def kreditdaten
		puts "#{@kunde} Jahresgehalt: 24000 Euro Kredit: #{@kredit} Euro"
	end
end