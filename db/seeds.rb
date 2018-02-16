# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


 
BodyLocation.create id:1, name:"Anterior Neck"
BodyLocation.create id:2, name:"Hands"
BodyLocation.create id:3, name:"Anterior Tibialis/Calves/Feet"
BodyLocation.create id:4, name:"Posterior Neck"
BodyLocation.create id:5, name:"Front Chest/Biceps"
BodyLocation.create id:6, name:"Glutes/Hamstrings"
BodyLocation.create id:7, name:"Full Body"
BodyLocation.create id:8, name:"Quadriceps/Knees"
BodyLocation.create id:9, name:"Upper Back/Triceps"
BodyLocation.create id:10, name:"Core/Lower Back"

(1..30).each.with_index(1) do |a, index|
  User.create!(email:"sandeep#{index}@gmail.com", password:"password", first_name:"sandeep#{index}")
end


