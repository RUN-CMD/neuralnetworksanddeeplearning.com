class Perceptron
  def initialize(*inputs)
    @inputs = inputs
  end

  def output
    weighted_sum + bias > 0 ? 1 : 0
  end

  def weighted_sum
		sum = 0
    @inputs.each_with_index do |input, index|
      sum += input * weight(index)
    end

    sum
  end

  def bias
   -threshold
  end

  def threshold
    0 # some threshold
  end

  def weight(index)
   1  # all evenly weighted
  end
end

class LikesIceCreamPerceptron < Perceptron
  WEIGHTS = [1, 2, 4]

  def initialize(likes_sweet, likes_dairy, likes_fun)
    super
  end

  def threshold
    5
  end

  def weight(index)
    WEIGHTS[index]
  end
end

puts "** Likes iced cream (likes_sweet, likes_dairy, doesnt_like_fun) => #{LikesIceCreamPerceptron.new(1, 1, 0).output}"
puts "** Likes iced cream (doesnt_like_sweet, likes_dairy, likes_fun) => #{LikesIceCreamPerceptron.new(0, 1, 1).output}"
