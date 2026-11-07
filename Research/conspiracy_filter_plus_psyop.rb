#Origin Of The Group / Role Of The Leader. 
#The relationship between the leader and followers. 
#The use of persuasion through thought reform. Ex. False consciousness.

def what_neighborhood?(a)
  a
end

# Elevators for retrieving traveling up a location and back down in one motion.
def deux_chemix_ascenseur(a, b, c)
  "an elevator that takes #{a}, from #{b} to #{c} and back to #{b}."
end

## A two way "elevator" that trades files rather than gets rid of them.
def deux_chemix_cinepark(a, b, c, d, e, f)
  new_file1 = a
  new_file2 = b
  
  old_directory1 = c
  old_directory2 = d
  
  new_directory1 = e
  new_directory2 = f
  
  wabisab(a, c, d)
  wabisab(b, e, f)
end

def is_house_deceptive?(a, b)
  "That house is #{a}, is really a construct of #{b}."
end

def show_deception(a, b, c)
  deceptive_houses = [
    [[a, a, a],
     [a, a, b],
     [a, a, c]],

    [[b, b, a],
     [b, b, b],
     [b, b, c]],
   
    [[c, c, a],
     [c, c, b],
     [c, c, c]],
  ]

  #probability_of_endpoint = 0.33 * 0.33 * 0.33

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  d = deceptive_houses[cur_row][cur_col][cur_arr]

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  e = deceptive_houses[cur_row][cur_col][cur_arr]
  
  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  f = deceptive_houses[cur_row][cur_col][cur_arr]

  2.times do
    get_statistics(:first_deception,  d,
                   :second_deception, e,
                   :third_deception,  f)
                   
                   dynamic_reward_allocation
  end
end

def is_entity_anomalous?(a)
  if    a ==   :mundane; print "This entity is mundane. "
  elsif a == :uncertain; print "It is uncertain the nature of this entity. "
  elsif a == :anomalous; print "This entity is possibly anomalous in nature. "
  else
    print "It is uncertain the nature of this entity. "
  end
end

def study_artefacts?(d, e, f)
  a = :object,  d
  b = :subject, e
  c = :verb,    f
  
  g = :mundane, :uncertain, :anomalous
  
  aspects = [
    [[a[0], a[0], a[0]], [a[0], a[0], b[0]], [a[0], a[0], c[0]]],
    [[b[0], b[0], a[0]], [b[0], b[0], b[0]], [b[0], b[0], c[0]]],
    [[c[0], c[0], a[0]], [c[0], c[0], b[0]], [c[0], c[0], c[0]]],
  ], [
    [[a[1], a[1], a[1]], [a[1], a[1], b[1]], [a[1], a[1], c[1]]],
    [[b[1], b[1], a[1]], [b[1], b[1], b[1]], [b[1], b[1], c[1]]],
    [[c[1], c[1], a[1]], [c[1], c[1], b[1]], [c[1], c[1], c[1]]],
  ], [
    [[g[0], g[0], g[0]],
     [g[0], g[0], g[1]],
     [g[0], g[0], g[2]]],

    [[g[1], g[1], g[0]],
     [g[1], g[1], g[1]],
     [g[1], g[1], g[2]]],

    [[g[2], g[2], g[0]],
     [g[2], g[2], g[1]],
     [g[2], g[2], g[2]]],
  ]
  
  symbols      = aspects[0]
  description  = aspects[1]
  nature       = aspects[2]
  
  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  current_symbol      = symbols[cur_row][cur_col][cur_arr] #.strip
  current_description = description[cur_row][cur_col][cur_arr] #.strip
  current_nature      = nature[cur_row][cur_col][cur_arr] #.strip

  $current_nature = current_nature
  
  "#{current_symbol}, #{current_description}"
end

def isolate_feature(a, b, c, d, e, f, g, h, i, j, k, l)
  require "SelfModifiedDecisionTree"
  
  suspicious_houses = RevisedBayes.new(:no_doors,     :one_door,   :two_doors,   :three_doors,   :four_doors),
                      RevisedBayes.new(:no_windows, :one_window, :two_windows, :three_windows, :four_windows),           
                      RevisedBayes.new(:no_garages, :one_garage, :two_garages, :three_garages, :four_garages),
                      RevisedBayes.new(:no_gardens, :one_garden, :two_gardens, :three_gardens, :four_gardens)
                      
  # Isolated Feature Sets
  door_types   = suspicious_houses[0]
  window_types = suspicious_houses[1]
  garage_types = suspicious_houses[2]
  garden_types = suspicious_houses[3]
  
  # Doors
  door_types.train(:no_doors,       "There are no doors on this building.", "no doors")
  door_types.train(:one_door,       "There are one door on this building.", "one door")
  door_types.train(:two_doors,     "There are two doors on this building.", "two doors")
  door_types.train(:three_doors, "There are three doors on this building.", "three doors")
  door_types.train(:four_doors,     "There are no doors on this building.", "four doors")
  
  # Windows
  window_types.train(:no_windows,       "There are no windows on this building.",    "one window")
  window_types.train(:one_window,       "There are one window on this building.",   "two windows")
  window_types.train(:two_windows,     "There are two windows on this building.", "three windows")
  window_types.train(:three_windows, "There are three windows on this building.",  "four windows")
  window_types.train(:four_windows,     "There are no windows on this building.",  "five windows")
  
  # Garage
  garage_types.train(:no_garages,       "There are no garages on this building.",    "no garages")
  garage_types.train(:one_garage,       "There are one garage on this building.",    "one garage")
  garage_types.train(:two_garages,     "There are two garages on this building.",   "two garages")
  garage_types.train(:three_garages, "There are three garages on this building.", "three garages")
  garage_types.train(:four_garages,     "There are no garages on this building.",  "four garages")
  
  # Garden
  garden_types.train(:no_gardens,       "There are no gardens on this building.",    "no gardens")
  garden_types.train(:one_garden,      "There are one garden on this building.",     "one garden")
  garden_types.train(:two_gardens,     "There are two gardens on this building.",   "two gardens")
  garden_types.train(:three_gardens, "There are three gardens on this building.", "three gardens")
  garden_types.train(:four_gardens,     "There are no gardens on this building.",  "four gardens")
  
  ## Classification of features
  d = is_house_deceptive?(a, deux_chemix_ascenseur(b, c, d)) # "mansion" "packages", "entrance", "two way escelator" 
  e = is_house_deceptive?(e, deux_chemix_ascenseur(f, g, h)) #
  f = is_house_deceptive?(i, deux_chemix_ascenseur(j, k, l)) #
  
  d_door_class   = door_types.classify(d)
  d_window_class = window_types.classify(d)
  d_garage_class = garage_types.classify(d)
  d_garden_class = door_types.classify(d)
  
  e_door_class   = door_types.classify(e)
  e_window_class = window_types.classify(e)
  e_garage_class = garage_types.classify(e)
  e_garden_class = door_types.classify(e)
  
  f_door_class   = door_types.classify(f)
  f_window_class = window_types.classify(f)
  f_garage_class = garage_types.classify(f)
  f_garden_class = door_types.classify(f)
  
  print "#{d_door_class} #{d_window_class} #{d_garage_class} #{d_garden_class}"; puts " "
  print "#{e_door_class} #{e_window_class} #{e_garage_class} #{e_garden_class}"; puts " "
  print "#{f_door_class} #{f_window_class} #{f_garage_class} #{f_garden_class}"; puts " "
  
  2.times do
    get_statistics(:first_house,  "#{d_door_class} #{d_window_class} #{d_garage_class} #{d_garden_class}",
                   :second_house, "#{e_door_class} #{e_window_class} #{e_garage_class} #{e_garden_class}",
                   :third_house,  "#{f_door_class} #{f_window_class} #{f_garage_class} #{f_garden_class}")
  
    print "Metaprobability: "
    dynamic_reward_allocation

    get_statistics(:artefact_one, study_artefacts?("door", "wooden",   "locked"),
                   :artefact_two, study_artefacts?("door", "metallic", "locked"),
                   :artefact_tre, study_artefacts?("door", "marble",   "locked"))

    print "Metaprobability: "
    dynamic_reward_allocation
  end
  
  puts "Posible Deceptive Houses"
  puts show_deception(is_house_deceptive?(what_neighborhood?("San Antonio"),     "wood"),
                      is_house_deceptive?(what_neighborhood?("Las Angeles"), "concrete"),
                      is_house_deceptive?(what_neighborhood?("San Diego"),     "baselt"))
end

def gestate_l4(a1, a2, b1, b2, c1, c2, d1, d2)
  a = a1, a2
  b = b1, b2
  c = c1, c2
  d = d1, d2

  matrix = [
    [[a[0], a[0], a[0], a[0]],
     [a[0], a[0], a[0], b[0]],
     [a[0], a[0], a[0], c[0]],
     [a[0], a[0], a[0], d[0]]],

    [[b[0], b[0], b[0], a[0]],
     [b[0], b[0], b[0], b[0]],
     [b[0], b[0], b[0], c[0]],
     [b[0], b[0], b[0], d[0]]],

    [[c[0], c[0], c[0], a[0]],
     [c[0], c[0], c[0], b[0]],
     [c[0], c[0], c[0], c[0]],
     [c[0], c[0], c[0], d[0]]],

    [[d[0], d[0], d[0], a[0]],
     [d[0], d[0], d[0], b[0]],
     [d[0], d[0], d[0], c[0]],
     [d[0], d[0], d[0], d[0]]],
  ], [
    [[a[1], a[1], a[1], a[1]],
     [a[1], a[1], a[1], b[1]],
     [a[1], a[1], a[1], c[1]],
     [a[1], a[1], a[1], d[1]]],

    [[b[1], b[1], b[1], a[1]],
     [b[1], b[1], b[1], b[1]],
     [b[1], b[1], b[1], c[1]],
     [b[1], b[1], b[1], d[1]]],

    [[c[1], c[1], c[1], a[1]],
     [c[1], c[1], c[1], b[1]],
     [c[1], c[1], c[1], c[1]],
     [c[1], c[1], c[1], d[1]]],

    [[d[1], d[1], d[1], a[1]],
     [d[1], d[1], d[1], b[1]],
     [d[1], d[1], d[1], c[1]],
     [d[1], d[1], d[1], d[1]]],
  ], [
    [[0.25, 0.25, 0.25, 0.25],
     [0.25, 0.25, 0.25, 0.25],
     [0.25, 0.25, 0.25, 0.25],
     [0.25, 0.25, 0.25, 0.25]],

    [[0.25, 0.25, 0.25, 0.25],
     [0.25, 0.25, 0.25, 0.25],
     [0.25, 0.25, 0.25, 0.25],
     [0.25, 0.25, 0.25, 0.25]],

    [[0.25, 0.25, 0.25, 0.25],
     [0.25, 0.25, 0.25, 0.25],
     [0.25, 0.25, 0.25, 0.25],
     [0.25, 0.25, 0.25, 0.25]],

    [[0.25, 0.25, 0.25, 0.25],
     [0.25, 0.25, 0.25, 0.25],
     [0.25, 0.25, 0.25, 0.25],
     [0.25, 0.25, 0.25, 0.25]],
  ]

  label_type       = matrix[0]
  definition_type  = matrix[1]
  probability_type = matrix[2]
  
  row_probability = 0.25
  col_probability = 0.25
  
  graph_selection = row_probability * col_probability

  row_options = [0, 1, 2, 3]
  col_options = [0, 1, 2, 3]
  arr_options = [0, 1, 2, 3]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  current_label       = label_type[cur_row][cur_col][cur_arr]
  current_definition  = definition_type[cur_row][cur_col][cur_arr]
  current_probability = probability_type[cur_row][cur_col][cur_arr] * graph_selection
  
  "I'm confident it is not [ #{current_label} #{current_definition} ] as it has only #{current_probability} probability."
  
  $current_probability = current_probability + current_probability
  $current_information = "#{current_label} #{current_definition}"
  
  #$factored_labels        = $factored_labels.append(current_label)
  #$factored_probabilities = $factored_probabilities.append($current_probability)
end

def reasses
  if $current_probability > 0.999999999999999999
    $current_probability = 0.9 / $current_probability
  end
  
  case $current_probability
  when 0.003921569000000000..0.287225000000000000
    puts "I'm confident it is not [ #{$current_information} ] because it has #{$current_probability}."
  when 0.287225000000000001..0.522225000000000000
    puts "I'm less unconfident it is not [ #{$current_information} ] because it has #{$current_probability}."
  when 0.522225000000000001..0.756112500000000000
    puts "I'm almost sure it is [ #{$current_information} ] because it has #{$current_probability}."
  when 0.756112500000000001..0.999999999999999999
    puts "I'm sure it is [ #{$current_information} ] because it has #{$current_probability}."

  else
    puts "The probability is either to low or to large, so I can't determine exactly."
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
    puts "I'm confident it is not [ #{$current_information} ] because it has #{$current_probability}."
  when 0.287225000000000001..0.522225000000000000
    puts "I'm less unconfident it is not [ #{$current_information} ] because it has #{$current_probability}."
  when 0.522225000000000001..0.756112500000000000
    puts "I'm almost sure it is [ #{$current_information} ] because it has #{$current_probability}."
  when 0.756112500000000001..0.999999999999999999
    puts "I'm sure it is [ #{$current_information} ] because it has #{$current_probability}."
  else
    puts "The probability is either to low or to large, so I can't determine exactly."
  end
  
  old_probability      = $current_probability
  $current_probability = $current_probability - 0.0015
  
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

#3.times do
#  gestate_l4(:lure, "is attempted on the main character.",
#             :stun, "is attempted on the main character.",
#             :trap, "is attempted on the main character.",
#             :scan, "is attempted on the main character.")
             
#             dynamic_mode_switcher
#end

require "SelfModifiedDecisionTree"
require "NeoPathfinding"

cult_behaviours = RevisedBayes.new(:decentralized,       :not_decentralized),
                  RevisedBayes.new(:branching,               :not_branching),
                  RevisedBayes.new(:financial_scheme,  :no_financial_scheme),
                  RevisedBayes.new(:abusive_language,  :no_abusive_language),
                  RevisedBayes.new(:harmful_advice,     :not_harmful_advice),
                  RevisedBayes.new(:highly_scheduled, :not_highly_scheduled),
                  RevisedBayes.new(:allows_criticism,  :disallows_criticism),
                  RevisedBayes.new(:delusional,             :non_delusional),
                  RevisedBayes.new(:individualistic,          :collectivist),
                  RevisedBayes.new(:before_1950,
                                   :during_1950,
                                   :before_1960,
                                   :during_1960,
                                   :before_1970,
                                   :during_1970,
                                   :before_1980,
                                   :during_1980,
                                   :before_1990,
                                   :during_1990,
                                   :before_2000,
                                   :during_2000,
                                   :before_2010,
                                   :during_2010,
                                   :current)

conspiracies    = RevisedBayes.new(:paranormal, :supernatural, :technological),
                  RevisedBayes.new(:corporate,                  :governmental),
                  RevisedBayes.new(:before_1950,
                                   :during_1950,
                                   :before_1960,
                                   :during_1960,
                                   :before_1970,
                                   :during_1970,
                                   :before_1980,
                                   :during_1980,
                                   :before_1990,
                                   :during_1990,
                                   :before_2000,
                                   :during_2000,
                                   :before_2010,
                                   :during_2010,
                                   :current)
                  
doll_types = RevisedBayes.new(:some_abnormalcy,     :mild_abnormalcy,   :medium_abnormalcy,   :high_abnormalcy,   :max_abnormalcy),
             RevisedBayes.new(:some_assistance,     :mild_assistance,   :medium_assistance,   :high_assistance,   :max_assistance),
             RevisedBayes.new(:some_anamolous,       :mild_anamolous,    :medium_anamolous,    :high_anamolous,    :max_anamolous),
             RevisedBayes.new(:some_victorian,       :mild_victorian,    :medium_victorian,    :high_victorian,    :max_victorian),
             RevisedBayes.new(:some_connectivity, :mild_connectivity, :medium_connectivity, :high_connectivity, :max_connectivity),
             RevisedBayes.new(:before_1950,
                              :during_1950,
                              :before_1960,
                              :during_1960,
                              :before_1970,
                              :during_1970,
                              :before_1980,
                              :during_1980,
                              :before_1990,
                              :during_1990,
                              :before_2000,
                              :during_2000,
                              :before_2010,
                              :during_2010,
                              :current)
                              
psyop_test = RevisedBayes.new(:attention_hijacked, :attention_not_hijacked),  # Why is this message pushed so aggressively?
             RevisedBayes.new(:expert_panelist,        :no_expert_panelist),  # Why are they speaking outside their expertise?
             RevisedBayes.new(:polarizing_message,  :no_polarizing_message),  # Why is the message so divisive?
             RevisedBayes.new(:strong_emotions,        :no_strong_emotions),  # Why are they using emotions to manipulate?
             RevisedBayes.new(:potential_novelty,    :no_potential_novelty),
             RevisedBayes.new(:singular_source,          :multiple_sources),
             RevisedBayes.new(:microagreements,        :no_micreagreements),
             RevisedBayes.new(:limited_resources,    :no_limited_resources),
             RevisedBayes.new(:societal_rejection,  :no_societal_rejection),  # Indicating possible relationship with cult like dynamics
             RevisedBayes.new(:sponcered,                     :unsponcered),
             RevisedBayes.new(:shifting_context,      :no_shifting_context),
             RevisedBayes.new(:archetype_use,            :no_archetype_use),
             RevisedBayes.new(:before_1950,
                              :during_1950,
                              :before_1960,
                              :during_1960,
                              :before_1970,
                              :during_1970,
                              :before_1980,
                              :during_1980,
                              :before_1990,
                              :during_1990,
                              :before_2000,
                              :during_2000,
                              :before_2010,
                              :during_2010,
                              :current)
                              
## Cult Classification
governance     = cult_behaviours[0]
nature_of_node = cult_behaviours[1]
financial      = cult_behaviours[2]
brainwashing   = cult_behaviours[3]
mentoring      = cult_behaviours[4]
isolation      = cult_behaviours[5]
criticism      = cult_behaviours[6]
delusions      = cult_behaviours[7]
individuality  = cult_behaviours[8]
cult_period    = cult_behaviours[9]

### Governance
governance.train(:decentralized,                                                  "Its more like a type of group, united under a common goal, but without a clear leader.",     "decentralized")
governance.train(:not_decentralized,                                     "There is one all powerful leader that accept zero criticism, with absolute zero accountability.", "not decentralized")

### Nature Of Node
nature_of_node.train(:branching,      "With one common ancestor, broke into multiple sects, but with each dependant on the structural integrity of their parent.",     "branching")
nature_of_node.train(:not_branching, "Its more like a type of group, united under a common goal, but without a clear leader.", "not branching")

### Financial Scheme
financial.train(:financial_scheme,    "Will often lure people into the group in order to extract money and wealth from them.",    "financial scheme")
financial.train(:no_financial_scheme,    "The leader is not parsonally a fan of physical money, and rarely accept donations.", "no financial scheme")

### Brainwashing
brainwashing.train(:abusive_language,    "You're sick a dickhead Pete",   "abusive language.")
brainwashing.train(:no_abusive_language, "I like your slick tye Pete.", "no abusive language")

### Mentoring
mentoring.train(:harmful_advice, "You should consider eating copper to remove your autism.",    "harmful advice")
mentoring.train(:not_harmful_advice, "You should avoid crossing the road before you cross.", "no harmful advice")

### Isolation
isolation.train(:highly_scheduled,     "I want you to work twenty four seven by washing this old wooden chair.",     "highly scheduled")
isolation.train(:not_highly_scheduled,             "Just remember to come in on Sundays, and sign these forms.", "not highly scheduled")

### Criticism
criticism.train(:allows_criticism,    "What new things have you learned about me? And what can I improve?",    "allows criticism")
criticism.train(:disallows_criticism,               "I'm not all that interested in what you think of me.", "disallows criticism")

### Delusions
delusions.train(:delusional,     "Aliens gave me the power to climb skyscrapers, and I can make you climb skyscrapers.",     "delusional")
delusions.train(:non_delusional,                        "I wouldn't cross that train train until after the cars go by.", "not delusional")

### Individuality
individuality.train(:individualistic, "You and I are completely different people, and have unique values.", "individualist")
individuality.train(:collectivist,       "We all have a specific goal when it comes to the common good.",  "collectivist")

### Cult Period
cult_period.train(:before_1950, "This group was founded before 1950.", "before 1950")
cult_period.train(:during_1950,   "This group was founded after 1950.",  "after 1950")
cult_period.train(:before_1960, "This group was founded before 1960.", "before 1960")
cult_period.train(:during_1960,   "This group was founded after 1960.",  "after 1960")
cult_period.train(:before_1970, "This group was founded before 1970.", "before 1970")
cult_period.train(:during_1970,   "This group was founded after 1970.",  "after 1970")
cult_period.train(:before_1980, "This group was founded before 1980.", "before 1980")
cult_period.train(:during_1980,   "This group was founded after 1980.",  "after 1980")
cult_period.train(:before_1990, "This group was founded before 1990.", "before 1990")
cult_period.train(:during_1990,   "This group was founded after 1990.",  "after 1990")
cult_period.train(:before_2000, "This group was founded before 2000.", "before 2000")
cult_period.train(:during_2000,   "This group was founded after 2000.",  "after 2000")
cult_period.train(:before_2010, "This group was founded before 2010.", "before 2010")
cult_period.train(:during_2010,   "This group was founded after 2010.",  "after 2010")

## Conspiracy Classification
phenominon    = conspiracies[0]
congovernance = conspiracies[1]
conperiod     = conspiracies[2]

### Phenominon
phenominon.train(:paranormal,       "I think I'm seeing light in the sky.",    "paranormal")
phenominon.train(:supernatural,  "I think I'm seeing ghosts in the house.",  "supernatural")
phenominon.train(:technological,     "I have here an orb from the future.", "technological")

## Conspiracy Governance
congovernance.train(:corporate,    "Works for a seniour executive within a private organization not accountable to the constitution.",    "corporate")
congovernance.train(:governmental,           "Was key in auctioning off an island between the US and Mexico in disputed territories.", "governmental")

### Conspiracy Period
conperiod.train(:before_1950, "This group was founded before 1950.", "before 1950")
conperiod.train(:during_1950,   "This group was founded after 1950.",  "after 1950")
conperiod.train(:before_1960, "This group was founded before 1960.", "before 1960")
conperiod.train(:during_1960,   "This group was founded after 1960.",  "after 1960")
conperiod.train(:before_1970, "This group was founded before 1970.", "before 1970")
conperiod.train(:during_1970,   "This group was founded after 1970.",  "after 1970")
conperiod.train(:before_1980, "This group was founded before 1980.", "before 1980")
conperiod.train(:during_1980,   "This group was founded after 1980.",  "after 1980")
conperiod.train(:before_1990, "This group was founded before 1990.", "before 1990")
conperiod.train(:during_1990,   "This group was founded after 1990.",  "after 1990")
conperiod.train(:before_2000, "This group was founded before 2000.", "before 2000")
conperiod.train(:during_2000,   "This group was founded after 2000.",  "after 2000")
conperiod.train(:before_2010, "This group was founded before 2010.", "before 2010")
conperiod.train(:during_2010,   "This group was founded after 2010.",  "after 2010")

## Doll Type Classification
doll_abnormalcy   = doll_types[0]
doll_assistance   = doll_types[1]
doll_anomalous    = doll_types[2]
doll_victorian    = doll_types[3]
doll_connectivity = doll_types[4]
doll_era          = doll_types[5]

### Doll Normalcy
doll_abnormalcy.train(:some_abnormalcy,       "The doll appears as if there is nothing strange about it.",   "some normalcy")
doll_abnormalcy.train(:mild_abnormalcy,                  "The doll seems to have unusually colored hair.",   "mild normalcy")
doll_abnormalcy.train(:medium_abnormalcy, "The doll has a mostly normal face, except for one purple eye.", "medium normalcy")
doll_abnormalcy.train(:high_abnormalcy,       "The doll has a purple glowing arm, and bright green eyes.",   "high normalcy")
doll_abnormalcy.train(:max_abnormalcy,             "The doll has multiple heads, making it look montrous",    "max normalcy")

### Doll Assistance
doll_assistance.train(:some_assistance,     "The doll requires that you plant chia seeds in order to grow its hair.",   "some assistance")
doll_assistance.train(:mild_assistance,   "The doll is known require seeds that are hard to find for lower classes.",   "mild assistance")
doll_assistance.train(:medium_assistance,              "The doll requires different seeds for dresses and its hair.", "medium assistance")
doll_assistance.train(:high_assistance,     "The doll enjoys rather intricate dresses made of daises and hemp cloth",   "high assistance")
doll_assistance.train(:max_assistance,                    "The doll not practical to upkeep for the normal person..",    "max assistance")

### Doll Victorian
doll_victorian.train(:some_victorian,     "The doll is wearing wooden shoes, yet nothing else out of this century.",   "some victorian")
doll_victorian.train(:mild_victorian,     "The doll likes to sing nursery rhyme disconnected from the current era.",   "mild victorian")
doll_victorian.train(:medium_victorian, "The doll is wearing wooden shoes, a nightgown that could be from any era.", "medium victorian")
doll_victorian.train(:high_victorian,             "The doll wears wooden shoes and a bow, but not Victorian dress.",   "high victorian")
doll_victorian.train(:max_victorian,               "Wears a 19th century dress, a pair of wooden shoes, and a bow.",    "max victorian")

### Doll Victorian
doll_anomalous.train(:some_anamolous,       "The doll is able to stand up on its own, without being propped on a bookshelf.",   "some anomalous")
doll_anomalous.train(:mild_anamolous,           "The doll is known to have moving eyes similar to Michaelangelos paintings.",   "mild anomalous")
doll_anomalous.train(:medium_anamolous, "The doll will sometimes show up in the room, and yet other times be in the closet.", "medium anomalous")
doll_anomalous.train(:high_anamolous,                                  "The doll can be heard giggling through the hallway.",   "high anomalous")
doll_anomalous.train(:max_anamolous,                                     "The doll contorts its body and floats in the air.",    "max anomalous")

### Doll Connectivity
doll_connectivity.train(:some_connectivity,   "The doll has no electrical components, do to the period of which it was made.",   "some connectivity")
doll_connectivity.train(:mild_connectivity,           "The door has a slot in its neck that allows someone to connect to it.",   "mild connectivity")
doll_connectivity.train(:medium_connectivity,   "The doll is sitting on a bookshelf connected to a fake book with an outlet.", "medium connectivity")
doll_connectivity.train(:high_connectivity,             "The doll is connected to a hidden server that sends data somewhere.",   "high connectivity")
doll_connectivity.train(:max_connectivity,           "The doll is computer to multiple computers in a decentralized network.",    "max connectivity")

### Doll Period
doll_era.train(:before_1950, "This group was founded before 1950.", "before 1950")
doll_era.train(:during_1950,   "This group was founded after 1950.",  "after 1950")
doll_era.train(:before_1960, "This group was founded before 1960.", "before 1960")
doll_era.train(:during_1960,   "This group was founded after 1960.",  "after 1960")
doll_era.train(:before_1970, "This group was founded before 1970.", "before 1970")
doll_era.train(:during_1970,   "This group was founded after 1970.",  "after 1970")
doll_era.train(:before_1980, "This group was founded before 1980.", "before 1980")
doll_era.train(:during_1980,   "This group was founded after 1980.",  "after 1980")
doll_era.train(:before_1990, "This group was founded before 1990.", "before 1990")
doll_era.train(:during_1990,   "This group was founded after 1990.",  "after 1990")
doll_era.train(:before_2000, "This group was founded before 2000.", "before 2000")
doll_era.train(:during_2000,   "This group was founded after 2000.",  "after 2000")
doll_era.train(:before_2010, "This group was founded before 2010.", "before 2010")
doll_era.train(:during_2010,   "This group was founded after 2010.",  "after 2010")

# Psyop Test
attention_hijacked = psyop_test[0]
expert_panelists   = psyop_test[1]
polarizing_message = psyop_test[2]
strong_emotions    = psyop_test[3]
potential_novelty  = psyop_test[4]
singular_source    = psyop_test[5]
microagreements    = psyop_test[6]
limited_resources  = psyop_test[7]
societal_rejection = psyop_test[8]
sponcerships       = psyop_test[9]
shifting_context   = psyop_test[10]
archetype_usage    = psyop_test[11]
psyop_period       = psyop_test[12]

## Attention Hijacking
attention_hijacked.train(:attention_hijacked, "That really captures your attention.", "clickbait")
attention_hijacked.train(:attention_not_hijacked, "That's not worth paying attention to.", "not clickbait")

## Expert Panelists
expert_panelists.train(:expert_panelist,    "That segment had a lot of questionable people claiming expertise.",     "experts")
expert_panelists.train(:no_expert_panelist,          "That segment did not have anyone claiming any expertise.",  "no experts")

## Polarizing Message
polarizing_message.train(:polarizing_message,                     "Not to divide the fanbase.",     "division")
polarizing_message.train(:no_polarizing_message, "Fanbase seems to be in unanimous agreement.",  "no division")

# Classifications
document   = File.readlines("_trivia/information.txt")
size_limit = document.size.to_i
index = 0

size_limit.times do

  ## Cult classifications
  gov_class = governance.classify(document[index])
  nat_class = nature_of_node.classify(document[index])
  fin_class = financial.classify(document[index])
  bin_class = brainwashing.classify(document[index])
  men_class = mentoring.classify(document[index])
  iso_class = isolation.classify(document[index])
  cri_class = criticism.classify(document[index])
  del_class = delusions.classify(document[index])
  ind_class = individuality.classify(document[index])
  
  ## Con
  phclass = phenominon.classify(document[index])
  congovn = congovernance.classify(document[index])
  conperi = conperiod.classify(document[index])
  
  ## Doll classification
  dolnom = doll_abnormalcy.classify(document[index])
  dolass = doll_assistance.classify(document[index])
  dolvic = doll_victorian.classify(document[index])
  dolano = doll_anomalous.classify(document[index])
  dolcon = doll_connectivity.classify(document[index])
  dolera = doll_era.classify(document[index])

  ## Psyop Classification
  attention_hijacked_classification = attention_hijacked.classify(document[index])
  expert_panelists_classification   = expert_panelists.classify(document[index])
  polarizing_message_classification = polarizing_message.classify(document[index])

  #strong_emotions_classification    = strong_emotions.classify(document[index])
  #potential_novelty_classification  = potential_novelty.classify(document[index])
  #singular_source_classification    = singular_source.classify(document[index])

  #microagreement_classification     = microagreements.classify(document[index])
  #limited_resources_classifications = limited_resources.classify(document[index])
  #societal_rejection_classification = societal_rejection.classify(document[index])

  #sponcership_classification        = sponcerships.classify(document[index])
  #shifting_context_classification   = shifting_context.classify(document[index])
  #archetype_usage_classification    = archetype_usage.classify(document[index])
  
  #psycho_period_classification      = psyop_period.classify(document[index])
  
  gestate_l4(:gov_class, "This is classified as #{gov_class[0]} for a probability of #{gov_class[1]}",
             :nat_class, "This is classified as #{nat_class[0]} for a probability of #{nat_class[1]}",
             :fin_class, "This is classified as #{fin_class[0]} for a probability of #{fin_class[1]}",
             :bin_class, "This is classified as #{bin_class[0]} for a probability of #{bin_class[1]}")

  dynamic_reward_allocation

             
  gestate_l4(:men_class, "This is classified as #{men_class[0]} for a probability of #{men_class[1]}",
             :iso_class, "This is classified as #{iso_class[0]} for a probability of #{iso_class[1]}",
             :cri_class, "This is classified as #{cri_class[0]} for a probability of #{cri_class[1]}",
             :del_class, "This is classified as #{del_class[0]} for a probability of #{del_class[1]}")

  dynamic_reward_allocation

             
  gestate_l4(:ind_class, "This is classified as #{ind_class[0]} for a probability of #{ind_class[1]}",
             :phclass,       "This is classified as #{phclass[0]} for a probability of #{phclass[1]}",
             :congovn,       "This is classified as #{congovn[0]} for a probability of #{congovn[1]}",
             :conperi,       "This is classified as #{conperi[0]} for a probability of #{conperi[1]}")

  dynamic_reward_allocation

  
  ## Doll Analyses
  gestate_l4(:dolnom, "This is classified as #{dolnom[0]} for a probability of #{dolnom[1]}",
             :dolass, "This is classified as #{dolass[0]} for a probability of #{dolass[1]}",
             :dolvic, "This is classified as #{dolvic[0]} for a probability of #{dolvic[1]}",
             :dolano, "This is classified as #{dolano[0]} for a probability of #{dolano[1]}")

  dynamic_reward_allocation

             
  gestate_l4(:dolcon,             "This is classified as #{dolcon[0]} for a probability of #{dolcon[1]}",
             :dolera,             "This is classified as #{dolera[0]} for a probability of #{dolera[1]}",
             :attention_hijacked, "This is classified as #{attention_hijacked_classification[0]} for a probability of #{attention_hijacked_classification[1]}",
             :expert_panelists,   "This is classified as #{expert_panelists_classification[0]} for a probability of #{expert_panelists_classification[1]}")
             #:polarizing_message, "This is classified as #{polarizing_message_classification[0]} for a probability of #{polarizing_message_classification[1]}")

  dynamic_reward_allocation
end

puts "ISOLATING FEATURES..."
isolate_feature("google 1",        "gemini", "entrance", "two way escelator",
                "microsoft 2",     "openAI", "entrance", "two way escelator",
                "anthropic 3", "perplexity", "entrance", "two way escelator")
