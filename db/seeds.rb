# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Status.create([
    { description: 'Accepted' },
    { description: 'Rejected' },
    { description: 'Cenceled' },
    { description: 'Delivered' },
    { description: 'Authorized' }
])

Category.create([
    { name: 'shoes'},
    { name: 'pets'},
    { name: 'food'},
    { name: 'food'}
])

Role.create([
    { name: 'Admin'},
    { name: 'Client'}
])

User.create([
    { username: 'admin', password: 'admin', password_confirmation: 'admin', role: Role.find_by(name: 'Admin') }
])
