class Vehicle

  def initialize(year)
    @model_year = year
    @lights_on = "off"
    @signal_left = "off"
    @signal_right = "off"
  end

  def signal_left?
    if @signal_left = "off"
      @signal_left = "on"
    else
      @signal_left = "off"
    end
  end

  def signal_left
    @signal_left
  end

  def signal_right?
    if @signal_right = "off"
      @signal_right = "on"
    else
      @signal_right = "off"
    end
  end

  def signal_right
    @signal_right
  end

  def lights_on?
    if @lights_on = "off"
      @lights_on = "on"
    else
      @lights_on = "off"
    end
  end

  def lights_on
    @lights_on
  end

  def model_year
    @model_year
  end

end

class Car < Vehicle

  def to_s
    "This car has #{@wheels} wheels and is a #{@model_year}"
  end

  def initialize year="2020"
    super(year)
    @wheels = 4
    @horn = "BEEP!"
    @speed = 0
  end

  def current_speed
    @speed.to_s + " km/h"
  end

  def wheels
    @wheels
  end

  def honk_horn
    @horn
  end
end

class Toyota < Car

  def initialize year="2010"
    super(year)
    @horn = "whoop"
  end

  def accelerate
    @speed = (@speed + 7)
  end

  def brake
    @speed = (@speed - 5)
  end

end

class Tata < Car

  def initialize year="2001"
    super(year)
    @horn = "beep"
  end

  def accelerate
    @speed = (@speed + 2)
  end

  def brake
    @speed = (@speed - 1.25)
  end

end

class Tesla < Car

  def initialize year="2009"
    super(year)
    @horn = "Beep-bee-bee-boop-bee-doo-weep"
  end

  def accelerate
    @speed = (@speed + 10)
  end

  def brake
    @speed = (@speed - 7)
  end

end
