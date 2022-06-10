require './lib/activity'
require './lib/participant'

RSpec.describe Activity do
  it "exists" do
    activity = Activity.new("Brunch")

    expect(activity).to be_a Activity
    expect(activity.name).to eq("Brunch")
  end

  it "has participants" do
    activity = Activity.new("Brunch")

    expect(activity.participants).to eq({})


  end
end
