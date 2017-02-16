require 'rspec'
require_relative 'car'

describe Vehicle do
  it "has to be able to create a vehicle object" do
    expect{Vehicle.new("1999")}.to_not raise_error
  end
  it "has to tell model year of vehicle" do
    vehicle = Vehicle.new("1999")
    expect(vehicle.model_year).to eq("1999")
  end

  it "has lights that default to off" do
    vehicle = Vehicle.new("1996")
    expect(vehicle.lights_on).to eq("off")
  end

  it "has lights that can be turned on" do
    vehicle = Vehicle.new("1996")
    vehicle.lights_on?
    expect(vehicle.lights_on).to eq("on")
  end

  it "has to make sure left turn signal starts in off positon" do
    vehicle = Vehicle.new("2112")
    expect(vehicle.signal_left).to eq("off")
  end

  it "has to make sure turn signal turns left" do
    vehicle = Vehicle.new("2112")
    vehicle.signal_left?
    expect(vehicle.signal_left).to eq("on")
  end

  it "has to make sure right turn signal starts in off positon" do
    vehicle = Vehicle.new("2112")
    expect(vehicle.signal_right).to eq("off")
  end

  it "has to make sure turn signal turns right" do
    vehicle = Vehicle.new("2112")
    vehicle.signal_right?
    expect(vehicle.signal_right).to eq("on")
  end

end

describe Car do
  it "has to be able to create a car object" do
    expect{Car.new}.to_not raise_error
  end
  it "has to have 4 wheels" do
    expect(Car.new.wheels).to be(4)
  end

  it "has to honk when user calls 'BEEP!'" do
    expect(Car.new.honk_horn).to eq("BEEP!")
  end

  it "has to check current speed of car" do
    expect(Car.new.current_speed).to eq("0 km/h")
  end

end

describe Toyota do
  it "has to make a Toyota car Object" do
    expect{Toyota.new}.to_not raise_error
  end

  it "has to honk 'whoop' instead of 'BEEP!'" do
    expect(Toyota.new.honk_horn).to eq("whoop")
  end

  it "has to speed up by 7 km/h" do
    toyota = Toyota.new
    toyota.accelerate
    expect(toyota.current_speed).to eq("7 km/h")
  end

  it "has to decrease speed by 5 km/h" do
    toyota = Toyota.new
    toyota.accelerate
    toyota.brake
    expect(toyota.current_speed).to eq("2 km/h")
  end

  it "has a string that lists its features" do
    toyota = Toyota.new
    expect(toyota.to_s).to eq("This car has 4 wheels and is a 2010")
  end

end

describe Tata do

  it "has to create a Tata car object" do
    expect{Tata.new}.to_not raise_error
  end

  it "has to 'beep' instead of 'BEEP!' when honk_horn is called" do
    expect(Tata.new.honk_horn).to eq("beep")
  end

  it "has to speed up by 2 km/h" do
    tata = Tata.new
    tata.accelerate
    expect(tata.current_speed).to eq("2 km/h")
  end

  it "has to decrease speed by 1.25 km/h" do
    tata = Tata.new
    tata.accelerate
    tata.brake
    expect(tata.current_speed).to eq("0.75 km/h")
  end

end

describe Tesla do

  it "has to create a Tesla car object" do
    expect{Tesla.new}.to_not raise_error
  end

  it "has to 'Beep-bee-bee-boop-bee-doo-weep' instead of 'BEEP!' when honk_horn is called" do
    expect(Tesla.new.honk_horn).to eq("Beep-bee-bee-boop-bee-doo-weep")
  end

  it "has to increase car speed by 10 km/h" do
    tesla = Tesla.new
    tesla.accelerate
    expect(tesla.current_speed).to eq("10 km/h")
  end

  it "has to decrease car speed by 7 km/h" do
    tesla = Tesla.new
    tesla.accelerate
    tesla.brake
    expect(tesla.current_speed).to eq("3 km/h")
  end

end
