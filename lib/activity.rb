class Activity
  attr_reader :name, :participants

  def initialize(name)
    @name = name
    @participants = Hash.new(0)
  end

  def add_participant(person, amount)
    @participants[person] = amount
  end

  def total_cost
    @participants.values.sum
  end

  def split
    total_cost / @participants.count
  end

  def owed
    @participants.map { |k, v| [k, split - v] }.to_h
  end
end
