# put your Landmark model here
class Landmark
  attr_accessor :name, :city

  @@all_landmarks = []


  def initialize(name, city)
    @name = name
    @city = city
    @@all_landmarks << self
  end

  def self.all
    @@all_landmarks
  end

  def self.find_by_city(city)
    @@all_landmarks.select{|landmarks| landmarks.city == city}
  end

  def trips
    #returns an array of all the trips taken to a given landmark
    Trips.all.select{|trips| trips.landmark == self}
  end

  def tourists
    #returns an array of all the tourists at a given landmark
    self.trips.collect {|trips| trip.tourist}
  end
end
