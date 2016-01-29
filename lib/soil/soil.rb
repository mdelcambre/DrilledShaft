class Soil

  attr_accessor :metric
  attr_accessor :submerged

  # heavy lifter of the soil attributes.
  # define getters and setters for a given name.
  def add_attribute(name, eng, conv, met)
    instance_variable_set("@#{name}", false)
    define_singleton_method(name) do
      if @metric
        return (instance_variable_get("@#{name}") * 1.0) * conv
      else
        return instance_variable_get("@#{name}")
      end
    end
    define_singleton_method("#{name}_unit") do
      @metric ? met : eng
    end
    define_singleton_method("#{name}=") do |value|
      if @metric
        return instance_variable_set("@#{name}", (1.0 * value) / conv)
      else
        return instance_variable_set("@#{name}", (1.0 * value))
      end
    end
  end

  def initialize
    @metric = false
    self.add_attribute :uw, :pcf, 2, 'kN/m^3'
  end


end
