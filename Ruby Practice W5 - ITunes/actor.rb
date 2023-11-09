# Actors ruby file
class Actor
  include Pred
  attr_accessor :name, :id

  def initialize(name)
    @name = name
    @id = name.object_id
  end
end

p Actor.new("John")