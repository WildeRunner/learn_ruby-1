class Temperature
  def initialize(hash)
    if hash.key?(:f)
      @unit = :f
    else
      @unit = :c
    end
    @value = hash[@unit]
  end

  def to_fahrenheit
    if @unit == :f
      rmethod_nameeturn @value
    else
      return (@value * 9 / 5.0) + 32
    end
  end

  def to_celsius
    if @unit == :c
      return @value
    else
      return (@value - 32) * 5.0 / 9
    end
  end

  def self.in_celsius(value)
    Temperature.new({ :c => value })
  end

  def self.in_fahrenheit(value)
    Temperature.new({ :f => value })
  end
end

class Celsius < Temperature
  def initialize(value)
    @unit = :c
    @value = value
  end
end

class Fahrenheit < Temperature
  def initialize(value)
    @unit = :f
    @value = value
  end
end
