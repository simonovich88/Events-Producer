# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Faker::Music es un modulo

#build no necesito pasar el id de la banda lo construye

Band.destroy_all
20.times do
    band = Band.create(name: Faker::Music.band,
                      members: rand(1..8),
                      debut: Date.today - (5..30).to_a.sample.year,
                      band_sort:[0,1].sample)
    puts"Se creo la vanda #{band.name}"
    rand(5..15).times do 
        concert = band.concerts.build(date: Date.today - (1..30).to_a.sample.days,
         attendance: rand(1_000..50_000),
         duration: rand(30..240))
        concert.save
        puts"Se creo el concierto el: #{concert.date} "
    end
end


