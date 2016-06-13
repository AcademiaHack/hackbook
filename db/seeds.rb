# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(name:'Wii', email: 'wsanabriadg@gmail.com', password:'delunoalseis')
User.create(name:'Argenis', email: 'damper@gmail.com', password:'delunoalseis')
User.create(name:'Pedro', email: 'pedrorojas89@gmail.com', password:'delunoalseis')
User.create(name:'Moises', email: 'loldlm1@gmail.com', password:'delunoalseis')
User.create(name:'Javier', email: 'jtorrealba3@gmail.com', password:'delunoalseis')
User.create(name:'Argel', email: 'abiasco98@gmail.com', password:'delunoalseis')
User.create(name:'Jennyree', email: 'jaar1909@gmail.com', password:'delunoalseis')
User.create(name:'Elieser', email: 'elieserjose@gmail.com', password:'delunoalseis')
User.create(name:'Inno', email: 'innocenteagostinelli@gmail.com', password:'delunoalseis')
User.create(name:'Victor', email: 've.padula@gmail.com', password:'delunoalseis')
romer = User.create(name:'Romer', email: 'romerramos@gmail.com', password:'delunoalseis')

#type_of: 0 => "link", 1 => "code"
#status: 0 => "disabled", 1 => "active", 2 => "draft"
Post.create(title: 'Post 1', content:"http://google.com", type_of: 0, status: 1, user: romer)
Post.create(title: 'Post 2', content:"http://google.com", type_of: 0, status: 1, user: romer)
Post.create(title: 'Post 3', content:"blah blah code blah blah", type_of: 1, status: 1, user: romer)
Post.create(title: 'Post 4', content:"http://google.com", type_of: 0, status: 1, user: romer)
Post.create(title: 'Post 5', content:"blah blah code blah blah", type_of: 1, status: 1, user: romer)
Post.create(title: 'Post 6', content:"http://google.com", type_of: 0, status: 1, user: romer)
