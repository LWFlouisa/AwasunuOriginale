require "NeoPathfinding"

def get_statistics(a1, a2, b1, b2, c1, c2)
  a = a1, a2
  b = b1, b2
  c = c1, c2

  matrix = [
    [[a[0], a[0]], [a[0], b[0]], [a[0], c[0]]],
    [[b[0], a[0]], [b[0], b[0]], [b[0], c[0]]],
    [[c[0], a[0]], [c[0], b[0]], [c[0], c[0]]],
  ], [
    [[a[1], a[1]], [a[1], b[1]], [a[1], c[1]]],
    [[b[1], a[1]], [b[1], b[1]], [b[1], c[1]]],
    [[c[1], a[1]], [c[1], b[1]], [c[1], c[1]]],
  ], [
    [[0.50, 0.50], [0.50, 0.50], [0.50, 0.50]],
    [[0.50, 0.50], [0.50, 0.50], [0.50, 0.50]],
    [[0.50, 0.50], [0.50, 0.50], [0.50, 0.50]],
  ]

  label_type       = matrix[0]
  definition_type  = matrix[1]
  probability_type = matrix[2]
  
  row_probability = 0.33
  col_probability = 0.33
  
  graph_selection = row_probability * col_probability

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  current_label       = label_type[cur_row][cur_col][cur_arr]
  current_definition  = definition_type[cur_row][cur_col][cur_arr]
  current_probability = probability_type[cur_row][cur_col][cur_arr] * graph_selection
  
  "I'm confident it is not [ #{current_label} #{current_definition} ] as it has only #{current_probability} probability."
  
  $current_label       = current_label
  $current_definition  = current_definition
  $current_probability = current_probability + current_probability
  $current_information = "#{current_label} #{current_definition}"
end

def reasses
  if $current_probability > 0.999999999999999999
    $current_probability = 0.9 / $current_probability
  end
  
  case $current_probability
  when 0.003921569000000000..0.287225000000000000
    "I'm confident it is not [ #{$current_information} ] because it has #{$current_probability}."
  when 0.287225000000000001..0.522225000000000000
    "I'm less unconfident it is not [ #{$current_information} ] because it has #{$current_probability}."
  when 0.522225000000000001..0.756112500000000000
    "I'm almost sure it is [ #{$current_information} ] because it has #{$current_probability}."
  when 0.756112500000000001..0.999999999999999999
    "I'm sure it is [ #{$current_information} ] because it has #{$current_probability}."
  else
    "The probability is either to low or to large, so I can't determine exactly."
  end
  
  $current_probability = $current_probability + $current_probability
  
  ## Remove the third index so as not to influence the total summation.
  #$factored_probabilities = $factored_probabilities.append($current_probability)
  #$factored_probabilities = $factored_probabilityes.delete(2)
end

def reconsider
  if $current_probability > 0.999999999999999999
    $current_probability = 0.9 / $current_probability
  end

  case $current_probability
  when 0.003921569000000000..0.287225000000000000
    "I'm confident it is not [ #{$current_information} ] because it has #{$current_probability}."
  when 0.287225000000000001..0.522225000000000000
    "I'm less unconfident it is not [ #{$current_information} ] because it has #{$current_probability}."
  when 0.522225000000000001..0.756112500000000000
    "I'm almost sure it is [ #{$current_information} ] because it has #{$current_probability}."
  when 0.756112500000000001..0.999999999999999999
    "I'm sure it is [ #{$current_information} ] because it has #{$current_probability}."
  else
    "The probability is either to low or to large, so I can't determine exactly."
  end
  
  $current_probability = $current_probability * $current_probability
  
  ## Remove the third index so as not to influence the total summation.
  #$factored_probabilities = $factored_probabilities.append($current_probability)
  #$factored_probabilities = $factored_probabilityes.delete(2)
end

def dynamic_reward_allocation
  l1_reasses = "level one reasses"
  l2_reasses = "level two reasses"
  l3_reasses = "level tre reasses"
  l4_reasses = "level fro reasses"

  reward_model = [
    [[l1_reasses, l1_reasses, l1_reasses, l1_reasses],
     [l1_reasses, l1_reasses, l1_reasses, l2_reasses],
     [l1_reasses, l1_reasses, l1_reasses, l3_reasses],
     [l1_reasses, l1_reasses, l1_reasses, l4_reasses]],
   
    [[l2_reasses, l2_reasses, l2_reasses, l1_reasses],
     [l2_reasses, l2_reasses, l2_reasses, l2_reasses],
     [l2_reasses, l2_reasses, l2_reasses, l3_reasses],
     [l2_reasses, l2_reasses, l2_reasses, l4_reasses]],
   
    [[l3_reasses, l3_reasses, l3_reasses, l1_reasses],
     [l3_reasses, l3_reasses, l3_reasses, l2_reasses],
     [l3_reasses, l3_reasses, l3_reasses, l3_reasses],
     [l3_reasses, l3_reasses, l3_reasses, l4_reasses]],
   
    [[l4_reasses, l4_reasses, l4_reasses, l1_reasses],
     [l4_reasses, l4_reasses, l4_reasses, l2_reasses],
     [l4_reasses, l4_reasses, l4_reasses, l3_reasses],
     [l4_reasses, l4_reasses, l4_reasses, l4_reasses]],
  ]

  row_options = [0, 1, 2, 3]
  col_options = [0, 1, 2, 3]
  arr_options = [0, 1, 2, 3]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample

  current_reward_structure = reward_model[cur_row][cur_col][cur_arr]

  if    current_reward_structure == l1_reasses; reasses
  elsif current_reward_structure == l2_reasses; 2.times do reasses end
  elsif current_reward_structure == l3_reasses; 3.times do reasses end
  elsif current_reward_structure == l4_reasses; 4.times do reasses end
  else
    reconsider
  end
end

def dynamic_guillotine_allocation
  l1_reasses = "level one reasses"
  l2_reasses = "level two reasses"
  l3_reasses = "level tre reasses"
  l4_reasses = "level fro reasses"

  reward_model = [
    [[l1_reasses, l1_reasses, l1_reasses, l1_reasses],
     [l1_reasses, l1_reasses, l1_reasses, l2_reasses],
     [l1_reasses, l1_reasses, l1_reasses, l3_reasses],
     [l1_reasses, l1_reasses, l1_reasses, l4_reasses]],
   
    [[l2_reasses, l2_reasses, l2_reasses, l1_reasses],
     [l2_reasses, l2_reasses, l2_reasses, l2_reasses],
     [l2_reasses, l2_reasses, l2_reasses, l3_reasses],
     [l2_reasses, l2_reasses, l2_reasses, l4_reasses]],
   
    [[l3_reasses, l3_reasses, l3_reasses, l1_reasses],
     [l3_reasses, l3_reasses, l3_reasses, l2_reasses],
     [l3_reasses, l3_reasses, l3_reasses, l3_reasses],
     [l3_reasses, l3_reasses, l3_reasses, l4_reasses]],
   
    [[l4_reasses, l4_reasses, l4_reasses, l1_reasses],
     [l4_reasses, l4_reasses, l4_reasses, l2_reasses],
     [l4_reasses, l4_reasses, l4_reasses, l3_reasses],
     [l4_reasses, l4_reasses, l4_reasses, l4_reasses]],
  ]

  row_options = [0, 1, 2, 3]
  col_options = [0, 1, 2, 3]
  arr_options = [0, 1, 2, 3]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample

  current_reward_structure = reward_model[cur_row][cur_col][cur_arr]

  if    current_reward_structure == l1_reasses; reconsider
  elsif current_reward_structure == l2_reasses; 2.times do reconsider end
  elsif current_reward_structure == l3_reasses; 3.times do reconsider end
  elsif current_reward_structure == l4_reasses; 4.times do reconsider end
  else
    reconsider
  end
end

def dynamic_mode_switcher
  modes = [
    [["deposit", "deposit"], ["deposit", "extract"]],
    [["extract", "deposit"], ["extract", "extract"]],
  ]
  
  row_options = [0, 1]
  col_options = [0, 1]
  arr_options = [0, 1]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample

  current_mode = modes[cur_row][cur_col][cur_arr]

  if    current_mode == "deposit"; dynamic_reward_allocation
  elsif current_mode == "extract"; dynamic_guillotine_allocation
  else
    dynamic_guillotine_allocation
  end
end

## That time
def self.sore_float(condition)
  if condition
    yield
    
    return true
  end
  
  false
end

def self.shikashi_float(already_done, condition)
  return true if already_done
  
  if condition
    yield
    
    return true
  end
end

def self.sonota_float(already_done)
  yield unless already_done
  
  unless already_done
    #if defined?($otherwise)
      #puts "#{$otherwise_not[0]} is 'THAT'"
      #puts "#{$otherwise_not[1]} is 'WHAT'"
    #end
  end
end

## A place of many rivers flowing together.
def self.matawa_float(already_done)
  yield unless already_done
  
  unless already_done
    puts "It's not currently known what would happen otherwise."
    
    #if defined?($otherwise)
      #puts "#{$otherwise_not[0]} is 'THAT'"
      #puts "#{$otherwise_not[1]} is 'WHAT'"
    #end
  end
end

def hop_scotch_assistant
  puts "Zombie Hopscotch"
  2.times do
    get_statistics(:throw_stone,                          "This tracks how many stones you've thrown.",
                   :lost_limbs,     "This tracks how many limbs you've lost over time in zombie mode.",
                   :hopped_squares,               "This tracks how many hopped squares you've hopped.")
                 
                   dynamic_reward_allocation
  end

  zombie_hopscotch = [
    [ :throw_stone,                          "This tracks how many stones you've thrown.", 0.00056256300000000 ],
    [ :hopped_squares,               "This tracks how many hopped squares you've hopped.", 0.00516587200000000 ],
    [ :lost_limbs,     "This tracks how many limbs you've lost over time in zombie mode.", 0.10890000000000001 ],
  ]
  
  previous_stone  = ( zombie_hopscotch[0][2] + $current_probability ) / 2
  previous_square = ( zombie_hopscotch[1][2] + $current_probability ) / 2
  previous_limb   = ( zombie_hopscotch[2][2] + $current_probability ) / 2
  
  ## Stone Assistant
  stone_report = sore_float(previous_stone > 0.8) do
    puts "You're great about throwing stone, might want to relax a little: #{zombie_hopscotch[0][1]}"
  end

  stone_report = shikashi_float(stone_report, previous_stone < 0.2) do
    puts "Why are you waiting so long to throw that stone?: #{zombie_hopscotch[0][1]}"
  end

  stone_report = matawa_float(stone_report) do
    puts "Pick up the pace a little bit doc, your killing me over here: #{zombie_hopscotch[0][1]}"
  end

  ## Square Assistant
  square_report = sore_float(previous_square > 0.8) do
    puts "You're great about stepping on squares, might want to relax a little: #{zombie_hopscotch[1][1]}"
  end

  square_report = shikashi_float(square_report, previous_square < 0.2) do
    puts "Hurry and step on the next stop you dusty old corpse: #{zombie_hopscotch[1][1]}"
  end

  square_report = matawa_float(square_report) do
    puts "Pick up the pace a little bit doc, your killing me over here: #{zombie_hopscotch[1][1]}"
  end

  ## Limb Assistant
  limb_report = sore_float(previous_limb > 0.8) do
    puts "Hurry up and break a leg you zombie brained leach: #{zombie_hopscotch[2][1]}"
  end

  limb_report = shikashi_float(limb_report, previous_limb < 0.2) do    
    puts "You're great about losing your limbs, might want to relax a little: #{zombie_hopscotch[2][1]}"
  end

  limb_report = matawa_float(previous_limb) do
    puts "Pick up the pace a little bit doc, your killing me over here: #{zombie_hopscotch[1][1]}"
  end
end

def album_archival
  puts "JPop Album Archical"
  2.times do
    get_statistics(:archive,                                "This predicts whether the player will stab the enemy.",
                   :timeout, "This predicts whether the player will run out of days and hours to archive JPop CDs.",
                   :death,                      "This predicts how likely the player will die from their injuries.")
                 
                   dynamic_reward_allocation
  end

  jpop_album_archical = [
    [ :archive,                                "This predicts whether the player will stab the enemy.", 0.04743684000000000 ],
    [ :timeout, "This predicts whether the player will run out of days and hours to archive JPop CDs.", 0.21780000000000002 ],
    [ :death,                      "This predicts how likely the player will die from their injuries.", 0.00900101500000000 ],
  ]
  
  previous_archive = ( jpop_album_archical[0][2] + $current_probability ) / 2
  previous_timeout = ( jpop_album_archical[1][2] + $current_probability ) / 2
  previous_death   = ( jpop_album_archical[2][2] + $current_probability ) / 2

  ## Archive Status Report
  archive_report = sore_float(previous_archive > 0.8) do
    puts "Hurry up and archive this CD: #{jpop_album_archical[0][1]}"
  end

  archive_report = shikashi_float(archive_report, previous_archive < 0.2) do    
    puts "You're great about losing these albums by letting bandits roll over them: #{jpop_album_archical[0][1]}"
  end

  archive_report = matawa_float(previous_archive) do
    puts "Pick up the pace a little bit doc, your killing me over here: #{jpop_album_archical[0][1]}"
  end
  
  ## Timeline Status Report
  timeline_report = sore_float(previous_archive > 0.8) do
    puts "Hurry up and finish this battle man: #{jpop_album_archical[0][1]}"
  end

  timeline_report = shikashi_float(timeline_report, previous_archive < 0.2) do    
    puts "We're running out of time here, what's taking you?: #{jpop_album_archical[0][1]}"
  end

  timeline_report = matawa_float(previous_archive) do
    puts "Pick up the pace a little bit doc, your killing me over here: #{jpop_album_archical[0][1]}"
  end

  ## Death Status Report
  death_report = sore_float(previous_archive > 0.8) do
    puts "Your doing great about not losing battles unecessarily: #{jpop_album_archical[0][1]}"
  end

  death_report = shikashi_float(death_report, previous_archive < 0.2) do    
    puts "You died once before, you dont want to die again do you?: #{jpop_album_archical[0][1]}"
  end

  death_report = matawa_float(death_report) do
    puts "Remember to use potion so I don't have to resuscitate you: #{jpop_album_archical[0][1]}"
  end
end

def combat_mechanics_logistics
  puts "Combat Mechanics"
  2.times do
    get_statistics(:shoot,      "This predicts whether the player will shoot the enemy.",
                   :steal, "This predicts whether the player will steal from the enemy.",
                   :stab,        "This predicts whether the player will stab the enemy.")
                 
                   dynamic_reward_allocation
  end

  combat_mechanics = [
    [ :stab,        "This predicts whether the player will stab the enemy.", 0.000562563 ],
    [ :steal, "This predicts whether the player will steal from the enemy.", 0.047436840 ],
    [ :shoot,      "This predicts whether the player will shoot the enemy.", 0.435600000 ],
  ]
end

def ship_logistics_assistant       
  puts "Ship Logistics"
  2.times do
     get_statistics(:attack,       "This allows you to defeat enemy ships normally.",
                    :repair_Ship, "Repair your space cruiser when supplies get low.",
                    :kamikaze,        "Self destruct your ship and wait for rescue.")
                  
                    dynamic_reward_allocation
  end
  
  ship_logistics = [
    [ :attack,         "This allows you to defeat enemy ships normally.", 0.0826539500000000 ],
    [ :repair_ship,   "Repair your space cruiser when supplies get low.", 0.0206634880000000 ],
    [ :kamikaze,          "Self destruct your ship and wait for rescue.", 0.8712000000000001 ],
  ]
end

def stranded_logistics
  puts "Stranded Logistics"
  2.times do
    get_statistics(:make_boots,     "Allows the player to make a walkpath out of alien gunmetal.",
                   :healing_cactus,                            "Healing cactus heals the player.",
                   :alien_gunmetal,                   "Collect alien gunmetal to make walkpaths.")
                 
                   dynamic_reward_allocation
  end
  
  stranded_logistics = [
    [ :healing_cactus,                            "Healing cactus heals the player.", 0.00112512700000000 ],
    [ :make_boots,     "Allows the player to make a walkpath out of alien gunmetal.", 0.03600406100000000 ],
    [ :alien_gunmetal,                   "Collect alien gunmetal to make walkpaths.", 0.09487368000000000 ],
  ]
end

hop_scotch_assistant
album_archival
