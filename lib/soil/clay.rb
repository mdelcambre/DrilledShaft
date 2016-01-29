require 'soil'

class Clay << Soil
  def initialize
    @metric = false
    self.add_attribute :uw, :pcf, 0.1571, 'kN/m^3'
    self.add_attribute :su, :psf, 0.04788025889, :kPa
    self.add_attribute :phi, :deg, 1, :deg
    self.add_attribute :c, :psf, 0.04788025889, :kPa

  end
end
