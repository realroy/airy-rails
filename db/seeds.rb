# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create([
                   {
                       name: 'White coffee cup',
                       brand: 'A',
                       description: 'White coffee cup from A.',
                       price: 10,
                       in_stock: 22,
                       img_url: 'https://images.unsplash.com/photo-1504630083234-14187a9df0f5?ixlib=rb-0.3.5&s=ef06afaf10db74a3635f03f66583a2c7&auto=format&fit=crop&w=1350&q=80'
                   }, {
                       name: 'White coffee cup',
                       brand: 'B',
                       description: 'White coffee cup from B.',
                       price: 11,
                       in_stock: 12,
                       img_url: 'https://images.unsplash.com/photo-1504630083234-14187a9df0f5?ixlib=rb-0.3.5&s=ef06afaf10db74a3635f03f66583a2c7&auto=format&fit=crop&w=1350&q=80'
                   }, {
                       name: 'White coffee cup',
                       brand: 'C',
                       description: 'White coffee cup from C.',
                       price: 10,
                       in_stock: 32,
                       img_url: 'https://images.unsplash.com/photo-1504630083234-14187a9df0f5?ixlib=rb-0.3.5&s=ef06afaf10db74a3635f03f66583a2c7&auto=format&fit=crop&w=1350&q=80'
                   },
               ])