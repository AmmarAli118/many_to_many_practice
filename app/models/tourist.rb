# put your Tourist model here
class Tourist

  attr_accessor :name

  @@all_tourists = []

  def initialize(name)
    @name = name
    @@all_tourists << self
  end

  def self.all
    @@all_tourists
  end

  def self.find_by_name(name)
    @@all_tourists.find {|tourist| tourist.name == name}
  end

  def trips
    #returns an array of all the trips taken by the given 'tourist'
    Trip.all.select {|trip| trip.tourist == self}
  end

  def landmarks
    #returns an array of all the landmarks for the given 'tourist'
    self.trips.collect {|trip| trip.landmark}
  end

  def visit_landmark(landmark)
    Trip.new(self, landmark)
  end

end
