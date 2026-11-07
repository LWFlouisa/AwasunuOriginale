# Blue-Collar Gothic
# cette (The Mask): When Hemato performs an execution, she might have to assign a value to her "Mask" to survive the trauma.
# maisette (The Violence): The physical act of the execution.
# sinon (The Reality): The quiet moments as a woman, perhaps while siphoning essence to maintain her own transition/body.

require "NeoPathfinding"

a = File.read("lib/data/world/rooms/albumroom.txt")
b = File.read("lib/data/world/rooms/bedroom.txt")
c = File.read("lib/data/world/rooms/garage.txt")
d = File.read("lib/data/world/rooms/hallway.txt")
e = File.read("lib/data/world/rooms/kitchen.txt")
f = File.read("lib/data/world/rooms/laundry.txt")
g = File.read("lib/data/world/rooms/livingroom.txt")
h = File.read("lib/data/world/rooms/room_list.txt")

puts "Primary Hub"
2.times do
  get_statistics(:albumroom, "\n#{a}",
                 :bedroom,   "\n#{b}",
                 :garage,    "\n#{c}")
                 
                 dynamic_reward_allocation
                 thresholding($current_probability, 12, 12)
end

puts "Secondary Hub"
2.times do
  get_statistics(:hallway, "\n#{d}",
                 :kitchen, "\n#{e}",
                 :laundry, "\n#{f}")
                 
                 dynamic_reward_allocation
                 thresholding($current_probability, 12, 12)
end

puts "Points Of Interest"
2.times do
  get_statistics(:livingroom, "\n#{g}",
                 :albumroom,  "\n#{d}",
                 :kitchen,    "\n#{e}")
                 
                 dynamic_reward_allocation
                 thresholding($current_probability, 12, 12)
end
