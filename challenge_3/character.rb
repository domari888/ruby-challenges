class Character
  attr_accessor :hp
  attr_reader :name, :defence
  def initialize(name:, hp:, offence:, defence:)
    @name = name
    @hp = hp
    @offence = offence
    @defence = defence
  end
end