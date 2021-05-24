class Character
  attr_accessor :name, :hp, :defence
  def initialize(name:, hp:, offence:, defence:)
    @name = name
    @hp = hp
    @offence = offence
    @defence = defence
  end
end