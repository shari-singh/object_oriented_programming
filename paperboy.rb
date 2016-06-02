class Paperboy
  attr_reader :name, :experience, :side, :quota, :earnings
  def initialize (name, side)
    @earnings = 0 #set the values to 0 as a starting point for calculations
    @quota = 50 # quota starts at minimum of 50
    @experience = 0
    @name = name
    @side = side
  end
  def report
    puts "Hi I'm #{name}. I delivered #{experience} papers and earned $#{earnings}"
  end

  def deliver (start_address, end_address)
    experience_updated = (end_address.to_i - start_address.to_i)/2 #local var. for the # of houses delivered to today
    @experience += experience_updated # update instance variable

    @earnings += self.calc_earnings (experience_updated) #update current earnings by passing the value of 'experience_updated' to the earnings 'calc_earnings'
    self.update_quota #pass updated value of @experience to update_quota
  end

  def update_quota
    @quota += (@experience/2) #got the updated value of @experience from 'deliver' method
  end

  def calc_earnings (num_houses) #value of num_houses = experience_updated from deliver method
    if num_houses > @quota  #if paperboy goes over his quota
      money = (num_houses - 50) * 0.5 + (50*0.25)
    elsif num_houses < @quota #if paperboy doesn't meet his quota
      money = (num_houses * 0.25) - 2
    else #if he meets his quota
      money = num_houses * 0.25
    end
    return money
  end

end

tommy = Paperboy.new("Tommy", "even")
tommy.deliver(100,220)
puts tommy.report
tommy.deliver(1, 150)
puts tommy.report
