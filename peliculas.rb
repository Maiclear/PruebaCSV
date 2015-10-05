class Peliculas
	attr_accessor :dvd_title, :studio, :released, :price, :rating, :year, :genre #:aspect, :upc, :dvd_releasedate, :id, :timestamp, :status, :sound, :versions

	def initialize(data = {})
		@dVD_Title = data[:dvd_title]
		@studio = data[:studio]
		@released = data[:released]
		# @status = data[:status]
		# @sound = data[:sound]
		# @versions = data[:versions]
		@price = data[:price]
		@rating = data[:rating]
		@year = data[:year]
		@genre = data[:genre]
		# @aspect = data[:aspect]
		# @uPC = data[:upc]
		# @dVD_ReleaseDate = data[:dvd_releasedate]
		# @iD = data[:id]
		# @timestamp = data[:timestamp]

	end

	def to_s
		" Nombre: #{@dVD_Title} , Género: #{@genre}, Año: #{@year}, Rating: #{@rating} "
	end

	def studio
		puts ''
		puts "Escribe el género que buscas"
		gen = get.chomp


	end

end
