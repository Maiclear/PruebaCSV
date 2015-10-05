require_relative 'peliculas.rb'

class Musical < Peliculas

	GENRE = "Musical"
	# attr_accessor :DVD_Title, :Studio, :Released, :Status, :Sound, :Versions, :Price, :Rating, :Year, :Genre, :Aspect, :UPC, :DVD_ReleaseDate, :ID, :Timestamp

	def initialize( data = {})
		super#(data = {})
		# @genre = GENRE
	end
end
