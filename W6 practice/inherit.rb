class Bird
  attr_accessor :name, :wings, :legs, :beak, :flies, :feathers
  def initialize(name,wings,legs,beak)
    @name = name
    @wings = wings
    @legs = legs
    @beak = beak
    @flies = true
    @feathers = feathers
  end

  def beak_size
    @beak
  end

  def can_fly?
    if @feathers && @flies then true
    elsif !@flies then false
    end
  end
end

class Seagull < Bird # I want to inherit all methods that belong to bird into seagull
  def eats_garbage?
    instance_of?(Seagull)
  end

  def beak_size
    @beak + @beak
  end
  class Kiwi < Bird
    attr_accessor :cute

    def initialize(name, wings, legs, beak)
      @name = name
      @wings = false
      @legs = legs
      @beak = beak
      @flies = false
      @feathers = true
      @cute = true
    end
    def opens_shoe_polish_tins?
      instance_of?(Kiwi)
    end
  end
end