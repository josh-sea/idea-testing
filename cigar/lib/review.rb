

class Review
  attr_reader :review, :user, :cigar

  @@all = []
  def self.all
    @@all
  end

  def initialize(review, user, cigar)
    @review = review
    @user = user
    @cigar = cigar
    @@all << self
  end

  
end ## end of cigar class
