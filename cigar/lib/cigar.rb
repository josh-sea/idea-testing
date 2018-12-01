

class Cigar
  attr_reader :brand, :strength, :burn_time, :cost

  @@all = []
  def self.all
    @@all
  end

  def initialize(brand, strength, burn_time, cost)
    @brand = brand
    @strength = strength
    @burn_time = burn_time
    @cost = cost
    @@all << self
  end

  def reviews
    Review.all.select do |review|
      review.cigar == self
    end
  end

  def users
    reviews.map do |review|
      review.user
    end
  end



end ## end of cigar class
