

class User
  attr_reader :name, :email, :friends

  @@all = []
  def self.all
    @@all
  end

  def initialize(name, email, friends)
    @name = name
    @email = email
    @friends = friends
    @@all << self
  end

  #helper
  def reviews
    Review.all.select do |review|
      review.user == self
    end
  end

  def cigars
    reviews.map do |review|
      review.cigar
    end
  end

  def most_expensive_smoked
    #hash of cigar instances and their costs
    cigars.map{|cigar|{cigar: cigar.cost}}
    #sort by keys and return instance next
    # binding.pry
  end


end ## end of cigar class
