# put your Trip model here
class Trip

  attr_accessor :tourist, :landmark

  @@all_trips = []

  def initialize(tourist, landmark)
    @tourist = tourist
    @landmark = landmark
    @@all_trips << self
  end

  def self.all
    @@all_trips
  end

  def tourist
    #returns the tourist who has taken that trip
  end

  def landmark
    #returns the landmark visted on the trip
  end

end
