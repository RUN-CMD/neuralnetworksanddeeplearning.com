require './perceptron'

puts "** Likes iced cream (likes_sweet, likes_dairy, doesnt_like_fun) => #{LikesIceCreamPerceptron.new(1, 1, 0).output}"
puts "** Likes iced cream (doesnt_like_sweet, likes_dairy, likes_fun) => #{LikesIceCreamPerceptron.new(0, 1, 1).output}"
