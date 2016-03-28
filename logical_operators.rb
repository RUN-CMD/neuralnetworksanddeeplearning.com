require './perceptron'

class LogicalPerceptron < Perceptron

  def self.name
    :logical_operator
  end

  def self.table
		(0..1).each do |x|
			(0..1).each do |y|
				puts "** #{self.name.to_s.upcase} [#{x}][#{y}] => #{NandPerceptron.new(x, y).output}"
			end
    end
	end
end

class NandPerceptron < LogicalPerceptron
  WEIGHTS = [-2, -2]

  def self.name
    :nand
  end

  def bias
    3
  end

  def weight(index)
    WEIGHTS[index]
  end
end

NandPerceptron.table
