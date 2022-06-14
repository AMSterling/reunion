require './lib/activity'
require './lib/reunion'

RSpec.describe Reunion do
  it 'exists' do
    reunion = Reunion.new('1406 BE')

    expect(reunion).to be_a Reunion
  end

  it 'has a name' do
    reunion = Reunion.new('1406 BE')

    expect(reunion.name).to eq('1406 BE')
  end

    it 'lists activities' do
      reunion = Reunion.new('1406 BE')
      activity_1 = Activity.new("Brunch")

      expect(reunion.activities).to eq([])

      reunion.add_activity(activity_1)

      expect(reunion.activities).to eq([activity_1])
    end

    it 'can calculate how much each participant owes' do
      reunion = Reunion.new('1406 BE')
      activity_1 = Activity.new("Brunch")
      activity_2 = Activity.new("Drinks")

      reunion.add_activity(activity_1)

      activity_1.add_participant("Maria", 20)
      activity_1.add_participant("Luther", 40)

      expect(reunion.total_cost).to eq(60)

      reunion.add_activity(activity_2)

      activity_2.add_participant("Maria", 60)
      activity_2.add_participant("Luther", 60)
      activity_2.add_participant("Louis", 0)

      expect(reunion.total_cost).to eq(180)
    end

    xit 'is a breakout of what is owed' do
      reunion = Reunion.new('1406 BE')
      activity_1 = Activity.new("Brunch")
      activity_2 = Activity.new("Drinks")

      reunion.add_activity(activity_1)

      activity_1.add_participant("Maria", 20)
      activity_1.add_participant("Luther", 40)

      reunion.add_activity(activity_2)

      activity_2.add_participant("Maria", 60)
      activity_2.add_participant("Luther", 60)
      activity_2.add_participant("Louis", 0)

      expect(reunion.breakout).to eq({"Maria" => -10, "Luther" => -30, "Louis" => 40})
    end
end
