require 'csv'
require_relative 'peliculas.rb'
require_relative 'drama.rb'
require_relative 'accion.rb'
require_relative 'musical.rb'
require_relative 'animacion.rb'

puts ''


# # aqui voy a borrar las columnas no deseadas
# original = CSV.read('dvd_csv_2.csv',  headers: true, return_headers: true )

# original.delete('Status')
# original.delete('Sound')
# original.delete('Versions')
# original.delete('Aspect')
# original.delete('UPC')
# original.delete('DVD_RealeaseDate')
# original.delete('Id')
# original.delete('Timestamp')


# ori = CSV.open('output.txt', 'w', col_sep: '|') do |csv|
#   original.each do |row|
#     csv << row
#   end
# end

# p ori

# puts origin
# puts ''
# puts ''


# aqui voy a abrir el csv de peliculas y guardarlo dentro de una variable como OBJETO DE TABLA
peliculas = []
csv = CSV.open('dvd_csv_2.csv', headers: true, header_converters: :symbol, converters: :numeric )

# aqui lo convierto a hash
peliculas = csv.map(&:to_hash)

# aqui estoy borrando columnas no deseadas.
peliculas.each do |h|
	h.delete_if {|k,| [:upc, :status, :sound, :versions, :aspect, :dvd_releasedate, :id, :timestamp].include?(k)}
end

# p peliculas
# puts peliculas

ac =[]
acmovies = []
an = []
anmovies = []
dr = []
drmovies = []
mu = []
mumovies = []

# aqui defino una variable como la seleccion del tipo de genero específico, me devuelve array de hashes
# este caso ACCION
ac = peliculas.select do |movie|
	movie if movie[:genre].match /action/i
end
# p accion[1].class
# aqui estoy instanciado con mi clase correspondiendo a mi genero especifico
ac.each do |data|
  acmovies << Accion.new(data)
end


# este caso ANIMACION
an = peliculas.select do |movie|
	movie if movie[:genre].match /animation/i
end
an.each do |data|
  anmovies << Animacion.new(data)
end


# este caso DRAMA
dr = peliculas.select do |movie|
	movie if movie[:genre].match /drama/i
end
dr.each do |data|
  drmovies << Drama.new(data)
end


# este caso MUSICAL
mu = peliculas.select do |movie|
	movie if movie[:genre].match /musical/i
end
mu.each do |data|
  mumovies << Musical.new(data)
end
# ################

puts acmovies
puts ''
puts " Cantidad de péliculas del Género acción: #{acmovies.count}"
puts ''
puts anmovies
puts ''
puts " Cantidad de péliculas del Género animación: #{anmovies.count}"
puts ''
puts drmovies
puts ''
puts " Cantidad de péliculas del Género drama: #{drmovies.count}"
puts ''
puts mumovies
puts ''
puts " Cantidad de péliculas del Género musical: #{mumovies.count}"


