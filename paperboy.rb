class Paperboy
  attr_reader :name, :experience, :side, :quota, :earnings
  def initialize (name, side)
    @earnings = 0
    @quota = 0
    @experience = 0
    @name = name
    @side = side
  end
  def report
    puts "Hi I'm #{name}. I delivered #{experience} papers and earned $#{earnings}"
  end

  def deliver (start_address, end_address)
    experience_updated = (end_address.to_i - start_address.to_i)/2
    @experience += experience_updated
    @earnings += self.calc_earnings (experience_updated)
    self.update_quota
  end

  def update_quota
    @quota = (@experience/2) + 50
  end

  def calc_earnings (num_houses) #value of experience_updated from deliver method
    if num_houses > @quota
      money = (num_houses - 50) * 0.5 + (50*0.25)
    elsif num_houses < @quota
      money = (num_houses * 0.25) - 2
    else
      money = num_houses * 0.25
    end
    return money
  end

end

tommy = Paperboy.new("Tommy", "even")
tommy.deliver(100,220)
puts tommy.report
