class Car

  def initialize(make, model, color = "white")
    @make = make
    @model = model
    @color = color
    @odometer = 0
    @start = false
  end

  def paint(new_color)
    @color = new_color
  end

  def horn
    puts "BEEEEEEEP!"
  end

  def drive(distance)
    puts "I am driving #{distance} miles."
    @odometer += distance
  end

  def start
    if @start == false
      puts "starting up!"
      @start = true
    else
      puts "BZZT! Nice try, though."
    end
  end

end

car = Car.new("toyota", "camry")
p car
car.start
car.start
