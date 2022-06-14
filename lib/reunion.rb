require_relative 'activity'

class Reunion
  attr_reader :name, :activities

 def initialize(name)
   @name = name
   @activities = []
 end

 def add_activity(activity)
   @activities << activity
 end

 def total_cost
  participants = @activities.map {|activity| activity.total_cost}.reduce(:+)
 end

 def breakout
  activity_costs = @activities.map {|activity| activity.participants}
  combined_costs =  activity_costs.inject{|memo, el| memo.merge( el ){|k, old_v, new_v| old_v + new_v}}
 end
end
