require_relative '../config/environment.rb'
# def initialize(brand, strength, burn_time)
#cigar
c1 = Cigar.new("Romeo y Julieta", "medium", 1,10)
c2 = Cigar.new("Romeo y Julieta", "mild", 1,50)
c3 = Cigar.new("Cubano", "heavy", 2,100)


# def initialize(name, smoked_cigars, wish_list)
#user
u1 = User.new("Josh","josh@email.com", 150)
u2 = User.new("Joe", "joe@email.com", 87)
u3 = User.new("Jim", "jim@email.com", 95)


# def initialize(review, user, cigar)
#review
r1 = Review.new("Wow, amazing smoke", u1, c1)
r2 = Review.new("I hated it", u1, c2)
r3 = Review.new("not bad", u1, c3)

binding.pry
puts "The code has finished"
