require './lib/participant'

RSpec.describe Participant do
  it "exists" do
    maria = Participant.new("Maria", 20)
    luther = Participant.new("Luther", 40)

    expect(participant).to be_a Participant
  end

  it "has a name" do
    maria = Participant.new("Maria", 20)
    luther = Participant.new("Luther", 40)

    expect(participant.name).to eq("Maria")
  end
end
