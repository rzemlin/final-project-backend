# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ryan = User.create(username: "Ryan", email: "ryan@gmail.com", password: "password", bio: "Just little old me", image: "https://i.pinimg.com/originals/5a/f0/de/5af0de1179ea4cd07eda82a96e542151.jpg")
greg = User.create(username: "Greg", email: "greg@gmail.com", password: "password", bio: "Well hello there", image: "https://ontapsportsnet.com/wp-content/uploads/2020/03/Warwick-Davis-as-a-Leprechaun-1.jpg")

posts = Post.create([{ image: "https://i.pinimg.com/originals/23/4f/2b/234f2b70785e42ffc266a1c4bce5dff8.jpg", likes: 1, caption: "I've always liked this picture", user_id: ryan.id }, {
                                                                                                                                                                                       image: "https://cdn.shopify.com/s/files/1/0520/4158/0707/products/M-Performance-Carbon-Fiber-Front-Lip-BMW-F10-M5_600x.jpg?v=1637642002", likes: 11, caption: "yep", user_id: greg.id,
                                                                                                                                                                                     }])

Comment.create(comment: "I like it!", post_id: 2, user_id: ryan.id)
