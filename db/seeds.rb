# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Book.create([
  { title: 'Matilda' },
  { title: 'Moby Dick' },
  { title: 'Running for Women' },
  { title: 'Sing, Unburied, Sing' },
  { title: 'Naked Ladies' }
])

Author.create([
  { fullname: 'Roald Dahl' },
  { fullname: 'Herman Melville' },
  { fullname: 'Kara Goucher' },
  { fullname: 'Jesmyn Ward' },
  { fullname: 'Antonya Nelson'}
])

Book.find_by(title: 'Matilda').author = Author.find_by(fullname: 'Roald Dahl')
Book.find_by(title: 'Moby Dick').author = Author.find_by(fullname: 'Herman Melville')
Book.find_by(title: 'Running for Women').author = Author.find_by(fullname: 'Kara Goucher')
Book.find_by(title: 'Sing, Unburied, Sing').author = Author.find_by(fullname: 'Jesmyn Ward')
Book.find_by(title: 'Naked Ladies').author = Author.find_by(fullname: 'Antonya Nelson')
