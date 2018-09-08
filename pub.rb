class Pub

  attr_reader :name, :till, :drinks

  def initialize(name, till, drinks)
    @name = name
    @till = till
# why can't I just pass the array @drinks = []
    @drinks = drinks

  end
end
