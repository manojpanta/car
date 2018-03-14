class Car
  
  attr_reader :odometer,
              :make,
              :color,
              :model

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

  def drive
    puts "How long you want to drive?"
    answer = gets.chomp
    puts "I am driving #{answer} miles."
    @odometer += answer.to_i
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
car.drive
car.drive
p car.odometer
