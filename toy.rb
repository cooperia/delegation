class Toy
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def toy
    @toy ||= Object.const_get(name).new
  end

  #Delegation part....
  def age
    toy.age
  end

  def place_of_origin
    toy.place_of_origin
  end
end

class Woody
  def age
    10
  end

  def place_of_origin
    "U.S.A."
  end
end

class Buzz
  def age
    1
  end

  def place_of_origin
    "China"
  end
end

class Rex
  def age
    8
  end

  def place_of_origin
    "Japan"
  end
end