require "NeoPathfinding"

def quantiffirm(p, q, probability)
  case probability
  when 0.00010..0.1250
    "#{p} therefore #{q} is false."
  when 0.1251..0.3625
    "#{p} therefore #{q} is largely false."
  when 0.3626..0.5125
    "#{p} therefore #{q} is partially true."
  when 0.5126..0.7563
    "#{p} therefore #{q} is largely true."
  when 0.7564..0.9999
    "#{p} therefore #{q} is true."
  else
    "#{p} therefore #{q} is not quantifiable."
  end
end

def etudevaluate(a1, a2, b1, b2, c1, c2, x, y)
  2.times do
    get_statistics(:first_word,  graviteformee(a1, a2),
                   :second_word, graviteformee(b1, b2),
                   :third_word,  graviteformee(c1, c2))

                   dynamic_reward_allocation
                   dynamic_reward_allocation

    cognitive_threshold = 100
    probability         = 0.9 / $current_probability
    odds                = probability / ( 1 - probability )
    charted_assessment  = cognitive_threshold * probability
    
    size_of_map_y = x
    size_of_map_x = y
    
    map_cognitive_y = ( size_of_map_y * charted_assessment ) % size_of_map_y
    map_cognitive_x = ( size_of_map_x * charted_assessment ) % size_of_map_x
  
    puts "\nLEARNING ASSESSMENT"
    puts "The current map size is: #{x} by #{y}"
    puts "The current cognitive threshold is #{cognitive_threshold}"
    puts "The current probability is #{probability}"
    puts "The current odds of learning this word is #{odds}"
    puts "The current assessment of learning ability is #{charted_assessment}"
    puts "Therefore the approximate location of cognitive loading is the tile of #{map_cognitive_y} and #{map_cognitive_x}."
    puts quantiffirm("The cognitive threshold is #{cognitive_threshold}", "the approximate location of cognitive loading is the tile of #{map_cognitive_y} and #{map_cognitive_x}", probability)
    
    puts " "
  end
end

def risk_factor(risk)
  case risk
  when 0.750..1.000; print "Maximum Risk"; puts quantiffirm(": Such activities carry Maximum Risk", "this activity probably has Maximum risk", risk)
  when 0.500..0.749; print "High Risk";    puts quantiffirm(": Such activities carry High Risk", "this activity probably has High risk",    risk)
  when 0.250..0.499; print "Medium Risk";  puts quantiffirm(": Such activities carry Medium Risk", "this activity probably has Medium risk",  risk)
  when 0.125..0.249; print "Mild Risk";    puts quantiffirm(": Such activities carry Mild Risk", "this activity probably has Mild risk",    risk)
  when 0.010..0.124; print "Minimal Risk"; puts quantiffirm(": Such activities carry Minimal Risk", "this activity probably has Minimal risk", risk)
  else
    puts "The risk factor is unquantifiable."
  end
end

def thresholding(a, y, x)
  cognitive_threshold = 100
  probability         = a
  odds                = probability / ( 1 - probability )
  charted_assessment  = cognitive_threshold * probability
    
  size_of_map_y = y
  size_of_map_x = x
    
  map_cognitive_y = ( size_of_map_y * charted_assessment ) % size_of_map_y
  map_cognitive_x = ( size_of_map_x * charted_assessment ) % size_of_map_x
  
  puts "LEARNING ASSESSMENT"
  puts "The current map size is: #{x} by #{y}"
  puts "The current cognitive threshold is #{cognitive_threshold}"
  #puts "The current probability is #{probability}"
  puts "The current odds of learning this word is #{odds}"
  #puts "The current assessment of learning ability is #{charted_assessment}"
  puts "Therefore the approximate location of cognitive loading is the tile of #{map_cognitive_y.to_i} and #{map_cognitive_x.to_i}."
  puts quantiffirm("The cognitive threshold is #{cognitive_threshold}", "the approximate location of cognitive loading is the tile of #{map_cognitive_y} and #{map_cognitive_x}", probability)  
  puts " "
end

def get_edge_cases(a1, a2, b1, b2, c1, c2, d1, d2, e1, e2, f1, f2)
  a = a1, a2 
  b = b1, b2
  c = c1, c2
  d = d1, d2
  e = e1, e2
  f = f1, f2

  edges_cases = [
    [ a[0], e[0], b[0], d[0], f[0], c[0] ],
    [ e[0], b[0], d[0], f[0], c[0], a[0] ],
    [ b[0], d[0], f[0], c[0], a[0], e[0] ],
    [ d[0], f[0], c[0], a[0], e[0], b[0] ],
    [ f[0], c[0], a[0], b[0], d[0], e[0] ],
    [ c[0], a[0], e[0], b[0], d[0], f[0] ],
  ], [
    [ a[1], e[1], b[1], d[1], f[1], c[1] ],
    [ e[1], b[1], d[1], f[1], c[1], a[1] ],
    [ b[1], d[1], f[1], c[1], a[1], e[1] ],
    [ d[1], f[1], c[1], a[1], e[1], b[1] ],
    [ f[1], c[1], a[1], b[1], d[1], e[1] ],
    [ c[1], a[1], e[1], b[1], d[1], f[1] ],
  ]
  
  symbols      = edges_cases[0]
  descriptions = edges_cases[1]

  row_options = [0, 1, 2, 3, 4, 5]
  col_options = [0, 1, 2, 3, 4, 5]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  
  first_symbol      = symbols[cur_row][cur_col] #[cur_arr]
  first_description = descriptions[cur_row][cur_col] #[cur_arr]

  cur_row = row_options.sample
  cur_col = col_options.sample
  #cur_arr = arr_options.sample
  
  second_symbol      = symbols[cur_row][cur_col] #[cur_arr]
  second_description = descriptions[cur_row][cur_col] #[cur_arr]

  cur_row = row_options.sample
  cur_col = col_options.sample
  #cur_arr = arr_options.sample
  
  third_symbol      = symbols[cur_row][cur_col] #[cur_arr]
  third_description = descriptions[cur_row][cur_col] #[cur_arr]
  
  2.times do
    get_statistics(first_symbol,  first_description,
                   second_symbol, second_description,
                   third_symbol,  third_description)
                   
                   dynamic_reward_allocation
  end
end

#def vous_decide_tresor(a)
#  require "SelfModifiedDecisionTree"
  
#  input = a.to_f
  
#  attributes = ["Treasure"]
  
#  training = [
#    [0.002250254,              "Low Success Rate"],
#    [0.219487691,             "Mild Success Rate"],
#    [0.436725127,           "Medium Success Rate"],
#    [0.653962564,             "High Success Rate"],
#    [0.87120000000000010, "Immenent Success Rate"],
#  ]
  
#  dec_tree_configurations = DecisionTree::ID3Tree.new(attributes, training, 1, :continuous)

#  current_dectree1 = dec_tree_configurations
#  current_dectree1.train

#  test1 = [input,       "Medium Danger"]

  ## Sesne I got rid of decision trees data marshalling, I have to reassign last tests.
  #last_first_decision  = test1[1]

#  decision1 = current_dectree1.predict(test1) # This being Alberts contribution
  
#  puts "Loot success rate is #{decision1}."
#end

#def vous_decide_poison(a)
#  require "SelfModifiedDecisionTree"
  
#  input = a.to_f
  
#  attributes = ["Hazards"]
  
#  training = [
#    [0.002250254,              "Low Hazard"],
#    [0.219487691,             "Mild Hazard"],
#    [0.436725127,           "Medium Hazard"],
#    [0.653962564,             "High Hazard"],
#    [0.87120000000000010, "Immenent Hazard"],
#  ]
  
#  dec_tree_configurations = DecisionTree::ID3Tree.new(attributes, training, 1, :continuous)

#  current_dectree1 = dec_tree_configurations
#  current_dectree1.train

#  test1 = [input,       "Medium Hazard"]

  ## Sesne I got rid of decision trees data marshalling, I have to reassign last tests.
  #last_first_decision  = test1[1]

#  decision1 = current_dectree1.predict(test1) # This being Alberts contribution
  
#  puts "Loot success rate is #{decision1}."
#end

#def vous_decide_monstre(a)
#  require "SelfModifiedDecisionTree"
#
#  input = a.to_f
#  
#  attributes = ["Monsters"], ["Traps"], ["Loot"]
#
#  training = [
#    [0.002250254,              "Low Danger"],
#    [0.219487691,             "Mild Danger"],
#    [0.436725127,           "Medium Danger"],
#    [0.653962564,             "High Danger"],
#    [0.87120000000000010, "Immenent Danger"],
#  ]
#  
#  dec_tree_configurations = DecisionTree::ID3Tree.new(attributes, training, 1, :continuous)
#
#  current_dectree1 = dec_tree_configurations
#  current_dectree1.train
#
#  test1 = [input]
#
#  ## Sesne I got rid of decision trees data marshalling, I have to reassign last tests.
#  #last_first_decision  = test1[1]
#
#  decision1 = current_dectree1.predict(test1) # This being Alberts contribution
#  
#  puts "Monster Danger is #{decision1}."
#end

def standard_dialogue
  ## The Call
  ##           la pomme  la banane  le granit
  ## la pomme  p,p       p,b        p,g
  ## la banane b,p       b,b        b,g
  ## le grenit g,p       g,b        g,g

  gendered_nouns_set1      = [
    [["Cette pomme",  "Cette pomme"], ["Cette pomme",  "Cette banane"], ["Cette pomme",  "Cette granit"]],
    [["Cette banane", "Cette pomme"], ["Cette banane", "Cette banane"], ["Cette banane", "Cette granit"]],
    [["Cette granit", "Cette pomme"], ["Cette granit", "Cette banane"], ["Cette granit", "Cette granit"]],
  ]

  gns1_row_options = [0, 1, 2]
  gns1_col_options = [0, 1, 2]
  gns1_arr_options = [0, 1]

  gns1_cur_row = gns1_row_options.sample
  gns1_cur_col = gns1_col_options.sample
  gns1_cur_arr = gns1_arr_options.sample

  gns1 = gendered_nouns_set1[gns1_cur_row][gns1_cur_col][gns1_cur_arr]

  #        rouge jaune violet
  # rouge  r,r   r,j   r,v
  # jaune  j,r   j,j   j,v
  # violet v,r   v,j   v,v

  adjectives_set1          = [
    [["rouge",  "rouge"], ["rouge",  "jaune"], ["rouge",  "violet"]],
    [["jaune",  "rouge"], ["jaune",  "jaune"], ["jaune",  "violet"]],
    [["violet", "rouge"], ["violet", "jaune"], ["violet", "violet"]],
  ]

  as1_row_options = [0, 1, 2]
  as1_col_options = [0, 1, 2]
  as1_arr_options = [0, 1]

  as1_cur_row = as1_row_options.sample
  as1_cur_col = as1_col_options.sample
  as1_cur_arr = as1_arr_options.sample

  as1 = adjectives_set1[as1_cur_row][as1_cur_col][as1_cur_arr]

  #              je mange  je ne mange je jute  je ne jute
  # je mange     jm, jm    jm, jnm     jm, jj   jm,jnj
  # je ne mange  jnm, jm   jnm, jnm    jnm, jj  jnm, jnj
  # je jute      jj, jm    jj, jnm     jj, jj   jj, jnj
  # je ne jute   jnj, jm   jnj, jnm    jnj, jj  jnj, jnj

  subjective_verbs_set1    = [
    [ ["Je mange",    "Je mange"], ["Je mange",    "Je ne mange"], ["Je mange",    "Je jute"], ["Je mange",    "Je ne jute"]],
    [ ["Je ne mange", "Je mange"], ["Je ne mange", "Je ne mange"], ["Je ne mange", "Je jute"], ["Je ne mange", "Je ne jute"]],
    [ ["Je jute",     "Je mange"], ["Je jute",     "Je ne mange"], ["Je jute",     "Je jute"], ["Je jute",     "Je ne jute"]],
    [ ["Je ne jute",  "Je mange"], ["Je ne jute",  "Je ne mange"], ["Je ne jute",  "Je jute"], ["Je ne jute",  "Je ne jute"]],
  ]

  svs1_row_options = [0, 1, 2, 3]
  svs1_col_options = [0, 1, 2, 3]
  svs1_arr_options = [0, 1]

  svs1_cur_row = svs1_row_options.sample
  svs1_cur_col = svs1_col_options.sample
  svs1_cur_arr = svs1_arr_options.sample

  svs1 = subjective_verbs_set1[svs1_cur_row][svs1_cur_col][svs1_cur_arr]

  #            lentiment quicely
  # lentement  l,l       l,q
  # quicely    q,l       q,q

  adverb_punctuation_set1  = [
    [["lentement,", "lentement,"], ["lentement,", "quicely,"]],
    [["quicely,",   "lentement,"], ["quicely,",   "quicely,"]],
  ]

  aps1_row_options = [0, 1]
  aps1_col_options = [0, 1]
  aps1_arr_options = [0, 1]

  aps1_cur_row = aps1_row_options.sample
  aps1_cur_col = aps1_col_options.sample
  aps1_cur_arr = aps1_arr_options.sample

  aps1 = adverb_punctuation_set1[aps1_cur_row][aps1_cur_col][aps1_cur_arr]

  ## The Responce
  gendered_nouns_set2      = [
    [["mais cette pomme",        "mais cette pomme"], ["mais cette pomme",  "mais cette banane"], ["mais cette pomme",  "mais cette granit"]],
    [["mais cette la banane", "mais cette la pomme"], ["mais cette banane", "mais cette banane"], ["mais cette banane", "mais cette granit"]],
    [["mais cette le granit", "mais cette la pomme"], ["mais cette granit", "mais cette banane"], ["mais cette granit", "mais cette granit"]],
  ]

  gns2_row_options = [0, 1, 2]
  gns2_col_options = [0, 1, 2]
  gns2_arr_options = [0, 1]

  gns2_cur_row = gns2_row_options.sample
  gns2_cur_col = gns2_col_options.sample
  gns2_cur_arr = gns2_arr_options.sample

  gns2 = gendered_nouns_set2[gns2_cur_row][gns2_cur_col][gns2_cur_arr]

  adjectives_set2          = [
    [["rouge",  "rouge"], ["rouge",  "jaune"], ["rouge",  "violet"]],
    [["jaune",  "rouge"], ["jaune",  "jaune"], ["jaune",  "violet"]],
    [["violet", "rouge"], ["violet", "jaune"], ["violet", "violet"]],
  ]

  as2_row_options = [0, 1, 2]
  as2_col_options = [0, 1, 2]
  as2_arr_options = [0, 1]

  as2_cur_row = as2_row_options.sample
  as2_cur_col = as2_col_options.sample
  as2_cur_arr = as2_arr_options.sample

  as2 = adjectives_set2[as2_cur_row][as2_cur_col][as2_cur_arr]

  subjective_verbs_set2    = [
    [["Je mange",    "Je mange"], ["Je mange",    "Je ne mange"], ["Je mange",    "Je jute"], ["Je mange",    "Je ne jute"]],
    [["Je ne mange", "Je mange"], ["Je ne mange", "Je ne mange"], ["Je ne mange", "Je jute"], ["Je ne mange", "Je ne jute"]],
    [["Je jute",     "Je mange"], ["Je jute",     "Je ne mange"], ["Je jute",     "Je jute"], ["Je jute",     "Je ne jute"]],
    [["Je ne jute",  "Je mange"], ["Je ne jute",  "Je ne mange"], ["Je ne jute",  "Je jute"], ["Je ne jute",  "Je ne jute"]],
  ]

  svs2_row_options = [0, 1, 2, 3]
  svs2_col_options = [0, 1, 2, 3]
  svs2_arr_options = [0, 1]

  svs2_cur_row = svs2_row_options.sample
  svs2_cur_col = svs2_col_options.sample
  svs2_cur_arr = svs2_arr_options.sample

  svs2 = subjective_verbs_set2[svs2_cur_row][svs2_cur_col][svs2_cur_arr]

  adverb_punctuation_set2 = [
    [["lentement.", "lentement."], ["lentement.", "quicely."]],
    [["quicely.",   "lentement."], ["quicely.",   "quicely."]],
  ]

  aps2_row_options = [0, 1]
  aps2_col_options = [0, 1]
  aps2_arr_options = [0, 1]

  aps2_cur_row = aps2_row_options.sample
  aps2_cur_col = aps2_col_options.sample
  aps2_cur_arr = aps2_arr_options.sample

  aps2 = adverb_punctuation_set2[aps2_cur_row][aps2_cur_col][aps2_cur_arr]

  ## Generates the actual training data.
  phrase = "#{gns1} #{as1} #{svs1} #{aps1} #{gns2} #{as2} #{svs2} #{aps2}"

  phrase
end

def parle_nous(a, b, c)
  h = :statement_one, a
  i = :statement_two, b
  j = :statement_tre, c
  
  statements = [
    [[h[0], h[0], h[0]], [h[0], h[0], i[0]], [h[0], h[0], j[0]]],
    [[i[0], i[0], h[0]], [i[0], i[0], i[0]], [i[0], i[0], j[0]]],
    [[j[0], j[0], h[0]], [j[0], j[0], i[0]], [j[0], j[0], j[0]]],
  ], [
    [[h[1], h[1], h[1]], [h[1], h[1], i[1]], [h[1], h[1], j[1]]],
    [[i[1], i[1], h[1]], [i[1], i[1], i[1]], [i[1], i[1], j[1]]],
    [[j[1], j[1], h[1]], [j[1], j[1], i[1]], [j[1], j[1], j[1]]],
  ]
  
  parle_symbol      = statements[0]
  parle_description = statements[1]
  
  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  first_symbol      = parle_symbol[cur_row][cur_col][cur_arr]
  first_description = parle_description[cur_row][cur_col][cur_arr]

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  second_symbol      = parle_symbol[cur_row][cur_col][cur_arr]
  second_description = parle_description[cur_row][cur_col][cur_arr]

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  third_symbol      = parle_symbol[cur_row][cur_col][cur_arr]
  third_description = parle_description[cur_row][cur_col][cur_arr]

  2.times do
    get_statistics(first_symbol, first_description,
                   second_symbol, second_description,
                   third_symbol, third_description)
                   
                   dynamic_reward_allocation
                   dynamic_reward_allocation
  end
end

def lunar_predictions(a, b, c, d, e, f, g, h)
  new_moon        = :new_moon,        a
  waxing_crescent = :waxing_crescent, b
  first_quarter   = :first_quarter,   c
  waxing_gibbous  = :waxing_gibbous,  d
  full_moon       = :full_moon,       e
  waning_gibbous  = :waning_gibbous,  f
  last_quarter    = :last_quarter,    g
  waning_crescent = :waning_crescent, h
  
  lunar_phases = [
    [[ new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0],        new_moon[0] ],
     [ new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], waxing_crescent[0] ],
     [ new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0],   first_quarter[0] ],
     [ new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0],  waxing_gibbous[0] ],
     [ new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0],       full_moon[0] ],
     [ new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0],  waning_gibbous[0] ],
     [ new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0],    last_quarter[0] ],
     [ new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], waning_crescent[0] ]],
     
    [[ waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0],        new_moon[0] ],
     [ waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0] ],
     [ waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0],   first_quarter[0] ],
     [ waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0],  waxing_gibbous[0] ],
     [ waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0],       full_moon[0] ],
     [ waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0],  waning_gibbous[0] ],
     [ waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0],    last_quarter[0] ],
     [ waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waning_crescent[0] ]],

    [[ first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0],        new_moon[0] ],
     [ first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], waxing_crescent[0] ],
     [ first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0],   first_quarter[0] ],
     [ first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0],  waxing_gibbous[0] ],
     [ first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0],       full_moon[0] ],
     [ first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0],  waning_gibbous[0] ],
     [ first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0],    last_quarter[0] ],
     [ first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], waning_crescent[0] ]],

    [[ waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0],        new_moon[0] ],
     [ waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_crescent[0] ],
     [ waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0],   first_quarter[0] ],
     [ waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0],  waxing_gibbous[0] ],
     [ waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0],       full_moon[0] ],
     [ waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0],  waning_gibbous[0] ],
     [ waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0],    last_quarter[0] ],
     [ waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waning_crescent[0] ]],

    [[ full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0],        new_moon[0] ],
     [ full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], waxing_crescent[0] ],
     [ full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0],   first_quarter[0] ],
     [ full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0],  waxing_gibbous[0] ],
     [ full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0],       full_moon[0] ],
     [ full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0],  waning_gibbous[0] ],
     [ full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0],    last_quarter[0] ],
     [ full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], waning_crescent[0] ]],

    [[ waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0],        new_moon[0] ],
     [ waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waxing_crescent[0] ],
     [ waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0],   first_quarter[0] ],
     [ waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0],  waxing_gibbous[0] ],
     [ waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0],       full_moon[0] ],
     [ waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0],  waning_gibbous[0] ],
     [ waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0],    last_quarter[0] ],
     [ waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_crescent[0] ]],

    [[ last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0],        new_moon[0] ],
     [ last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], waxing_crescent[0] ],
     [ last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0],   first_quarter[0] ],
     [ last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0],  waxing_gibbous[0] ],
     [ last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0],       full_moon[0] ],
     [ last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0],  waning_gibbous[0] ],
     [ last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0],    last_quarter[0] ],
     [ last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], waning_crescent[0] ]],

    [[ waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0],        new_moon[0] ],
     [ waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waxing_crescent[0] ],
     [ waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0],   first_quarter[0] ],
     [ waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0],  waxing_gibbous[0] ],
     [ waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0],       full_moon[0] ],
     [ waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0],  waning_gibbous[0] ],
     [ waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0],    last_quarter[0] ],
     [ waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0] ]],
  ], [
    [[ new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1],        new_moon[1] ],
     [ new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], waxing_crescent[1] ],
     [ new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1],   first_quarter[1] ],
     [ new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1],  waxing_gibbous[1] ],
     [ new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1],       full_moon[1] ],
     [ new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1],  waning_gibbous[1] ],
     [ new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1],    last_quarter[1] ],
     [ new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], waning_crescent[1] ]],
     
    [[ waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1],        new_moon[1] ],
     [ waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1] ],
     [ waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1],   first_quarter[1] ],
     [ waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1],  waxing_gibbous[1] ],
     [ waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1],       full_moon[1] ],
     [ waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1],  waning_gibbous[1] ],
     [ waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1],    last_quarter[1] ],
     [ waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waning_crescent[1] ]],

    [[ first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1],        new_moon[1] ],
     [ first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], waxing_crescent[1] ],
     [ first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1],   first_quarter[1] ],
     [ first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1],  waxing_gibbous[1] ],
     [ first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1],       full_moon[1] ],
     [ first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1],  waning_gibbous[1] ],
     [ first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1],    last_quarter[1] ],
     [ first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], waning_crescent[1] ]],

    [[ waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1],        new_moon[1] ],
     [ waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_crescent[1] ],
     [ waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1],   first_quarter[1] ],
     [ waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1],  waxing_gibbous[1] ],
     [ waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1],       full_moon[1] ],
     [ waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1],  waning_gibbous[1] ],
     [ waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1],    last_quarter[1] ],
     [ waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waning_crescent[1] ]],

    [[ full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1],        new_moon[1] ],
     [ full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], waxing_crescent[1] ],
     [ full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1],   first_quarter[1] ],
     [ full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1],  waxing_gibbous[1] ],
     [ full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1],       full_moon[1] ],
     [ full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1],  waning_gibbous[1] ],
     [ full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1],    last_quarter[1] ],
     [ full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], waning_crescent[1] ]],

    [[ waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1],        new_moon[1] ],
     [ waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waxing_crescent[1] ],
     [ waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1],   first_quarter[1] ],
     [ waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1],  waxing_gibbous[1] ],
     [ waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1],       full_moon[1] ],
     [ waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1],  waning_gibbous[1] ],
     [ waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1],    last_quarter[1] ],
     [ waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_crescent[1] ]],

    [[ last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1],        new_moon[1] ],
     [ last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], waxing_crescent[1] ],
     [ last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1],   first_quarter[1] ],
     [ last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1],  waxing_gibbous[1] ],
     [ last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1],       full_moon[1] ],
     [ last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1],  waning_gibbous[1] ],
     [ last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1],    last_quarter[1] ],
     [ last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], waning_crescent[1] ]],

    [[ waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1],        new_moon[1] ],
     [ waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waxing_crescent[1] ],
     [ waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1],   first_quarter[1] ],
     [ waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1],  waxing_gibbous[1] ],
     [ waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1],       full_moon[1] ],
     [ waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1],  waning_gibbous[1] ],
     [ waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1],    last_quarter[1] ],
     [ waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1] ]],
  ]
  
  lunar_labels       = lunar_phases[0]
  lunar_descriptions = lunar_phases[1]
  
  row_options = [0, 1, 2, 3, 4, 5, 6, 7]
  col_options = [0, 1, 2, 3, 4, 5, 6, 7]
  arr_options = [0, 1, 2, 3, 4, 5, 6, 7]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  first_lunar_label       = lunar_labels[cur_row][cur_col][cur_arr]
  first_lunar_description = lunar_descriptions[cur_row][cur_col][cur_arr]

  row_options = [0, 1, 2, 3, 4, 5, 6, 7]
  col_options = [0, 1, 2, 3, 4, 5, 6, 7]
  arr_options = [0, 1, 2, 3, 4, 5, 6, 7]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  second_lunar_label       = lunar_labels[cur_row][cur_col][cur_arr]
  second_lunar_description = lunar_descriptions[cur_row][cur_col][cur_arr]
  
  row_options = [0, 1, 2, 3, 4, 5, 6, 7]
  col_options = [0, 1, 2, 3, 4, 5, 6, 7]
  arr_options = [0, 1, 2, 3, 4, 5, 6, 7]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  third_lunar_label       = lunar_labels[cur_row][cur_col][cur_arr]
  third_lunar_description = lunar_descriptions[cur_row][cur_col][cur_arr]
  
  2.times do
    get_statistics(first_lunar_label,  first_lunar_description,
                   second_lunar_label, second_lunar_description,
                   third_lunar_label,  third_lunar_description)
                   
                   dynamic_reward_allocation
                   #dynamic_reward_allocation
                   #dynamic_reward_allocation
                   #dynamic_reward_allocation
  end

  puts "\n"
  #vous_decide($current_probability)
end

def lunair_de_oublie(a, b, c, d, e, f, g, h)
  new_moon        = :new_moon,        a
  waxing_crescent = :waxing_crescent, b
  first_quarter   = :first_quarter,   c
  waxing_gibbous  = :waxing_gibbous,  d
  full_moon       = :full_moon,       e
  waning_gibbous  = :waning_gibbous,  f
  last_quarter    = :last_quarter,    g
  waning_crescent = :waning_crescent, h
  
  lunar_phases = [
    [[ new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0],        new_moon[0] ],
     [ new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], waxing_crescent[0] ],
     [ new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0],   first_quarter[0] ],
     [ new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0],  waxing_gibbous[0] ],
     [ new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0],       full_moon[0] ],
     [ new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0],  waning_gibbous[0] ],
     [ new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0],    last_quarter[0] ],
     [ new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], waning_crescent[0] ]],
     
    [[ waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0],        new_moon[0] ],
     [ waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0] ],
     [ waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0],   first_quarter[0] ],
     [ waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0],  waxing_gibbous[0] ],
     [ waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0],       full_moon[0] ],
     [ waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0],  waning_gibbous[0] ],
     [ waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0],    last_quarter[0] ],
     [ waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waning_crescent[0] ]],

    [[ first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0],        new_moon[0] ],
     [ first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], waxing_crescent[0] ],
     [ first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0],   first_quarter[0] ],
     [ first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0],  waxing_gibbous[0] ],
     [ first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0],       full_moon[0] ],
     [ first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0],  waning_gibbous[0] ],
     [ first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0],    last_quarter[0] ],
     [ first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], waning_crescent[0] ]],

    [[ waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0],        new_moon[0] ],
     [ waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_crescent[0] ],
     [ waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0],   first_quarter[0] ],
     [ waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0],  waxing_gibbous[0] ],
     [ waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0],       full_moon[0] ],
     [ waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0],  waning_gibbous[0] ],
     [ waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0],    last_quarter[0] ],
     [ waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waning_crescent[0] ]],

    [[ full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0],        new_moon[0] ],
     [ full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], waxing_crescent[0] ],
     [ full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0],   first_quarter[0] ],
     [ full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0],  waxing_gibbous[0] ],
     [ full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0],       full_moon[0] ],
     [ full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0],  waning_gibbous[0] ],
     [ full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0],    last_quarter[0] ],
     [ full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], waning_crescent[0] ]],

    [[ waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0],        new_moon[0] ],
     [ waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waxing_crescent[0] ],
     [ waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0],   first_quarter[0] ],
     [ waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0],  waxing_gibbous[0] ],
     [ waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0],       full_moon[0] ],
     [ waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0],  waning_gibbous[0] ],
     [ waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0],    last_quarter[0] ],
     [ waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_crescent[0] ]],

    [[ last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0],        new_moon[0] ],
     [ last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], waxing_crescent[0] ],
     [ last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0],   first_quarter[0] ],
     [ last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0],  waxing_gibbous[0] ],
     [ last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0],       full_moon[0] ],
     [ last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0],  waning_gibbous[0] ],
     [ last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0],    last_quarter[0] ],
     [ last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], waning_crescent[0] ]],

    [[ waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0],        new_moon[0] ],
     [ waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waxing_crescent[0] ],
     [ waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0],   first_quarter[0] ],
     [ waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0],  waxing_gibbous[0] ],
     [ waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0],       full_moon[0] ],
     [ waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0],  waning_gibbous[0] ],
     [ waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0],    last_quarter[0] ],
     [ waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0] ]],
  ], [
    [[ new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1],        new_moon[1] ],
     [ new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], waxing_crescent[1] ],
     [ new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1],   first_quarter[1] ],
     [ new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1],  waxing_gibbous[1] ],
     [ new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1],       full_moon[1] ],
     [ new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1],  waning_gibbous[1] ],
     [ new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1],    last_quarter[1] ],
     [ new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], waning_crescent[1] ]],
     
    [[ waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1],        new_moon[1] ],
     [ waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1] ],
     [ waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1],   first_quarter[1] ],
     [ waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1],  waxing_gibbous[1] ],
     [ waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1],       full_moon[1] ],
     [ waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1],  waning_gibbous[1] ],
     [ waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1],    last_quarter[1] ],
     [ waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waning_crescent[1] ]],

    [[ first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1],        new_moon[1] ],
     [ first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], waxing_crescent[1] ],
     [ first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1],   first_quarter[1] ],
     [ first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1],  waxing_gibbous[1] ],
     [ first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1],       full_moon[1] ],
     [ first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1],  waning_gibbous[1] ],
     [ first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1],    last_quarter[1] ],
     [ first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], waning_crescent[1] ]],

    [[ waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1],        new_moon[1] ],
     [ waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_crescent[1] ],
     [ waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1],   first_quarter[1] ],
     [ waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1],  waxing_gibbous[1] ],
     [ waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1],       full_moon[1] ],
     [ waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1],  waning_gibbous[1] ],
     [ waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1],    last_quarter[1] ],
     [ waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waning_crescent[1] ]],

    [[ full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1],        new_moon[1] ],
     [ full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], waxing_crescent[1] ],
     [ full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1],   first_quarter[1] ],
     [ full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1],  waxing_gibbous[1] ],
     [ full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1],       full_moon[1] ],
     [ full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1],  waning_gibbous[1] ],
     [ full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1],    last_quarter[1] ],
     [ full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], waning_crescent[1] ]],

    [[ waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1],        new_moon[1] ],
     [ waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waxing_crescent[1] ],
     [ waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1],   first_quarter[1] ],
     [ waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1],  waxing_gibbous[1] ],
     [ waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1],       full_moon[1] ],
     [ waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1],  waning_gibbous[1] ],
     [ waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1],    last_quarter[1] ],
     [ waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_crescent[1] ]],

    [[ last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1],        new_moon[1] ],
     [ last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], waxing_crescent[1] ],
     [ last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1],   first_quarter[1] ],
     [ last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1],  waxing_gibbous[1] ],
     [ last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1],       full_moon[1] ],
     [ last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1],  waning_gibbous[1] ],
     [ last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1],    last_quarter[1] ],
     [ last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], waning_crescent[1] ]],

    [[ waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1],        new_moon[1] ],
     [ waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waxing_crescent[1] ],
     [ waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1],   first_quarter[1] ],
     [ waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1],  waxing_gibbous[1] ],
     [ waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1],       full_moon[1] ],
     [ waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1],  waning_gibbous[1] ],
     [ waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1],    last_quarter[1] ],
     [ waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1] ]],
  ]
  
  lunar_labels       = lunar_phases[0]
  lunar_descriptions = lunar_phases[1]
  
  row_options = [0, 1, 2, 3, 4, 5, 6, 7]
  col_options = [0, 1, 2, 3, 4, 5, 6, 7]
  arr_options = [0, 1, 2, 3, 4, 5, 6, 7]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  first_lunar_label       = lunar_labels[cur_row][cur_col][cur_arr]
  first_lunar_description = lunar_descriptions[cur_row][cur_col][cur_arr]

  row_options = [0, 1, 2, 3, 4, 5, 6, 7]
  col_options = [0, 1, 2, 3, 4, 5, 6, 7]
  arr_options = [0, 1, 2, 3, 4, 5, 6, 7]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  second_lunar_label       = lunar_labels[cur_row][cur_col][cur_arr]
  second_lunar_description = lunar_descriptions[cur_row][cur_col][cur_arr]
  
  row_options = [0, 1, 2, 3, 4, 5, 6, 7]
  col_options = [0, 1, 2, 3, 4, 5, 6, 7]
  arr_options = [0, 1, 2, 3, 4, 5, 6, 7]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  third_lunar_label       = lunar_labels[cur_row][cur_col][cur_arr]
  third_lunar_description = lunar_descriptions[cur_row][cur_col][cur_arr]
  
  2.times do
    get_statistics(first_lunar_label,   sabofensu(first_lunar_description),
                   second_lunar_label, sabofensu(second_lunar_description),
                   third_lunar_label,   sabofensu(third_lunar_description))
                   
                   dynamic_reward_allocation
  end
end

def lunair_impacts(a, b, c, d, e, f, g, h)
  new_moon        = :new_moon,        a
  waxing_crescent = :waxing_crescent, b
  first_quarter   = :first_quarter,   c
  waxing_gibbous  = :waxing_gibbous,  d
  full_moon       = :full_moon,       e
  waning_gibbous  = :waning_gibbous,  f
  last_quarter    = :last_quarter,    g
  waning_crescent = :waning_crescent, h
  
  lunar_phases = [
    [[ new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0],        new_moon[0] ],
     [ new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], waxing_crescent[0] ],
     [ new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0],   first_quarter[0] ],
     [ new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0],  waxing_gibbous[0] ],
     [ new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0],       full_moon[0] ],
     [ new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0],  waning_gibbous[0] ],
     [ new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0],    last_quarter[0] ],
     [ new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], new_moon[0], waning_crescent[0] ]],
     
    [[ waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0],        new_moon[0] ],
     [ waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0] ],
     [ waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0],   first_quarter[0] ],
     [ waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0],  waxing_gibbous[0] ],
     [ waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0],       full_moon[0] ],
     [ waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0],  waning_gibbous[0] ],
     [ waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0],    last_quarter[0] ],
     [ waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waxing_crescent[0], waning_crescent[0] ]],

    [[ first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0],        new_moon[0] ],
     [ first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], waxing_crescent[0] ],
     [ first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0],   first_quarter[0] ],
     [ first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0],  waxing_gibbous[0] ],
     [ first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0],       full_moon[0] ],
     [ first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0],  waning_gibbous[0] ],
     [ first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0],    last_quarter[0] ],
     [ first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], first_quarter[0], waning_crescent[0] ]],

    [[ waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0],        new_moon[0] ],
     [ waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_crescent[0] ],
     [ waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0],   first_quarter[0] ],
     [ waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0],  waxing_gibbous[0] ],
     [ waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0],       full_moon[0] ],
     [ waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0],  waning_gibbous[0] ],
     [ waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0],    last_quarter[0] ],
     [ waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waxing_gibbous[0], waning_crescent[0] ]],

    [[ full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0],        new_moon[0] ],
     [ full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], waxing_crescent[0] ],
     [ full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0],   first_quarter[0] ],
     [ full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0],  waxing_gibbous[0] ],
     [ full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0],       full_moon[0] ],
     [ full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0],  waning_gibbous[0] ],
     [ full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0],    last_quarter[0] ],
     [ full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], full_moon[0], waning_crescent[0] ]],

    [[ waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0],        new_moon[0] ],
     [ waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waxing_crescent[0] ],
     [ waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0],   first_quarter[0] ],
     [ waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0],  waxing_gibbous[0] ],
     [ waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0],       full_moon[0] ],
     [ waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0],  waning_gibbous[0] ],
     [ waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0],    last_quarter[0] ],
     [ waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_gibbous[0], waning_crescent[0] ]],

    [[ last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0],        new_moon[0] ],
     [ last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], waxing_crescent[0] ],
     [ last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0],   first_quarter[0] ],
     [ last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0],  waxing_gibbous[0] ],
     [ last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0],       full_moon[0] ],
     [ last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0],  waning_gibbous[0] ],
     [ last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0],    last_quarter[0] ],
     [ last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], last_quarter[0], waning_crescent[0] ]],

    [[ waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0],        new_moon[0] ],
     [ waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waxing_crescent[0] ],
     [ waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0],   first_quarter[0] ],
     [ waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0],  waxing_gibbous[0] ],
     [ waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0],       full_moon[0] ],
     [ waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0],  waning_gibbous[0] ],
     [ waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0],    last_quarter[0] ],
     [ waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0], waning_crescent[0] ]],
  ], [
    [[ new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1],        new_moon[1] ],
     [ new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], waxing_crescent[1] ],
     [ new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1],   first_quarter[1] ],
     [ new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1],  waxing_gibbous[1] ],
     [ new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1],       full_moon[1] ],
     [ new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1],  waning_gibbous[1] ],
     [ new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1],    last_quarter[1] ],
     [ new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], new_moon[1], waning_crescent[1] ]],
     
    [[ waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1],        new_moon[1] ],
     [ waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1] ],
     [ waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1],   first_quarter[1] ],
     [ waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1],  waxing_gibbous[1] ],
     [ waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1],       full_moon[1] ],
     [ waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1],  waning_gibbous[1] ],
     [ waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1],    last_quarter[1] ],
     [ waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waxing_crescent[1], waning_crescent[1] ]],

    [[ first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1],        new_moon[1] ],
     [ first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], waxing_crescent[1] ],
     [ first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1],   first_quarter[1] ],
     [ first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1],  waxing_gibbous[1] ],
     [ first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1],       full_moon[1] ],
     [ first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1],  waning_gibbous[1] ],
     [ first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1],    last_quarter[1] ],
     [ first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], first_quarter[1], waning_crescent[1] ]],

    [[ waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1],        new_moon[1] ],
     [ waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_crescent[1] ],
     [ waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1],   first_quarter[1] ],
     [ waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1],  waxing_gibbous[1] ],
     [ waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1],       full_moon[1] ],
     [ waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1],  waning_gibbous[1] ],
     [ waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1],    last_quarter[1] ],
     [ waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waxing_gibbous[1], waning_crescent[1] ]],

    [[ full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1],        new_moon[1] ],
     [ full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], waxing_crescent[1] ],
     [ full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1],   first_quarter[1] ],
     [ full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1],  waxing_gibbous[1] ],
     [ full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1],       full_moon[1] ],
     [ full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1],  waning_gibbous[1] ],
     [ full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1],    last_quarter[1] ],
     [ full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], full_moon[1], waning_crescent[1] ]],

    [[ waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1],        new_moon[1] ],
     [ waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waxing_crescent[1] ],
     [ waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1],   first_quarter[1] ],
     [ waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1],  waxing_gibbous[1] ],
     [ waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1],       full_moon[1] ],
     [ waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1],  waning_gibbous[1] ],
     [ waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1],    last_quarter[1] ],
     [ waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_gibbous[1], waning_crescent[1] ]],

    [[ last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1],        new_moon[1] ],
     [ last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], waxing_crescent[1] ],
     [ last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1],   first_quarter[1] ],
     [ last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1],  waxing_gibbous[1] ],
     [ last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1],       full_moon[1] ],
     [ last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1],  waning_gibbous[1] ],
     [ last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1],    last_quarter[1] ],
     [ last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], last_quarter[1], waning_crescent[1] ]],

    [[ waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1],        new_moon[1] ],
     [ waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waxing_crescent[1] ],
     [ waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1],   first_quarter[1] ],
     [ waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1],  waxing_gibbous[1] ],
     [ waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1],       full_moon[1] ],
     [ waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1],  waning_gibbous[1] ],
     [ waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1],    last_quarter[1] ],
     [ waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1], waning_crescent[1] ]],
  ]
  
  lunar_labels       = lunar_phases[0]
  lunar_descriptions = lunar_phases[1]
  
  row_options = [0, 1, 2, 3, 4, 5, 6, 7]
  col_options = [0, 1, 2, 3, 4, 5, 6, 7]
  arr_options = [0, 1, 2, 3, 4, 5, 6, 7]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  first_lunar_label       = lunar_labels[cur_row][cur_col][cur_arr]
  first_lunar_description = lunar_descriptions[cur_row][cur_col][cur_arr]

  row_options = [0, 1, 2, 3, 4, 5, 6, 7]
  col_options = [0, 1, 2, 3, 4, 5, 6, 7]
  arr_options = [0, 1, 2, 3, 4, 5, 6, 7]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  second_lunar_label       = lunar_labels[cur_row][cur_col][cur_arr]
  second_lunar_description = lunar_descriptions[cur_row][cur_col][cur_arr]
  
  row_options = [0, 1, 2, 3, 4, 5, 6, 7]
  col_options = [0, 1, 2, 3, 4, 5, 6, 7]
  arr_options = [0, 1, 2, 3, 4, 5, 6, 7]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  third_lunar_label       = lunar_labels[cur_row][cur_col][cur_arr]
  third_lunar_description = lunar_descriptions[cur_row][cur_col][cur_arr]
  
  2.times do
    get_statistics(first_lunar_label,   nesabofensu(first_lunar_description),
                   second_lunar_label, nesabofensu(second_lunar_description),
                   third_lunar_label,   nesabofensu(third_lunar_description))
                   
                   dynamic_reward_allocation
  end
end

def encounter_rate(a, b, c, d, e)
  require "SelfModifiedDecisionTree"

  sea_gargoyals  = :sea_gargoyal,   a
  acid_dragon    = :acid_dragon,    b
  acid_serpent   = :acid_serpent,   c
  traitorous_nun = :traitorous_nun, d
  cthulhu        = :cthulhu,        e
  
  monsters_encounters = [
    [[sea_gargoyals[0], sea_gargoyals[0], sea_gargoyals[0], sea_gargoyals[0],  sea_gargoyals[0]],
     [sea_gargoyals[0], sea_gargoyals[0], sea_gargoyals[0], sea_gargoyals[0],    acid_dragon[0]],
     [sea_gargoyals[0], sea_gargoyals[0], sea_gargoyals[0], sea_gargoyals[0],   acid_serpent[0]],
     [sea_gargoyals[0], sea_gargoyals[0], sea_gargoyals[0], sea_gargoyals[0], traitorous_nun[0]],
     [sea_gargoyals[0], sea_gargoyals[0], sea_gargoyals[0], sea_gargoyals[0],        cthulhu[0]]],
     
    [[acid_dragon[0], acid_dragon[0], acid_dragon[0], acid_dragon[0],  sea_gargoyals[0]],
     [acid_dragon[0], acid_dragon[0], acid_dragon[0], acid_dragon[0],    acid_dragon[0]],
     [acid_dragon[0], acid_dragon[0], acid_dragon[0], acid_dragon[0],   acid_serpent[0]],
     [acid_dragon[0], acid_dragon[0], acid_dragon[0], acid_dragon[0], traitorous_nun[0]],
     [acid_dragon[0], acid_dragon[0], acid_dragon[0], acid_dragon[0],        cthulhu[0]]],

    [[acid_serpent[0], acid_serpent[0], acid_serpent[0], acid_serpent[0],  sea_gargoyals[0]],
     [acid_serpent[0], acid_serpent[0], acid_serpent[0], acid_serpent[0],    acid_dragon[0]],
     [acid_serpent[0], acid_serpent[0], acid_serpent[0], acid_serpent[0],   acid_serpent[0]],
     [acid_serpent[0], acid_serpent[0], acid_serpent[0], acid_serpent[0], traitorous_nun[0]],
     [acid_serpent[0], acid_serpent[0], acid_serpent[0], acid_serpent[0],        cthulhu[0]]],

    [[traitorous_nun[0], traitorous_nun[0], traitorous_nun[0], traitorous_nun[0],  sea_gargoyals[0]],
     [traitorous_nun[0], traitorous_nun[0], traitorous_nun[0], traitorous_nun[0],    acid_dragon[0]],
     [traitorous_nun[0], traitorous_nun[0], traitorous_nun[0], traitorous_nun[0],   acid_serpent[0]],
     [traitorous_nun[0], traitorous_nun[0], traitorous_nun[0], traitorous_nun[0], traitorous_nun[0]],
     [traitorous_nun[0], traitorous_nun[0], traitorous_nun[0], traitorous_nun[0],        cthulhu[0]]],
     
    [[cthulhu[0], cthulhu[0], cthulhu[0], cthulhu[0],  sea_gargoyals[0]],
     [cthulhu[0], cthulhu[0], cthulhu[0], cthulhu[0],    acid_dragon[0]],
     [cthulhu[0], cthulhu[0], cthulhu[0], cthulhu[0],   acid_serpent[0]],
     [cthulhu[0], cthulhu[0], cthulhu[0], cthulhu[0], traitorous_nun[0]],
     [cthulhu[0], cthulhu[0], cthulhu[0], cthulhu[0],        cthulhu[0]]],
  ], [
    [[sea_gargoyals[1], sea_gargoyals[1], sea_gargoyals[1], sea_gargoyals[1],  sea_gargoyals[1]],
     [sea_gargoyals[1], sea_gargoyals[1], sea_gargoyals[1], sea_gargoyals[1],    acid_dragon[1]],
     [sea_gargoyals[1], sea_gargoyals[1], sea_gargoyals[1], sea_gargoyals[1],   acid_serpent[1]],
     [sea_gargoyals[1], sea_gargoyals[1], sea_gargoyals[1], sea_gargoyals[1], traitorous_nun[1]],
     [sea_gargoyals[1], sea_gargoyals[1], sea_gargoyals[1], sea_gargoyals[1],        cthulhu[1]]],
     
    [[acid_dragon[1], acid_dragon[1], acid_dragon[1], acid_dragon[1],  sea_gargoyals[1]],
     [acid_dragon[1], acid_dragon[1], acid_dragon[1], acid_dragon[1],    acid_dragon[1]],
     [acid_dragon[1], acid_dragon[1], acid_dragon[1], acid_dragon[1],   acid_serpent[1]],
     [acid_dragon[1], acid_dragon[1], acid_dragon[1], acid_dragon[1], traitorous_nun[1]],
     [acid_dragon[1], acid_dragon[1], acid_dragon[1], acid_dragon[1],        cthulhu[1]]],

    [[acid_serpent[1], acid_serpent[1], acid_serpent[1], acid_serpent[1],  sea_gargoyals[1]],
     [acid_serpent[1], acid_serpent[1], acid_serpent[1], acid_serpent[1],    acid_dragon[1]],
     [acid_serpent[1], acid_serpent[1], acid_serpent[1], acid_serpent[1],   acid_serpent[1]],
     [acid_serpent[1], acid_serpent[1], acid_serpent[1], acid_serpent[1], traitorous_nun[1]],
     [acid_serpent[1], acid_serpent[1], acid_serpent[1], acid_serpent[1],        cthulhu[1]]],

    [[traitorous_nun[1], traitorous_nun[1], traitorous_nun[1], traitorous_nun[1],  sea_gargoyals[1]],
     [traitorous_nun[1], traitorous_nun[1], traitorous_nun[1], traitorous_nun[1],    acid_dragon[1]],
     [traitorous_nun[1], traitorous_nun[1], traitorous_nun[1], traitorous_nun[1],   acid_serpent[1]],
     [traitorous_nun[1], traitorous_nun[1], traitorous_nun[1], traitorous_nun[1], traitorous_nun[1]],
     [traitorous_nun[1], traitorous_nun[1], traitorous_nun[1], traitorous_nun[1],        cthulhu[1]]],
     
    [[cthulhu[1], cthulhu[1], cthulhu[1], cthulhu[1],  sea_gargoyals[1]],
     [cthulhu[1], cthulhu[1], cthulhu[1], cthulhu[1],    acid_dragon[1]],
     [cthulhu[1], cthulhu[1], cthulhu[1], cthulhu[1],   acid_serpent[1]],
     [cthulhu[1], cthulhu[1], cthulhu[1], cthulhu[1], traitorous_nun[1]],
     [cthulhu[1], cthulhu[1], cthulhu[1], cthulhu[1],        cthulhu[1]]],
  ]
  
  monster_labels       = monsters_encounters[0]
  monster_descriptions = monsters_encounters[1]
  
  row_options = [0, 1, 2, 3, 4]
  col_options = [0, 1, 2, 3, 4]
  arr_options = [0, 1, 2, 3, 4]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  first_monster_label       = monster_labels[cur_row][cur_col][cur_arr]
  first_monster_description = monster_descriptions[cur_row][cur_col][cur_arr]

  row_options = [0, 1, 2, 3, 4]
  col_options = [0, 1, 2, 3, 4]
  arr_options = [0, 1, 2, 3, 4]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  second_monster_label       = monster_labels[cur_row][cur_col][cur_arr]
  second_monster_description = monster_descriptions[cur_row][cur_col][cur_arr]
  
  row_options = [0, 1, 2, 3, 4]
  col_options = [0, 1, 2, 3, 4]
  arr_options = [0, 1, 2, 3, 4]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  third_monster_label       = monster_labels[cur_row][cur_col][cur_arr]
  third_monster_description = monster_descriptions[cur_row][cur_col][cur_arr]
  
  2.times do
    get_statistics(first_monster_label,  first_monster_description,
                   second_monster_label, second_monster_description,
                   third_monster_label,  third_monster_description)
                   
                   dynamic_reward_allocation
                   #dynamic_reward_allocation
                   #dynamic_reward_allocation
                   #dynamic_reward_allocation
  end

  puts "\n"
  #vous_decide_monstre($current_probability)
end

def loot_rate(a, b, c, d, e)
  poison_resistant_clogs  = :poison_resistant_clogs, a
  emergency_ax            = :emergency_ax,           b
  antidote                = :antidote,               c
  acid_resistant_boat     = :acid_resistant_boat,    d
  healing_salve           = :healing_salve,          e
  
  loot_encounters = [
    [[poison_resistant_clogs[0], poison_resistant_clogs[0], poison_resistant_clogs[0], poison_resistant_clogs[0],  poison_resistant_clogs[0]],
     [poison_resistant_clogs[0], poison_resistant_clogs[0], poison_resistant_clogs[0], poison_resistant_clogs[0],            emergency_ax[0]],
     [poison_resistant_clogs[0], poison_resistant_clogs[0], poison_resistant_clogs[0], poison_resistant_clogs[0],                antidote[0]],
     [poison_resistant_clogs[0], poison_resistant_clogs[0], poison_resistant_clogs[0], poison_resistant_clogs[0],     acid_resistant_boat[0]],
     [poison_resistant_clogs[0], poison_resistant_clogs[0], poison_resistant_clogs[0], poison_resistant_clogs[0],           healing_salve[0]]],

    [[emergency_ax[0], emergency_ax[0], emergency_ax[0], emergency_ax[0],  poison_resistant_clogs[0]],
     [emergency_ax[0], emergency_ax[0], emergency_ax[0], emergency_ax[0],            emergency_ax[0]],
     [emergency_ax[0], emergency_ax[0], emergency_ax[0], emergency_ax[0],                antidote[0]],
     [emergency_ax[0], emergency_ax[0], emergency_ax[0], emergency_ax[0],     acid_resistant_boat[0]],
     [emergency_ax[0], emergency_ax[0], emergency_ax[0], emergency_ax[0],           healing_salve[0]]],

    [[antidote[0], antidote[0], antidote[0], antidote[0],  poison_resistant_clogs[0]],
     [antidote[0], antidote[0], antidote[0], antidote[0],            emergency_ax[0]],
     [antidote[0], antidote[0], antidote[0], antidote[0],                antidote[0]],
     [antidote[0], antidote[0], antidote[0], antidote[0],     acid_resistant_boat[0]],
     [antidote[0], antidote[0], antidote[0], antidote[0],           healing_salve[0]]],

    [[acid_resistant_boat[0], acid_resistant_boat[0], acid_resistant_boat[0], acid_resistant_boat[0],  poison_resistant_clogs[0]],
     [acid_resistant_boat[0], acid_resistant_boat[0], acid_resistant_boat[0], acid_resistant_boat[0],            emergency_ax[0]],
     [acid_resistant_boat[0], acid_resistant_boat[0], acid_resistant_boat[0], acid_resistant_boat[0],                antidote[0]],
     [acid_resistant_boat[0], acid_resistant_boat[0], acid_resistant_boat[0], acid_resistant_boat[0],     acid_resistant_boat[0]],
     [acid_resistant_boat[0], acid_resistant_boat[0], acid_resistant_boat[0], acid_resistant_boat[0],           healing_salve[0]]],

    [[healing_salve[0], healing_salve[0], healing_salve[0], healing_salve[0],  poison_resistant_clogs[0]],
     [healing_salve[0], healing_salve[0], healing_salve[0], healing_salve[0],            emergency_ax[0]],
     [healing_salve[0], healing_salve[0], healing_salve[0], healing_salve[0],                antidote[0]],
     [healing_salve[0], healing_salve[0], healing_salve[0], healing_salve[0],     acid_resistant_boat[0]],
     [healing_salve[0], healing_salve[0], healing_salve[0], healing_salve[0],           healing_salve[0]]],
  ], [
    [[poison_resistant_clogs[1], poison_resistant_clogs[1], poison_resistant_clogs[1], poison_resistant_clogs[1],  poison_resistant_clogs[1]],
     [poison_resistant_clogs[1], poison_resistant_clogs[1], poison_resistant_clogs[1], poison_resistant_clogs[1],            emergency_ax[1]],
     [poison_resistant_clogs[1], poison_resistant_clogs[1], poison_resistant_clogs[1], poison_resistant_clogs[1],                antidote[1]],
     [poison_resistant_clogs[1], poison_resistant_clogs[1], poison_resistant_clogs[1], poison_resistant_clogs[1],     acid_resistant_boat[1]],
     [poison_resistant_clogs[1], poison_resistant_clogs[1], poison_resistant_clogs[1], poison_resistant_clogs[1],           healing_salve[1]]],

    [[emergency_ax[1], emergency_ax[1], emergency_ax[1], emergency_ax[1],  poison_resistant_clogs[1]],
     [emergency_ax[1], emergency_ax[1], emergency_ax[1], emergency_ax[1],            emergency_ax[1]],
     [emergency_ax[1], emergency_ax[1], emergency_ax[1], emergency_ax[1],                antidote[1]],
     [emergency_ax[1], emergency_ax[1], emergency_ax[1], emergency_ax[1],     acid_resistant_boat[1]],
     [emergency_ax[1], emergency_ax[1], emergency_ax[1], emergency_ax[1],           healing_salve[1]]],

    [[antidote[1], antidote[1], antidote[1], antidote[1],  poison_resistant_clogs[1]],
     [antidote[1], antidote[1], antidote[1], antidote[1],            emergency_ax[1]],
     [antidote[1], antidote[1], antidote[1], antidote[1],                antidote[1]],
     [antidote[1], antidote[1], antidote[1], antidote[1],     acid_resistant_boat[1]],
     [antidote[1], antidote[1], antidote[1], antidote[1],           healing_salve[1]]],

    [[acid_resistant_boat[1], acid_resistant_boat[1], acid_resistant_boat[1], acid_resistant_boat[1],  poison_resistant_clogs[1]],
     [acid_resistant_boat[1], acid_resistant_boat[1], acid_resistant_boat[1], acid_resistant_boat[1],            emergency_ax[1]],
     [acid_resistant_boat[1], acid_resistant_boat[1], acid_resistant_boat[1], acid_resistant_boat[1],                antidote[1]],
     [acid_resistant_boat[1], acid_resistant_boat[1], acid_resistant_boat[1], acid_resistant_boat[1],     acid_resistant_boat[1]],
     [acid_resistant_boat[1], acid_resistant_boat[1], acid_resistant_boat[1], acid_resistant_boat[1],           healing_salve[1]]],

    [[healing_salve[1], healing_salve[1], healing_salve[1], healing_salve[1],  poison_resistant_clogs[1]],
     [healing_salve[1], healing_salve[1], healing_salve[1], healing_salve[1],            emergency_ax[1]],
     [healing_salve[1], healing_salve[1], healing_salve[1], healing_salve[1],                antidote[1]],
     [healing_salve[1], healing_salve[1], healing_salve[1], healing_salve[1],     acid_resistant_boat[1]],
     [healing_salve[1], healing_salve[1], healing_salve[1], healing_salve[1],           healing_salve[1]]],
  ]
  
  loot_labels       = loot_encounters[0]
  loot_descriptions = loot_encounters[1]
  
  row_options = [0, 1, 2, 3, 4]
  col_options = [0, 1, 2, 3, 4]
  arr_options = [0, 1, 2, 3, 4]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  first_loot_label       = loot_labels[cur_row][cur_col][cur_arr]
  first_loot_description = loot_descriptions[cur_row][cur_col][cur_arr]

  row_options = [0, 1, 2, 3, 4]
  col_options = [0, 1, 2, 3, 4]
  arr_options = [0, 1, 2, 3, 4]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  second_loot_label       = loot_labels[cur_row][cur_col][cur_arr]
  second_loot_description = loot_descriptions[cur_row][cur_col][cur_arr]
  
  row_options = [0, 1, 2, 3, 4]
  col_options = [0, 1, 2, 3, 4]
  arr_options = [0, 1, 2, 3, 4]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  third_loot_label       = loot_labels[cur_row][cur_col][cur_arr]
  third_loot_description = loot_descriptions[cur_row][cur_col][cur_arr]
  
  2.times do
    get_statistics(first_loot_label,  first_loot_description,
                   second_loot_label, second_loot_description,
                   third_loot_label,  third_loot_description)
                   
                   dynamic_reward_allocation
                   #dynamic_reward_allocation
                   #dynamic_reward_allocation
                   #dynamic_reward_allocation
  end
  
  puts "\n"
  #vous_decide_tresor($current_probability)
end

def trap_rate(a, b, c, d, e)
  spiked_sea_raft  = :spiked_sea_raft, a # Spiked sea raft while visiting island.
  pressure_plates  = :pressure_plates, b # Pressure plates that behead characters.
  poison_moss      = :poison_moss,     c # Poison Moss
  poison_mines     = :poison_mines,    d # Mines that spray poison
  guillotine       = :guillotine,      e # Traitorous Nuns
  
  trap_encounters = [
    [[spiked_sea_raft[0], spiked_sea_raft[0], spiked_sea_raft[0], spiked_sea_raft[0],  spiked_sea_raft[0]],
     [spiked_sea_raft[0], spiked_sea_raft[0], spiked_sea_raft[0], spiked_sea_raft[0],  pressure_plates[0]],
     [spiked_sea_raft[0], spiked_sea_raft[0], spiked_sea_raft[0], spiked_sea_raft[0],      poison_moss[0]],
     [spiked_sea_raft[0], spiked_sea_raft[0], spiked_sea_raft[0], spiked_sea_raft[0],     poison_mines[0]],
     [spiked_sea_raft[0], spiked_sea_raft[0], spiked_sea_raft[0], spiked_sea_raft[0],       guillotine[0]]],

    [[pressure_plates[0], pressure_plates[0], pressure_plates[0], pressure_plates[0],  spiked_sea_raft[0]],
     [pressure_plates[0], pressure_plates[0], pressure_plates[0], pressure_plates[0],  pressure_plates[0]],
     [pressure_plates[0], pressure_plates[0], pressure_plates[0], pressure_plates[0],      poison_moss[0]],
     [pressure_plates[0], pressure_plates[0], pressure_plates[0], pressure_plates[0],     poison_mines[0]],
     [pressure_plates[0], pressure_plates[0], pressure_plates[0], pressure_plates[0],       guillotine[0]]],

    [[poison_moss[0], poison_moss[0], poison_moss[0], poison_moss[0],  spiked_sea_raft[0]],
     [poison_moss[0], poison_moss[0], poison_moss[0], poison_moss[0],  pressure_plates[0]],
     [poison_moss[0], poison_moss[0], poison_moss[0], poison_moss[0],      poison_moss[0]],
     [poison_moss[0], poison_moss[0], poison_moss[0], poison_moss[0],     poison_mines[0]],
     [poison_moss[0], poison_moss[0], poison_moss[0], poison_moss[0],       guillotine[0]]],

    [[poison_mines[0], poison_mines[0], poison_mines[0], poison_mines[0],  spiked_sea_raft[0]],
     [poison_mines[0], poison_mines[0], poison_mines[0], poison_mines[0],  pressure_plates[0]],
     [poison_mines[0], poison_mines[0], poison_mines[0], poison_mines[0],      poison_moss[0]],
     [poison_mines[0], poison_mines[0], poison_mines[0], poison_mines[0],     poison_mines[0]],
     [poison_mines[0], poison_mines[0], poison_mines[0], poison_mines[0],       guillotine[0]]],

    [[guillotine[0], guillotine[0], guillotine[0], guillotine[0],  spiked_sea_raft[0]],
     [guillotine[0], guillotine[0], guillotine[0], guillotine[0],  pressure_plates[0]],
     [guillotine[0], guillotine[0], guillotine[0], guillotine[0],      poison_moss[0]],
     [guillotine[0], guillotine[0], guillotine[0], guillotine[0],     poison_mines[0]],
     [guillotine[0], guillotine[0], guillotine[0], guillotine[0],       guillotine[0]]],
  ], [
    [[spiked_sea_raft[1], spiked_sea_raft[1], spiked_sea_raft[1], spiked_sea_raft[1],  spiked_sea_raft[1]],
     [spiked_sea_raft[1], spiked_sea_raft[1], spiked_sea_raft[1], spiked_sea_raft[1],  pressure_plates[1]],
     [spiked_sea_raft[1], spiked_sea_raft[1], spiked_sea_raft[1], spiked_sea_raft[1],      poison_moss[1]],
     [spiked_sea_raft[1], spiked_sea_raft[1], spiked_sea_raft[1], spiked_sea_raft[1],     poison_mines[1]],
     [spiked_sea_raft[1], spiked_sea_raft[1], spiked_sea_raft[1], spiked_sea_raft[1],       guillotine[1]]],

    [[pressure_plates[1], pressure_plates[1], pressure_plates[1], pressure_plates[1],  spiked_sea_raft[1]],
     [pressure_plates[1], pressure_plates[1], pressure_plates[1], pressure_plates[1],  pressure_plates[1]],
     [pressure_plates[1], pressure_plates[1], pressure_plates[1], pressure_plates[1],      poison_moss[1]],
     [pressure_plates[1], pressure_plates[1], pressure_plates[1], pressure_plates[1],     poison_mines[1]],
     [pressure_plates[1], pressure_plates[1], pressure_plates[1], pressure_plates[1],       guillotine[1]]],

    [[poison_moss[1], poison_moss[1], poison_moss[1], poison_moss[1],  spiked_sea_raft[1]],
     [poison_moss[1], poison_moss[1], poison_moss[1], poison_moss[1],  pressure_plates[1]],
     [poison_moss[1], poison_moss[1], poison_moss[1], poison_moss[1],      poison_moss[1]],
     [poison_moss[1], poison_moss[1], poison_moss[1], poison_moss[1],     poison_mines[1]],
     [poison_moss[1], poison_moss[1], poison_moss[1], poison_moss[1],       guillotine[1]]],

    [[poison_mines[1], poison_mines[1], poison_mines[1], poison_mines[1],  spiked_sea_raft[1]],
     [poison_mines[1], poison_mines[1], poison_mines[1], poison_mines[1],  pressure_plates[1]],
     [poison_mines[1], poison_mines[1], poison_mines[1], poison_mines[1],      poison_moss[1]],
     [poison_mines[1], poison_mines[1], poison_mines[1], poison_mines[1],     poison_mines[1]],
     [poison_mines[1], poison_mines[1], poison_mines[1], poison_mines[1],       guillotine[1]]],

    [[guillotine[1], guillotine[1], guillotine[1], guillotine[1],  spiked_sea_raft[1]],
     [guillotine[1], guillotine[1], guillotine[1], guillotine[1],  pressure_plates[1]],
     [guillotine[1], guillotine[1], guillotine[1], guillotine[1],      poison_moss[1]],
     [guillotine[1], guillotine[1], guillotine[1], guillotine[1],     poison_mines[1]],
     [guillotine[1], guillotine[1], guillotine[1], guillotine[1],       guillotine[1]]],
  ]
  
  trap_labels       = trap_encounters[0]
  trap_descriptions = trap_encounters[1]
  
  row_options = [0, 1, 2, 3, 4]
  col_options = [0, 1, 2, 3, 4]
  arr_options = [0, 1, 2, 3, 4]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  first_trap_label       = trap_labels[cur_row][cur_col][cur_arr]
  first_trap_description = trap_descriptions[cur_row][cur_col][cur_arr]

  row_options = [0, 1, 2, 3, 4]
  col_options = [0, 1, 2, 3, 4]
  arr_options = [0, 1, 2, 3, 4]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  second_trap_label       = trap_labels[cur_row][cur_col][cur_arr]
  second_trap_description = trap_descriptions[cur_row][cur_col][cur_arr]
  
  row_options = [0, 1, 2, 3, 4]
  col_options = [0, 1, 2, 3, 4]
  arr_options = [0, 1, 2, 3, 4]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  third_trap_label       = trap_labels[cur_row][cur_col][cur_arr]
  third_trap_description = trap_descriptions[cur_row][cur_col][cur_arr]
  
  2.times do
    get_statistics(first_trap_label,  first_trap_description,
                   second_trap_label, second_trap_description,
                   third_trap_label,  third_trap_description)
                   
                   dynamic_reward_allocation
                   #dynamic_reward_allocation
                   #dynamic_reward_allocation
                   #dynamic_reward_allocation
  end

  puts "\n"
  #vous_decide_poison($current_probability)
end

def mutation_rate(a, b, c)
  mutation        = :mutation_deformity, a
  unhealing_wound = :unhealing_wound,    b
  sanity_loss     = :sanity_loss,        c
  
  status_effect = [
    [[mutation[0], mutation[0],        mutation[0]],
     [mutation[0], mutation[0], unhealing_wound[0]],
     [mutation[0], mutation[0],     sanity_loss[0]]],

    [[unhealing_wound[0], unhealing_wound[0],        mutation[0]],
     [unhealing_wound[0], unhealing_wound[0], unhealing_wound[0]],
     [unhealing_wound[0], unhealing_wound[0],     sanity_loss[0]]],

    [[sanity_loss[0], sanity_loss[0],        mutation[0]],
     [sanity_loss[0], sanity_loss[0], unhealing_wound[0]],
     [sanity_loss[0], sanity_loss[0],     sanity_loss[0]]],
  ], [
    [[mutation[1], mutation[1],        mutation[1]],
     [mutation[1], mutation[1], unhealing_wound[1]],
     [mutation[1], mutation[1],     sanity_loss[1]]],

    [[unhealing_wound[1], unhealing_wound[1],        mutation[1]],
     [unhealing_wound[1], unhealing_wound[1], unhealing_wound[1]],
     [unhealing_wound[1], unhealing_wound[1],     sanity_loss[1]]],

    [[sanity_loss[1], sanity_loss[1],        mutation[1]],
     [sanity_loss[1], sanity_loss[1], unhealing_wound[1]],
     [sanity_loss[1], sanity_loss[1],     sanity_loss[1]]],
  ]
  
  effect_labels       = status_effect[0]
  effect_descriptions = status_effect[1]
  
  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  first_effect_label       = effect_labels[cur_row][cur_col][cur_arr]
  first_effect_description = effect_descriptions[cur_row][cur_col][cur_arr]

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  second_effect_label       = effect_labels[cur_row][cur_col][cur_arr]
  second_effect_description = effect_descriptions[cur_row][cur_col][cur_arr]
  
  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  third_effect_label       = effect_labels[cur_row][cur_col][cur_arr]
  third_effect_description = effect_descriptions[cur_row][cur_col][cur_arr]

  2.times do
    get_statistics(first_effect_label,   first_effect_description,
                   second_effect_label, second_effect_description,
                   third_effect_label,   third_effect_description)
                   
                   dynamic_reward_allocation
                   #dynamic_reward_allocation
                   #dynamic_reward_allocation
                   #dynamic_reward_allocation
  end

  puts "\n"
  #vous_decide_poison($current_probability)
end

system("clear")
gets.chomp

puts "LUNAR FORGETTING"
lunair_de_oublie("New Moon",
                 "Waxing Crescent",
                 "First Quarter",
                 "Waxing Gibbous",
                 "Full Moon",
                 "Waning Gibbous",
                 "Last Quarter",
                 "Waning Crescent")

puts "LUNAR ARCHIVAL"
lunair_impacts("New Moon",
               "Waxing Crescent",
               "First Quarter",
               "Waxing Gibbous",
               "Full Moon",
               "Waning Gibbous",
               "Last Quarter",
               "Waning Crescent")

puts "POINTS OF INTEREST"
2.times do
  get_statistics(:primary_hub,                 "The primary hub is an underground village or station.",
                 :secondary_hub,        "The second hub is where you can find new recruits or agents.",
                 :primary_enemies, "Your primary enemies come from areas furthest from supply chains.")
                 
                 dynamic_reward_allocation
end

def get_edge_cases(a1, a2, b1, b2, c1, c2, d1, d2, e1, e2, f1, f2)
  a = [ a1, a2 ]
  b = [ b1, b2 ]
  c = [ c1, c2 ]
  d = [ d1, d2 ]
  e = [ e1, e2 ]
  f = [ f1, f2 ]

  edges_cases = [[
    [ a[0], e[0], b[0], d[0], f[0], c[0] ],
    [ e[0], b[0], d[0], f[0], c[0], a[0] ],
    [ b[0], d[0], f[0], c[0], a[0], e[0] ],
    [ d[0], f[0], c[0], a[0], e[0], b[0] ],
    [ f[0], c[0], a[0], b[0], d[0], e[0] ],
    [ c[0], a[0], e[0], b[0], d[0], f[0] ],
  ], [
    [ a[1], e[1], b[1], d[1], f[1], c[1] ],
    [ e[1], b[1], d[1], f[1], c[1], a[1] ],
    [ b[1], d[1], f[1], c[1], a[1], e[1] ],
    [ d[1], f[1], c[1], a[1], e[1], b[1] ],
    [ f[1], c[1], a[1], b[1], d[1], e[1] ],
    [ c[1], a[1], e[1], b[1], d[1], f[1] ],
  ]]
  
  symbols      = edges_cases[0]
  descriptions = edges_cases[1]

  row_options = [0, 1, 2, 3, 4, 5]
  col_options = [0, 1, 2, 3, 4, 5]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  
  first_symbol      = symbols[cur_row][cur_col] #[cur_arr]
  first_description = descriptions[cur_row][cur_col] #[cur_arr]

  cur_row = row_options.sample
  cur_col = col_options.sample
  #cur_arr = arr_options.sample
  
  second_symbol      = symbols[cur_row][cur_col] #[cur_arr]
  second_description = descriptions[cur_row][cur_col] #[cur_arr]

  cur_row = row_options.sample
  cur_col = col_options.sample
  #cur_arr = arr_options.sample
  
  third_symbol      = symbols[cur_row][cur_col] #[cur_arr]
  third_description = descriptions[cur_row][cur_col] #[cur_arr]
  
  2.times do
    get_statistics(first_symbol,  first_description,
                   second_symbol, second_description,
                   third_symbol,  third_description)
                   
                   dynamic_reward_allocation
  end
end

faces = 48
index = 0

faces.times do

puts "FACE #{index}"
puts "Enemy Placement"

# Consider Umuduragone for later on.
encounter_rate("[ Umigarugo ] Sea Gargoyals reside at the outside edges of the ancient castle",                                # Des gargouilles marines résident aux abords extérieurs de l'ancien château [ Umigargouille ]
               "[ Acideduragone ] Acid dragons resides in the ocean and sometimes reach out to land.",                         # Les dragons acides vivent dans l'océan et s'aventurent parfois sur la terre ferme. [ Acideduragonne ]
               "[ Acideserupenete ] Acid serpents are in the deepest depths of Cthulhu's dungeon.",                            # Les serpents acides se trouvent dans les profondeurs les plus abyssales du donjon de Cthulhu. [ Acideserupenete ]
               "[ Noneseturason ] Traitorous nuns eventually betray the party but you can never predict which one does that.", # Les nonnes traîtresses finissent par trahir le parti, mais on ne peut jamais prédire laquelle le fera. [ nonnes de trahison ]
               
               # Habucorose [ haibu no corrosif ] - A hive of corrosive snakes adapted to live in the acidic depths of caves.
               "[ Wancien / Habucorose ] Cthulhu lies at the final depths of darkness of the ancient temple; corrosive hive of snakes at the edge of darkness.")                              # Cthulhu repose dans les profondeurs obscures du temple antique.
               
puts "Anamolous Monsters"
get_edge_cases(:acid_dragons,   "are dragons that have evolved to live in an acidic environment in the ocean.",
               :sea_gargoyals,  "are grotesque creatures as statues in the day, and come alive to hunt sailors.",
               :acid_serpents,  "are giant snakes that spew acid to destroy their enemies.",
               :poison_moss,    "is a toxic plant-like entity that needs special clogs in order to walk over.",
               :treasonous_nun, "are religious figures from the enemy encampment that ally with the main party.",
               :cthulhu,        "is first elder god of the Cthulhu mythos that destroys mankind when awakened.")
               
puts "Trap Placement"
trap_rate("[ Pointe De Le Radeau ] Spiked sea rafts are a constant danger for warring sailors and mariners.",
          "[ Girochin Plaque ] Pressure plates are a trap that, when you step on the plate beheads its victims.",
          "[ Koke No Poison ] Poison Moss grows randomly inside the dungeon, and you need to wear special clogs to traverse it.",
          "[ Le Mien Poison ] Poison mines are similar to landmines, except they spew poisoning gas at victims.",
          "[ Faiseur De Veuves ] Guillotines are the most common method of capital punishment for murderers outisde of war time.")
          
puts "\nAnamolous Traps"
get_edge_cases(:poison_moss,     "is grass like moss that poisons the player when you walk on it.",
               :spiked_raft,     "is a spiked wooden raft that tricks a vaulting player into landing on it.",
               :poison_mine,     "is a poison spraying mine that requires an antidote to treat.",
               :pressure_plate,  "is a pressure plate that beheads the character as they pass through it.",
               :guillotine,      "is an official execution device for deserters and defectors.",
               :one_way_dungeon, "is a cavern you can fall in but not easily escape.")
          
puts "Loot Placement"
loot_rate("[ Le Sabot De Poison Hafelin ] Special wooden shoes that can resist the effects of poisonous moss.",
          "[ Les Axes De Urgence ] Emergency axes can be found which can be used to chop down doors or fend off enemies.",
          "[ Anos Kaidokuzaios ] Antidotes are able to treat injuries from poisonous moss.",
          "Acid resistant boats are needed in order to traverse water with high PH values.",
          "Healing salves can recover lost life points.")

puts "\nAnamolous Loot"
get_edge_cases(:le_sabot_de_poison_hafelin, "Special wooden shoes for resisting poison caused by poison moss.",
               :les_axes_de_urgence,        "Emergency axes for chopping down wooden doors and attacking enemies.",
               :anos_kaidokuzaios,          "Antidotes for clearing out poison from the body.",
               :healing_salves,             "Healing salves for cuts and bruises; first aid kit box.",
               :caffein,                    "Caffein pills for keeping yourself awake at specific hours.",
               :alcohol,                    "Vampire Wine for extremely special occassions.")

puts "Mutations"
mutation_rate("[ Le Yeux De Mutation ] Mutations are sometime acquired when developing wounds that heal.",
              "[ Guerison Partielle ] Incomplete healing wounds can sometimes develop infections that don't go away except from rare medications.",
              "[ Perte De Raison ] Sometimes sanity lost happens rather than any longterm injuries.")

puts "DIALOGUE"

2.times do
  get_statistics(:contrastive_one,  "Cette granit rouge Je ne jute lentement, mais cette granit rouge Je ne mange quicely.",
                 :contrastive_two, "Cette banane violet Je jute lentement, mais cette la banane violet Je ne jute quicely.",
                 :contrastive_tre,     "Cette pomme jaune Je mange lentement, mais cette granit violet Je mange lentement.")

                 dynamic_reward_allocation

  get_statistics(:contrastive_fro,   "Cette granit violet Je jute lentement, mais cette pomme jaune Je mange lentement.",
                 :contrastive_fiv,   "Cette pomme violet Je mange quicely, mais cette pomme rouge Je ne jute lentement.",
                 :contrastive_six, "Cette pomme rouge Je ne jute quicely, mais cette pomme jaune Je ne mange lentement.")
                 
                 dynamic_reward_allocation
end

object_nature = [
  # In an mundane context: Locked doors have the lowest probability. Doors made of marble have the highest probability. Less frequently wooden or metallic.
  [ :object,      "door", "This entity is possibly mundane in nature.", 0.01800203000000000 ],
  [ :subject,   "wooden", "This entity is possibly mundane in nature.", 0.02066348800000000 ],
  [ :subject, "metallic", "This entity is possibly mundane in nature.", 0.09487368000000000 ],
  [ :subject,   "marble", "This entity is possibly mundane in nature.", 0.43560000000000004 ],
  [ :verb,      "locked", "This entity is possibly mundane in nature.", 0.00341583800000000 ],
], [
  # In an uncertain context: Metallic doors have the highest probability. But locked doors and one made of marble have the lowest probability.
  [ :object,      "door", "This entity is possibly uncertain in nature.", 0.87120000000000010 ],
  [ :subject,   "marble", "This entity is possibly uncertain in nature.", 0.04743684000000000 ],
  [ :subject, "metallic", "This entity is possibly uncertain in nature.", 0.37949472000000000 ],
  [ :verb,      "locked", "This entity is possibly uncertain in nature.", 0.10890000000000001 ],
], [
  # In an anomalous context: Locked doors have the lowest probability. Doors made of metal have the highest probability, less frequently marble and wood.
  [ :object,      "door", "This entity is possibly anomalous in nature.", 0.43560000000000004 ],
  [ :subject, "metallic", "This entity is possibly anomalous in nature.", 0.87120000000000010 ],
  [ :verb,      "locked", "This entity is possibly anomalous in nature.", 0.003920842 ],
]

# Sections of Data
mundane   = object_nature[0]
uncertain = object_nature[1]
anomalous = object_nature[2]

## Mundane Environment
mundane_door     = mundane[0][0], mundane[0][1], mundane[0][2], mundane[0][3]
mundane_marble   = mundane[3][0], mundane[3][1], mundane[3][2], mundane[3][3]
mundane_unlocked = mundane[4][0], mundane[4][1], mundane[4][2], mundane[4][3]
true_probability = mundane_door[3] * mundane_marble[3] * mundane_unlocked[3]

mundane_status   = "A mundane environment is: #{mundane_door[1]} #{mundane_marble[1]} #{mundane_unlocked[1]}: #{1.0 / (1.0 - true_probability )}"

puts mundane_status
thresholding(true_probability, 640, 480)

## Uncertain Environment
uncertain_door     = uncertain[0][0], uncertain[0][1], uncertain[0][2], uncertain[0][3]
uncertain_metallic = uncertain[2][0], uncertain[2][1], uncertain[2][2], uncertain[2][3]
uncertain_unlocked = uncertain[3][0], uncertain[3][1], uncertain[3][2], uncertain[3][3]
true_probability   = uncertain_door[3] * uncertain_metallic[3] * uncertain_unlocked[3]

uncertain_status   = "A uncertain environment is: #{uncertain_door[1]} #{uncertain_metallic[1]} #{uncertain_unlocked[1]}: #{true_probability}"

puts uncertain_status
thresholding(true_probability, 640, 480)

index = index + 1

end
