class Athelete
  attr_accessor :name, :stamina, :status

  def initialize(name="Bob", stamina=100, status="fresh")
    @name = name
    @stamina = stamina
    @status = status
  end

  def run(distance = 100)
    self.stamina -= distance
    report
  end

  def report
    p "#{self.name} has #{self.stamina} units of stamina remaining"
  end

  def get_status
    if self.stamina > 70
      self.status = "fresh"
    elsif self.stamina.between?(25, 70)
      self.status = "alert"
    else
      self.status = "tired"
    end
    p "#{self.name} is #{self.status}"
  end

end


athelete = Athelete.new
athelete.run
athelete.get_status

athelete = Athelete.new("James",200,"fresh")
athelete.run(10)
athelete.get_status
