#######################################################################################
#                         Genetic Reinforcement Naive Bayes                           #
#######################################################################################
def generate_bounded_probability
  assumed_percentage = "0."

  alpha = ["c", "d", "e", "f", "g", "a", "b"]
  
  a = alpha.sample
  b = alpha.sample
  c = alpha.sample
  d = alpha.sample
  e = alpha.sample
  f = alpha.sample
  g = alpha.sample
  
  "#{assumed_percentage}#{c}#{d}#{e}#{f}#{g}#{a}#{b}"
end

def convert_to_piano_to_percent(fake_percent)
  # if number is 0.eaaaaf, convert to real percent
  real_percent = fake_percent.tr ".cdefgab", ".0123456"
  real_percent = real_percent.to_f

  real_percent
end

def logprob(lowest_probability, highest_probability)
  logarithm = lowest_probability / highest_probability
  
  logarithm
end

def get_statistics(a1, a2, b1, b2, c1, c2)
  a = [ a1, a2 ]
  b = [ b1, b2 ]
  c = [ c1, c2 ]

  matrix = [[
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
  ]]

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
  
  base_probability = probability_type[cur_row][cur_col][cur_arr].to_i
  
  current_probability = base_probability + graph_selection
  
  current_probability = current_probability + current_probability
  current_information = "#{current_label} #{current_definition}"
  
  puts "[ #{current_label} #{current_definition} ]"
  
  #File.write("data/statistics/probability/current_probability.txt", "#{current_probability}")
  #File.write("data/statistics/label/current_information.txt",       current_information)

  File.write("data/statistics/probability/current_probability.txt", "#{current_probability}")
  File.write("data/statistics/label/current_information.txt",            current_information)
  File.write("data/statistics/description/current_description.txt",      current_definition)
  File.write("data/statistics/symbol/current_label.txt",                 current_label)
end

def bifurcate_statistics(*args)
  a1, a2, a3,
  b1, b2, b3,
  c1, c2, c3 = args

  a = [a1, a2, a3]
  b = [b1, b2, b3]
  c = [c1, c2, c3]

  matrix = [[
    [[a[0], a[0], a[0]],
     [a[0], a[0], b[0]],
     [a[0], a[0], c[0]]],

    [[b[0], b[0], a[0]],
     [b[0], b[0], b[0]],
     [b[0], b[0], c[0]]],

    [[c[0], c[0], a[0]],
     [c[0], c[0], b[0]],
     [c[0], c[0], c[0]]],
  ], [
    [[a[1], a[1], a[1]],
     [a[1], a[1], b[1]],
     [a[1], a[1], c[1]]],

    [[b[1], b[1], a[1]],
     [b[1], b[1], b[1]],
     [b[1], b[1], c[1]]],

    [[c[1], c[1], a[1]],
     [c[1], c[1], b[1]],
     [c[1], c[1], c[1]]],
  ], [
    [[a[2], a[2], a[2]],
     [a[2], a[2], b[2]],
     [a[2], a[2], c[2]]],

    [[b[2], b[2], a[2]],
     [b[2], b[2], b[2]],
     [b[2], b[2], c[2]]],

    [[c[2], c[2], a[2]],
     [c[2], c[2], b[2]],
     [c[2], c[2], c[2]]],
  ]]

  symbols            = matrix[0]
  first_description  = matrix[1]
  second_description = matrix[2]

  mrow = [ -1, -2, -3 ].sample #[cur_row][cur_col][cur_arr][cur_sub] # for Int32
  mcol = [ -1, -2, -3 ].sample #[cur_row][cur_col][cur_arr][cur_sub] # for Int32
  marr = [ -1, -2, -3 ].sample #[cur_row][cur_col][cur_arr][cur_sub] # for Int32

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]

  cur_row = row_options[mrow]
  cur_col = col_options[mcol]
  cur_arr = arr_options[marr]
  
  current_probability = 0.33 * 0.33 * 0.33 * 0.25

  current_label             = symbols[cur_row][cur_col][cur_arr]

  current_first_description = first_description[cur_row][cur_col][cur_arr]
  current_second_description = second_description[cur_row][cur_col][cur_arr]

  current_full_description = <<-DOUBLEDESCRIPTION
  #{current_first_description}
  #{current_second_description}
  DOUBLEDESCRIPTION

  current_information = "#{current_label}, '#{current_first_description}', '#{current_second_description}'"
  
  File.write("data/statistics/probability/current_probability.txt", "#{current_probability}")
  File.write("data/statistics/label/current_information.txt",            current_information)
  File.write("data/statistics/description/current_description.txt",      current_full_description)
  File.write("data/statistics/symbol/current_label.txt",                 current_label)
end

def gain
  current_probability = File.read("data/statistics/probability/current_probability.txt").to_f
  current_information = File.read("data/statistics/label/current_information.txt")

  if current_probability > 0.999999999999999999
    current_probability = 0.9 / current_probability
  end
  
  case current_probability
  when 0.003921569000000000..0.287225000000000000
    "I'm confident it is not [ #{current_information} ] as its only #{current_probability}."
  when 0.287225000000000001..0.522225000000000000
    "I'm less unconfident it is not [ #{current_information} ] as its only #{current_probability}."
  when 0.522225000000000001..0.756112500000000000
    "I'm almost sure it is [ #{current_information} ] because it has #{current_probability}."
  when 0.756112500000000001..0.999999999999999999
    "I'm sure it is [ #{current_information} ] after all it has #{current_probability}."

  else
    "The probability is either to low or to large, so I can't determine exactly."
  end
  
  current_probability    = current_probability + 0.15
  
  File.write("data/statistics/probability/current_probability.txt", "#{current_probability}")
  File.write("data/statistics/label/current_information.txt",       current_information)
end

def loss
  current_probability = File.read("data/statistics/probability/current_probability.txt").to_f
  current_information = File.read("data/statistics/label/current_information.txt")

  if current_probability > 0.999999999999999999
    current_probability = 0.9 / current_probability
  end
  
  case current_probability
  when 0.003921569000000000..0.287225000000000000
    "I'm confident it is not [ #{current_information} ] as its only #{current_probability}."
  when 0.287225000000000001..0.522225000000000000
    "I'm less unconfident it is not [ #{current_information} ] as its only #{current_probability}."
  when 0.522225000000000001..0.756112500000000000
    "I'm almost sure it is [ #{current_information} ] because it has #{current_probability}."
  when 0.756112500000000001..0.999999999999999999
    "I'm sure it is [ #{current_information} ] after all it has #{current_probability}."

  else
    "The probability is either to low or to large, so I can't determine exactly."
  end
  
  current_probability    = current_probability * 0.95
  
  File.write("data/statistics/probability/current_probability.txt", "#{current_probability}")
  File.write("data/statistics/label/current_information.txt",       current_information)
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

  if    current_reward_structure == l1_reasses; gain
  elsif current_reward_structure == l2_reasses; 2.times do gain end
  elsif current_reward_structure == l3_reasses; 3.times do gain end
  elsif current_reward_structure == l4_reasses; 4.times do gain end
  else
    gain
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

  if    current_reward_structure == l1_reasses; loss
  elsif current_reward_structure == l2_reasses; 2.times do loss end
  elsif current_reward_structure == l3_reasses; 3.times do loss end
  elsif current_reward_structure == l4_reasses; 4.times do loss end
  else
    loss
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
                   
                   dynamic_mode_switcher
  end
end

def hyper_statistics(a1, a2, b1, b2, c1, c2)
  a = [ a1, a2 ]
  b = [ b1, b2 ]
  c = [ c1, c2 ]
  
  d = convert_to_piano_to_percent(generate_bounded_probability)

  matrix = [[
    [[[a[0], c[0]],
      [a[0], a[0]],
      [a[0], a[0]]],
     
     [[a[0], b[0]],
      [a[0], a[0]],
      [b[0], a[0]]],

     [[a[0], a[0]],
      [a[0], a[0]],
      [c[0], a[0]]]],

    [[[b[0], c[0]],
      [b[0], b[0]],
      [a[0], b[0]]],
    
     [[b[0], b[0]],
      [b[0], b[0]],
      [b[0], b[0]]],
    
     [[b[0], a[0]],
      [b[0], b[0]],
      [c[0], b[0]]]],

    [[[c[0], c[0]],
      [c[0], c[0]],
      [a[0], c[0]]],
    
     [[c[0], b[0]],
      [c[0], c[0]],
      [b[0], c[0]]],
    
     [[c[0], a[0]],
      [c[0], c[0]],
      [c[0], c[0]]]],
  ], [
    [[[a[1], c[1]],
      [a[1], a[1]],
      [a[1], a[1]]],
     
     [[a[1], b[1]],
      [a[1], a[1]],
      [b[1], a[1]]],
     
     [[a[1], a[1]],
      [a[1], a[1]],
      [c[1], a[1]]]],
     
    [[[b[1], c[1]],
      [b[1], b[1]],
      [a[1], b[1]]],
    
     [[b[1], b[1]],
      [b[1], b[1]],
      [b[1], b[1]]],
    
     [[b[1], a[1]],
      [b[1], b[1]],
      [c[1], b[1]]]],

    [[[c[1], c[1]],
      [c[1], c[1]],
      [a[1], c[1]]],
    
     [[c[1], b[1]],
      [c[1], c[1]],
      [b[1], c[1]]],
    
     [[c[1], a[1]],
      [c[1], c[1]],
      [c[1], c[1]]]],
  ]]
  
  symbols               = matrix[0]
  descriptions          = matrix[1]

  mrow = [ -1, -2, -3 ].sample #[cur_row][cur_col][cur_arr][cur_sub] # for Int32
  mcol = [ -1, -2, -3 ].sample #[cur_row][cur_col][cur_arr][cur_sub] # for Int32
  marr = [ -1, -2, -3 ].sample #[cur_row][cur_col][cur_arr][cur_sub] # for Int32
  msub =     [ -1, -2 ].sample #[cur_row][cur_col][cur_arr][cur_sub] # for Int32

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]
  sub_options = [0, 1]

  cur_row = row_options[mrow]
  cur_col = col_options[mcol]
  cur_arr = arr_options[msub]
  cur_sub = sub_options[msub]
  
  current_probability = 0.33 * 0.33 * 0.33 * 0.25
  current_label       = symbols[cur_row][cur_col][cur_arr][cur_sub]
  current_description = descriptions[cur_row][cur_col][cur_arr][cur_sub]
  current_information = "'#{current_label}', '#{current_description}'"
  
  File.write("data/statistics/probability/current_probability.txt", "#{current_probability}")
  File.write("data/statistics/label/current_information.txt",            current_information)
  File.write("data/statistics/description/current_description.txt",      current_description)
  File.write("data/statistics/symbol/current_label.txt",                 current_label)
end

def negative_hyper_statistics(a1, a2, b1, b2, c1, c2)
  a = [ a1, a2 ]
  b = [ b1, b2 ]
  c = [ c1, c2 ]
  
  d = convert_to_piano_to_percent(generate_bounded_probability)

  matrix = [[
    [[[a[0], c[0]],
      [a[0], a[0]],
      [a[0], a[0]]],
     
     [[a[0], b[0]],
      [a[0], a[0]],
      [b[0], a[0]]],

     [[a[0], a[0]],
      [a[0], a[0]],
      [c[0], a[0]]]],

    [[[b[0], c[0]],
      [b[0], b[0]],
      [a[0], b[0]]],
    
     [[b[0], b[0]],
      [b[0], b[0]],
      [b[0], b[0]]],
    
     [[b[0], a[0]],
      [b[0], b[0]],
      [c[0], b[0]]]],

    [[[c[0], c[0]],
      [c[0], c[0]],
      [a[0], c[0]]],
    
     [[c[0], b[0]],
      [c[0], c[0]],
      [b[0], c[0]]],
    
     [[c[0], a[0]],
      [c[0], c[0]],
      [c[0], c[0]]]],
  ], [
    [[[a[1], c[1]],
      [a[1], a[1]],
      [a[1], a[1]]],
     
     [[a[1], b[1]],
      [a[1], a[1]],
      [b[1], a[1]]],
     
     [[a[1], a[1]],
      [a[1], a[1]],
      [c[1], a[1]]]],
     
    [[[b[1], c[1]],
      [b[1], b[1]],
      [a[1], b[1]]],
    
     [[b[1], b[1]],
      [b[1], b[1]],
      [b[1], b[1]]],
    
     [[b[1], a[1]],
      [b[1], b[1]],
      [c[1], b[1]]]],

    [[[c[1], c[1]],
      [c[1], c[1]],
      [a[1], c[1]]],
    
     [[c[1], b[1]],
      [c[1], c[1]],
      [b[1], c[1]]],
    
     [[c[1], a[1]],
      [c[1], c[1]],
      [c[1], c[1]]]],
  ]]
  
  symbols               = matrix[0]
  descriptions          = matrix[1]

  mrow = [ -1, -2, -3 ].sample #[cur_row][cur_col][cur_arr][cur_sub] # for Int32
  mcol = [ -1, -2, -3 ].sample #[cur_row][cur_col][cur_arr][cur_sub] # for Int32
  marr = [ -1, -2, -3 ].sample #[cur_row][cur_col][cur_arr][cur_sub] # for Int32
  msub =     [ -1, -2 ].sample #[cur_row][cur_col][cur_arr][cur_sub] # for Int32

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]
  sub_options = [0, 1]

  cur_row = row_options[mrow]
  cur_col = col_options[mcol]
  cur_arr = arr_options[msub]
  cur_sub = sub_options[msub]
  
  current_probability = -0.33 * -0.33 * -0.33 * -0.25
  current_label       = symbols[cur_row][cur_col][cur_arr][cur_sub]
  current_description = descriptions[cur_row][cur_col][cur_arr][cur_sub]
  current_information = "'#{current_label}', '#{current_description}'"
  
  File.write("data/statistics/probability/current_probability.txt", "#{current_probability}")
  File.write("data/statistics/label/current_information.txt",            current_information)
  File.write("data/statistics/description/current_description.txt",      current_description)
  File.write("data/statistics/symbol/current_label.txt",                 current_label)
end

def get_liminal_cases(a1, a2, b1, b2, c1, c2, d1, d2, e1, e2, f1, f2, program_name, file_extension)
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
    hyper_statistics(first_symbol,  first_description,
                     second_symbol, second_description,
                     third_symbol,  third_description)
                   
    dynamic_mode_switcher
  end
  
  program_name    = File.read("data/statistics/symbol/current_label.txt").tr ":", ""
  program_process = File.read("data/statistics/description/current_description.txt")

  program_probability = File.read("data/statistics/probability/current_probability.txt").to_f

  if program_probability > 0.51
    File.open("confirmed/scripts/#{program_name}.#{file_extension}", "w") { |f|
      wrapped_script = <<-Crystal  
      #{program_process}
      Crystal

      f.puts wrapped_script
    }
  else
    puts "BIANCA: I'm not super confident about this creation."

    File.open("unaudited/scripts/#{program_name}.#{file_extension}", "w") { |f|
      wrapped_script = <<-Crystal  
      #{program_process}
      Crystal

      f.puts wrapped_script
    }
  end
end

##########################################################################################
#                                   Liminal Edge Cases                                   #
##########################################################################################
# Uses liminal or subspatial analyses for finding edge cases. This mitigates issues with #
# the original statistical algorithm being susceptible to the "Oz Factor".               #
##########################################################################################
def liminal_edge_cases(*args)
  a1, a2, b1, b2, c1, c2, d1, d2, e1, e2, f1, f2 = args

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
    hyper_statistics(first_symbol,  first_description,
                     second_symbol, second_description,
                     third_symbol,  third_description)
                   
    dynamic_reward_allocation
    
    # system("./bin/ternary/kosan #{current_probability} 0.8 #{current_probability} 0.2 #{current_probability} 0.2 0.8")
  end

  current_probability = File.read("./data/statistics/probability/current_probability.txt").to_f
  current_description = File.read("./data/statistics/description/current_description.txt")
  current_symbol      = File.read("./data/statistics/symbol/current_label.txt")
    
  encrire("#{current_symbol.upcase} #{current_description}")
end

#####################################################################################
#                               Limianl Trifd Parser                                #
#####################################################################################
# This combines the characteristics of standard liminal probability analyses, and   #
# trifid analytics to be able to see between the datapoints that are explicitely    #
# stated in a conventional dataset. It also mitigates issues related to the Oz      #
# factor by making it resilient under environmental anomlaies.                      #
#####################################################################################
def liminal_parser(s1, s2, n1, n2, a1, a2,
                   d1, d2, f1, f2, o1, o2,
                   r1, r2, u1, u2, t1, t2,
                   e1, e2, b1, b2, c1, c2,
                   g1, g2, h1, h2, m1, m2,
                   p1, p2, q1, q2, v1, v2,
                   w1, w2,         x1, x2)
                                   
  s  = [s1, s2]; n  = [n1, n2]; a  = [a1, a2];
  d  = [d1, d2]; f  = [f1, f2]; o  = [o1, o2];
  r  = [r1, r2]; u  = [u1, u2]; t  = [t1, t2];
  e  = [e1, e2]; b  = [b1, b2]; c  = [c1, c2];
  g  = [g1, g2]; h  = [h1, h2]; m  = [m1, m2];
  pu = [p1, p2]; q  = [q1, q2]; v  = [v1, v2];
  w  = [w1, w2]; x  = [x1, x2]

  symbols = [[
    [[s[0], r[0]], [n[0], o[0]], [a[0], f[0]]], [[ e[0], v[0]], [b[0], q[0]], [c[0], pu[0]]], [[w[0], t[0]], [x[0], u[0]], [s[0], r[0]]],
    [[d[0], d[0]], [f[0], a[0]], [o[0], n[0]]], [[ g[0], g[0]], [h[0], h[0]], [m[0],  m[0]]], [[n[0], o[0]], [a[0], f[0]], [d[0], d[0]]],
    [[r[0], s[0]], [u[0], x[0]], [t[0], w[0]]], [[pu[0], e[0]], [q[0], b[0]], [v[0],  c[0]]], [[f[0], a[0]], [o[0], n[0]], [r[0], s[0]]],
  ], [
    [[w[0], t[0]], [x[0], u[0]], [s[0], r[0]]], [[s[0], r[0]], [n[0], o[0]], [a[0], f[0]]], [[ e[0], v[0]], [b[0], q[0]], [c[0], pu[0]]],
    [[n[0], o[0]], [a[0], f[0]], [d[0], d[0]]], [[d[0], d[0]], [f[0], a[0]], [o[0], n[0]]], [[ g[0], g[0]], [h[0], h[0]], [m[0],  m[0]]],
    [[f[0], a[0]], [o[0], n[0]], [r[0], s[0]]], [[r[0], s[0]], [u[0], x[0]], [t[0], w[0]]], [[pu[0], e[0]], [q[0], b[0]], [v[0],  c[0]]],
  ], [
    [[ e[0], v[0]], [b[0], q[0]], [c[0], pu[0]]], [[w[0], t[0]], [x[0], u[0]], [s[0], r[0]]], [[s[0], r[0]], [n[0], o[0]], [a[0], f[0]]],
    [[ g[0], g[0]], [h[0], h[0]], [m[0],  m[0]]], [[n[0], o[0]], [a[0], f[0]], [d[0], d[0]]], [[d[0], d[0]], [f[0], a[0]], [o[0], n[0]]],
    [[pu[0], e[0]], [q[0], b[0]], [v[0],  c[0]]], [[f[0], a[0]], [o[0], n[0]], [r[0], s[0]]], [[r[0], s[0]], [u[0], x[0]], [t[0], w[0]]],
  ]]
  
  descriptions = [[
    [[s[1], r[1]], [n[1], o[1]], [a[1], f[1]]], [[ e[1], v[1]], [b[1], q[1]], [c[1], pu[1]]], [[w[1], t[1]], [x[1], u[1]], [s[1], r[1]]],
    [[d[1], d[1]], [f[1], a[1]], [o[1], n[1]]], [[ g[1], g[1]], [h[1], h[1]], [m[1],  m[1]]], [[n[1], o[1]], [a[1], f[1]], [d[1], d[1]]],
    [[r[1], s[1]], [u[1], x[1]], [t[1], w[1]]], [[pu[1], e[1]], [q[1], b[1]], [v[1],  c[1]]], [[f[1], a[1]], [o[1], n[1]], [r[1], s[1]]],
  ], [
    [[w[1], t[1]], [x[1], u[1]], [s[1], r[1]]], [[s[1], r[1]], [n[1], o[1]], [a[1], f[1]]], [[ e[1], v[1]], [b[1], q[1]], [c[1], pu[1]]],
    [[n[1], o[1]], [a[1], f[1]], [d[1], d[1]]], [[d[1], d[1]], [f[1], a[1]], [o[1], n[1]]], [[ g[1], g[1]], [h[1], h[1]], [m[1],  m[1]]],
    [[f[1], a[1]], [o[1], n[1]], [r[1], s[1]]], [[r[1], s[1]], [u[1], x[1]], [t[1], w[1]]], [[pu[1], e[1]], [q[1], b[1]], [v[1],  c[1]]],
  ], [
    [[ e[1], v[1]], [b[1], q[1]], [c[1], pu[1]]], [[w[1], t[1]], [x[1], u[1]], [s[1], r[1]]], [[s[1], r[1]], [n[1], o[1]], [a[1], f[1]]],
    [[ g[1], g[1]], [h[1], h[1]], [m[1],  m[1]]], [[n[1], o[1]], [a[1], f[1]], [d[1], d[1]]], [[d[1], d[1]], [f[1], a[1]], [o[1], n[1]]],
    [[pu[1], e[1]], [q[1], b[1]], [v[1],  c[1]]], [[f[1], a[1]], [o[1], n[1]], [r[1], s[1]]], [[r[1], s[1]], [u[1], x[1]], [t[1], w[1]]],
  ]]
  
  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]
  lim_options = [0, 1]
  
  ## Selects the current row
  cur_row = row_options.sample
  
  ## Selects the current collumn
  cur_col = col_options.sample

  ## Selects the current array index
  cur_arr = arr_options.sample
  
  ## Selects one of two possible states for any given index.
  cur_lim = lim_options.sample
  
  current_symbol      = symbols[cur_row][cur_arr][cur_col][cur_lim]
  current_description = descriptions[cur_row][cur_arr][cur_col][cur_lim]
  current_probability = 0.33 * -0.33 * 0.33
  current_information = "#{current_symbol}, '#{current_description}'"
  
  File.write("data/statistics/probability/current_probability.txt", "#{current_probability}")
  File.write("data/statistics/label/current_information.txt",            current_information)
  File.write("data/statistics/description/current_description.txt",      current_description)
  File.write("data/statistics/symbol/current_label.txt",                 current_symbol)
end

#####################################################################################
#                               Night Walker Algorithm                              #
#####################################################################################
# This is designed to monitor and analyze patterns in information as if one were    #
# trying to blend in with "night walkers" whom take jobs no other types of people   #
# will take. In Uploaded Fairy, the connation is jobs like Le Famille Guillotine,   #
# other other types of morbid professions.                                          #
#                                                                                   #
# Of my machine learning software, this is the only one made explicitely for the    #
# purpose of monitoring a specific family in my alternate history timeline for my   #
# science fiction, such as monitoring the gap between their daywalker and night     #
# walker activities.                                                                #
#####################################################################################
def nuitmarcheuse(n1, n2, i1, i2, g1, g2,
                  h1, h2, t1, t2, w1, w2,
                  a1, a2, l1, l2, k1, k2,
                  e1, e2, r1, r2, b1, b2,
                  c1, c2, d1, d2, f1, f2,
                  j1, j2, m1, m2, o1, o2,
                  p1, p2, q1, q2, s1, s2,
                  u1, u2,         v1, v2) # Lines 37, 41, 44, 49, 53

  n = [n1, n2]
  i = [i1, i2]
  g = [g1, g2]
  h = [h1, h2]
  t = [t1, t2]
  w = [w1, w2]
  a = [a1, a2]
  l = [l1, l2]
  k = [k1, k2]
  e = [e1, e2]
  r = [r1, r2]
  b = [b1, b2]
  c = [c1, c2]
  d = [d1, d2]
  f = [f1, f2]
  j = [j1, j2]
  m = [m1, m2]
  o = [o1, o2]
  p = [p1, p2]
  q = [q1, q2]
  s = [s1, s2]
  u = [u1, u2]
  v = [v1, v2]
  
  nightwalker_symbols = [[
    [n[0], i[0], g[0]], [e[0], r[0], a[0]], [j[0], k[0], m[0]],
    [h[0], t[0], w[0]], [b[0], c[0], d[0]], [o[0], p[0], q[0]],
    [a[0], l[0], k[0]], [e[0], f[0], g[0]], [s[0], u[0], v[0]],
  ], [
    [j[0], k[0], m[0]], [n[0], i[0], g[0]], [e[0], r[0], a[0]],
    [o[0], p[0], q[0]], [h[0], t[0], w[0]], [b[0], c[0], d[0]],
    [s[0], u[0], v[0]], [a[0], l[0], k[0]], [e[0], f[0], g[0]],
  ], [
    [e[0], r[0], a[0]], [j[0], k[0], m[0]], [n[0], i[0], g[0]],
    [b[0], c[0], d[0]], [o[0], p[0], q[0]], [h[0], t[0], w[0]],
    [e[0], f[0], g[0]], [s[0], u[0], v[0]], [a[0], l[0], k[0]],
  ]]

  nightwalker_descriptions = [[
    [n[1], i[1], g[1]], [e[1], r[1], a[1]], [j[1], k[1], m[1]],
    [h[1], t[1], w[1]], [b[1], c[1], d[1]], [o[1], p[1], q[1]],
    [a[1], l[1], k[1]], [e[1], f[1], g[1]], [s[1], u[1], v[1]],
  ], [
    [j[1], k[1], m[1]], [n[1], i[1], g[1]], [e[1], r[1], a[1]],
    [o[1], p[1], q[1]], [h[1], t[1], w[1]], [b[1], c[1], d[1]],
    [s[1], u[1], v[1]], [a[1], l[1], k[1]], [e[1], f[1], g[1]],
  ], [
    [e[1], r[1], a[1]], [j[1], k[1], m[1]], [n[1], i[1], g[1]],
    [b[1], c[1], d[1]], [o[1], p[1], q[1]], [h[1], t[1], w[1]],
    [e[1], f[1], g[1]], [s[1], u[1], v[1]], [a[1], l[1], k[1]],
  ]]

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  current_symbol      = nightwalker_symbols[cur_row][cur_arr][cur_col]
  current_description = nightwalker_descriptions[cur_row][cur_arr][cur_col]
  current_probability = 0.33 * 0.33 * 0.33
  current_information = "#{current_symbol}, '#{current_description}'"
end

def marcheuse_de_jour(d1, d2, a1, a2, y1, y2,
                      w1, w2, l1, l2, k1, k2,
                      e1, e2, r1, r2, b1, b2,
                      c1, c2, f1, f2, g1, g2,
                      h1, h2, i1, i2, j1, j2,
                      m1, m2, n1, n2, o1, o2,
                      p1, p2, q1, q2, s1, s2,
                      t1, t2, u1, u2, v1, v2,
                      x1, x2)
                      
  d = [ d1, d2 ]; a = [ a1, a2 ]; y = [ y1, y2 ];
  w = [ w1, w2 ]; l = [ l1, l2 ]; k = [ k1, k2 ];
  e = [ e1, e2 ]; r = [ r1, r2 ]; b = [ b1, d2 ];
  c = [ c1, c2 ]; f = [ f1, f2 ]; g = [ g1, g2 ];
  h = [ h1, h2 ]; i = [ i1, o2 ]; j = [ j1, j2 ];
  m = [ m1, m2 ]; n = [ n1, n2 ]; o = [ o1, o2 ];
  p = [ p1, p2 ]; q = [ q1, q2 ]; s = [ s1, s2 ];
  t = [ t1, t2 ]; u = [ u1, u2 ]; v = [ v1, b2 ];
  x = [ x1, x2 ]

  daywalker_symbols = [[
    [d[0], a[0], y[0]], [c[0], f[0], g[0]], [p[0], q[0], s[0]],
    [w[0], l[0], k[0]], [h[0], i[0], j[0]], [t[0], u[0], v[0]],
    [e[0], r[0], b[0]], [m[0], n[0], o[0]], [w[0], x[0], y[0]],
  ], [
    [p[0], q[0], s[0]], [d[0], a[0], y[0]], [c[0], f[0], g[0]],
    [t[0], u[0], v[0]], [w[0], l[0], k[0]], [h[0], i[0], j[0]],
    [w[0], x[0], y[0]], [e[0], r[0], b[0]], [m[0], n[0], o[0]],
  ], [
    [c[0], f[0], g[0]], [p[0], q[0], s[0]], [d[0], a[0], y[0]],
    [h[0], i[0], j[0]], [t[0], u[0], v[0]], [w[0], l[0], k[0]],
    [m[0], n[0], o[0]], [w[0], x[0], y[0]], [e[0], r[0], b[0]],
  ]]
  
  daywalker_descriptions = [[
    [d[1], a[1], y[1]], [c[1], f[1], g[1]], [p[1], q[1], s[1]],
    [w[1], l[1], k[1]], [h[1], i[1], j[1]], [t[1], u[1], v[1]],
    [e[1], r[1], b[1]], [m[1], n[1], o[1]], [w[1], x[1], y[1]],
  ], [
    [p[1], q[1], s[1]], [d[1], a[1], y[1]], [c[1], f[1], g[1]],
    [t[1], u[1], v[1]], [w[1], l[1], k[1]], [h[1], i[1], j[1]],
    [w[1], x[1], y[1]], [e[1], r[1], b[1]], [m[1], n[1], o[1]],
  ], [
    [c[1], f[1], g[1]], [p[1], q[1], s[1]], [d[1], a[1], y[1]],
    [h[1], i[1], j[1]], [t[1], u[1], v[1]], [w[1], l[1], k[1]],
    [m[1], n[1], o[1]], [w[1], x[1], y[1]], [e[1], r[1], b[1]],
  ]]

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  current_symbol      = daywalker_symbols[cur_row][cur_arr][cur_col]
  current_description = daywalker_descriptions[cur_row][cur_arr][cur_col]
  current_probability = 0.33 * 0.33 * 0.33
  current_information = "#{current_symbol}, '#{current_description}'"

  File.write("data/statistics/probability/current_probability.txt", "#{current_probability}")
  File.write("data/statistics/label/current_information.txt",       current_information)
end

#####################################################################################
#                                  Devesfukyana                                     #
#####################################################################################
# Derived from the term dream-scanner, is in referenced to a subset of paranormal   #
# detectives that studying subconcious patterns in dissidents in order to see what  #
# actions they will plan next. In context, Nadine was monitored by one that         #
# eventually defected from Tanner.                                                  #
#####################################################################################
def devesfukyana ( d1, d2, e1, e2, v1, v2,
                   s1, s2, f1, f2, u1, u2,
                   k1, k2, y1, y2, a1, a2,
                   n1, n2, b1, b2, c1, c2,
                   g1, g2, h1, h2, i1, i2,
                   j1, j2, m1, m2, o1, o2,
                   p1, p2, q1, q2, t1, t2,
                   w1, w2, x1, x2, z1, z2 )

  d = [ d1, d2 ]; e  = [ e1, e2 ]; v = [ v1, v2 ];
  s = [ s1, s2 ]; f  = [ f1, f2 ]; u = [ u1, u2 ];
  k = [ k1, k2 ]; y  = [ y1, y2 ]; a = [ a1, a2 ];
  n = [ n1, n2 ]; b  = [ b1, b2 ]; c = [ c1, c2 ];
  g = [ g1, g2 ]; h  = [ h1, h2 ]; i = [ i1, i2 ];
  j = [ j1, j2 ]; k  = [ k1, k2 ]; m = [ m1, m2 ];
  o = [ o1, o2 ]; pu = [ p1, p2 ]; q = [ q1, q2 ];
  t = [ t1, t2 ]; w  = [ w1, w2 ]; x = [ x1, x2 ];
  z = [ z1, z2 ]
  
  symbols = [[
    [ d[0], e[0], v[0] ], [ n[0], b[0], c[0] ], [ o[0], pu[0], q[0] ],
    [ s[0], f[0], u[0] ], [ g[0], h[0], i[0] ], [ t[0],  w[0], x[0] ],
    [ k[0], y[0], a[0] ], [ j[0], l[0], m[0] ], [ z[0],  d[0], e[0] ],
  ], [
    [ o[0], pu[0], q[0] ], [ d[0], e[0], v[0] ], [ n[0], b[0], c[0] ],
    [ t[0],  w[0], x[0] ], [ s[0], f[0], u[0] ], [ g[0], h[0], i[0] ],
    [ z[0],  d[0], e[0] ], [ k[0], y[0], a[0] ], [ j[0], l[0], m[0] ],
  ], [
    [ n[0], b[0], c[0] ], [ o[0], pu[0], q[0] ], [ d[0], e[0], v[0] ],
    [ g[0], h[0], i[0] ], [ t[0],  w[0], x[0] ], [ s[0], f[0], u[0] ],
    [ j[0], l[0], m[0] ], [ z[0],  d[0], e[0] ], [ k[0], y[0], a[0] ],
  ]]

  descriptions = [[
    [ d[1], e[1], v[1] ], [ n[1], b[1], c[1] ], [ o[1], pu[1], q[1] ],
    [ s[1], f[1], u[1] ], [ g[1], h[1], i[1] ], [ t[1],  w[1], x[1] ],
    [ k[1], y[1], a[1] ], [ j[1], l[1], m[1] ], [ z[1],  d[1], e[1] ],
  ], [
    [ o[1], p[1], q[1] ], [ d[1], e[1], v[1] ], [ n[1], b[1], c[1] ],
    [ t[1], w[1], x[1] ], [ s[1], f[1], u[1] ], [ g[1], h[1], i[1] ],
    [ z[1], d[1], e[1] ], [ k[1], y[1], a[1] ], [ j[1], l[1], m[1] ],
  ], [
    [ n[1], b[1], c[1] ], [ o[1], p[1], q[1] ], [ d[1], e[1], v[1] ],
    [ g[1], h[1], i[1] ], [ t[1], w[1], x[1] ], [ s[1], f[1], u[1] ],
    [ j[1], l[1], m[1] ], [ z[1], d[1], e[1] ], [ k[1], y[1], a[1] ],
  ]]

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  current_symbol      = symbols[cur_row][cur_arr][cur_col]
  current_description = descriptions[cur_row][cur_arr][cur_col]
  current_probability = 0.33 * 0.33 * 0.33
  current_information = "[:#{current_symbol}, '#{current_description}']"
  
  File.write("data/statistics/probability/current_probability.txt", "#{current_probability}")
  File.write("data/statistics/label/current_information.txt",            current_information)
  File.write("data/statistics/description/current_description.txt",      current_description)
  File.write("data/statistics/symbol/current_label.txt",                 current_symbol)
end

#####################################################################################
#                                  Gurasmitene                                      #
#####################################################################################
# Literally "Grass Mittens", which roughly translates to having a green thumb, or   #
# alternatively sleeping in the grass. This charts uses Gurasmittene as a keyword   #
# for a search operation                                                            #
#####################################################################################
def gurasmitene ( g1, g2, u1, u2, r1, r2,
                  a1, a2, s1, s2, m1, m2,
                  i1, i2, t1, t2, e1, e2,
                  b1, b2, c1, c2, d1, d2,
                  f1, f2, h1, h2, j1, j2,
                  n1, n2, k1, k2, p1, p2,
                  q1, q2, v1, v2, x1, x2,
                          z1, z2, o1, o2)

  g = [ g1, g2 ]; u = [ u1, u2 ]; r  = [ r1, r2 ];
  a = [ a1, a2 ]; s = [ s1, s2 ]; m  = [ m1, m2 ];
  i = [ i1, i2 ]; t = [ t1, t2 ]; e  = [ e1, e2 ];
  b = [ b1, b2 ]; c = [ c1, c2 ]; d  = [ d1, d2 ];
  f = [ f1, f2 ]; h = [ h1, h2 ]; j  = [ j1, j2 ];
  n = [ n1, n2 ]; k = [ k1, k2 ]; pu = [ p1, p2 ];
  q = [ q1, q2 ]; v = [ v1, v2 ]; x  = [ x1, x2 ];
                  z = [ z1, z2 ]; o  = [ o1, o2 ];

  symbols = [[
    [ g[0], u[0], r[0] ], [ b[0], c[0],  d[0] ], [ q[0], u[0], v[0] ],
    [ a[0], s[0], m[0] ], [ f[0], h[0],  j[0] ], [ x[0], z[0], o[0] ],
    [ i[0], t[0], e[0] ], [ n[0], k[0], pu[0] ], [ g[0], u[0], r[0] ],
  ], [
    [ q[0], u[0], v[0] ], [ g[0], u[0], r[0] ], [ b[0], c[0],  d[0] ],
    [ x[0], z[0], o[0] ], [ a[0], s[0], m[0] ], [ f[0], h[0],  j[0] ],
    [ g[0], u[0], r[0] ], [ i[0], t[0], e[0] ], [ n[0], k[0], pu[0] ],
  ], [
    [ b[0], c[0],  d[0] ], [ q[0], u[0], v[0] ], [ g[0], u[0], r[0] ],
    [ f[0], h[0],  j[0] ], [ x[0], z[0], o[0] ], [ a[0], s[0], m[0] ],
    [ n[0], k[0], pu[0] ], [ g[0], u[0], r[0] ], [ i[0], t[0], e[0] ],
  ]]

  descriptions = [[
    [ g[1], u[1], r[1] ], [ b[1], c[1],  d[1] ], [ q[1], u[1], v[1] ],
    [ a[1], s[1], m[1] ], [ f[1], h[1],  j[1] ], [ x[1], z[1], o[1] ],
    [ i[1], t[1], e[1] ], [ n[1], k[1], pu[1] ], [ g[1], u[1], r[1] ],
  ], [
    [ q[1], u[1], v[1] ], [ g[1], u[1], r[1] ], [ b[1], c[1],  d[1] ],
    [ x[1], z[1], o[1] ], [ a[1], s[1], m[1] ], [ f[1], h[1],  j[1] ],
    [ g[1], u[1], r[1] ], [ i[1], t[1], e[1] ], [ n[1], k[1], pu[1] ],
  ], [
    [ b[1], c[1],  d[1] ], [ q[1], u[1], v[1] ], [ g[1], u[1], r[1] ],
    [ f[1], h[1],  j[1] ], [ x[1], z[1], o[1] ], [ a[1], s[1], m[1] ],
    [ n[1], k[1], pu[1] ], [ g[1], u[1], r[1] ], [ i[1], t[1], e[1] ],
  ]]
  
  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  current_symbol      = symbols[cur_row][cur_arr][cur_col]
  current_description = descriptions[cur_row][cur_arr][cur_col]
  current_probability = 0.33 * 0.33 * 0.33
  current_information = "[:#{current_symbol}, '#{current_description}']"
  
  File.write("data/statistics/probability/current_probability.txt", "#{current_probability}")
  File.write("data/statistics/label/current_information.txt",            current_information)
  File.write("data/statistics/description/current_description.txt",      current_description)
  File.write("data/statistics/symbol/current_label.txt",                 current_symbol)
end

#####################################################################################
#                                  Sanadforutese                                    #
#####################################################################################
# Derived from the term for sand fortress, a kind of shanty town or fortress made   #
# out of crashed spaceships.                                                        #
#####################################################################################
def sanadforutese_unit( s1, s2, a1, a2, n1, n2,
                        d1, d2, f1, f2, o1, o2,
                        r1, r2, u1, u2, t1, t2,
                        b1, b2, c1, c2, g1, g2,
                        h1, h2, j1, j2, k1, k2,
                        e1, e2, m1, m2, p1, p2,
                        q1, q2, v1, v2, x1, x2,
                                        z1, z2)
 
  b = [ b1, b2 ]; c  = [ c1, c2 ]; d = [ d1, d2 ];
  f = [ f1, f2 ]; g  = [ g1, g2 ]; h = [ h1, h2 ];
  j = [ j1, j2 ]; k  = [ k1, k2 ]; m = [ m1, m2 ];
  n = [ n1, n2 ]; pu = [ p1, p2 ]; q = [ q1, q2 ];
  r = [ r1, r2 ]; s  = [ s1, s2 ]; t = [ t1, t2 ];
  u = [ u1, u2 ]; v  = [ v1, v2 ]; x = [ x1, x2 ];
  z = [ z1, z2 ]; a  = [ a1, a2 ]; e = [ e1, e2 ];
  o = [ o1, o2 ]

  symbols = [[
    [s[0], a[0], n[0]],  [b[0], c[0],  g[0]],  [q[0], v[0], x[0]],
    [d[0], f[0], o[0]],  [h[0], j[0],  k[0]],  [z[0], s[0], a[0]],
    [r[0], u[0], t[0]],  [e[0], m[0], pu[0]],  [n[0], d[0], f[0]],
  ], [
    [q[0], v[0], x[0]],  [s[0], a[0], n[0]],  [b[0], c[0],  g[0]],
    [z[0], s[0], a[0]],  [d[0], f[0], o[0]],  [h[0], j[0],  k[0]],
    [n[0], d[0], f[0]],  [r[0], u[0], t[0]],  [e[0], m[0], pu[0]],
  ], [
    [b[0], c[0],  g[0]],  [q[0], v[0], x[0]],  [s[0], a[0], n[0]],
    [h[0], j[0],  k[0]],  [z[0], s[0], a[0]],  [d[0], f[0], o[0]],
    [e[0], m[0], pu[0]],  [n[0], d[0], f[0]],  [r[0], u[0], t[0]],
  ]]
  
  descriptions = [[
    [s[1], a[1], n[1]],  [b[1], c[1],  g[1]],  [q[1], v[1], x[0]],
    [d[1], f[1], o[1]],  [h[1], j[1],  k[1]],  [z[1], s[1], a[0]],
    [r[1], u[1], t[1]],  [e[1], m[1], pu[1]],  [d[1], f[1], o[0]],
  ], [
    [q[1], v[1], x[1]],  [s[1], a[1], n[1]],  [b[1], c[1],  g[0]],
    [z[1], s[1], a[1]],  [d[1], f[1], o[1]],  [h[1], j[1],  k[0]],
    [d[1], f[1], o[1]],  [r[1], u[1], t[1]],  [e[1], m[1], pu[0]],
  ], [
    [b[1], c[1],  g[1]],  [q[1], v[1], x[1]],  [s[1], a[1], n[1]],
    [h[1], j[1],  k[1]],  [z[1], s[1], a[1]],  [d[1], f[1], o[1]],
    [e[1], m[1], pu[1]],  [d[1], f[1], o[1]],  [r[1], u[1], t[1]],
  ]]
  
  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  current_symbol      = symbols[cur_row][cur_arr][cur_col]
  current_description = descriptions[cur_row][cur_arr][cur_col]
  current_probability = 0.33 * -0.33 * 0.33
  current_information = "[:#{current_symbol}, '#{current_description}']"
  
  File.write("data/statistics/probability/current_probability.txt", "#{current_probability}")
  File.write("data/statistics/label/current_information.txt",            current_information)
  File.write("data/statistics/description/current_description.txt",      current_description)
  File.write("data/statistics/symbol/current_label.txt",                 current_symbol)
end

#####################################################################################
#                                  Seveniripura                                     #
#####################################################################################
# Souvenir En Ripurei - Playing the epilogue of a "side character" through the path #
# of their own memories.                                                            #
#                                                                                   #
# This is done to monitor to see what other people in a person's life might be      #
# important, even if they don't necessarily acknowledge an explicit relationship.   #
#####################################################################################
# You need fifty datapoints in order to train this algorithm.
def suveniripura(s1, s2, u1, u2, v1, v2,
                 e1, e2, n1, n2, i1, i2,
                 r1, r2, p1, p2, a1, a2,
                 b1, b2, c1, c2, d1, d2,
                 f1, f2, g1, g2, h1, h2,
                 j1, j2, k1, k2, m1, m2,
                 o1, o2, q1, q2, t1, t2,
                 w1, w2, x1, x2, y1, y2,
                 z1, z2)

  s = [ s1, s2 ]; u  = [ u1, u2 ]; v = [ v1, v2 ];
  e = [ e1, e2 ]; n  = [ n1, n2 ]; i = [ i1, i2 ];
  r = [ r1, r2 ]; pu = [ p1, p2 ]; a = [ a1, a2 ];
  b = [ b1, b2 ]; c  = [ c1, c2 ]; d = [ d1, d2 ];
  f = [ f1, f2 ]; g  = [ g1, g2 ]; h = [ h1, h2 ];
  j = [ j1, j2 ]; k  = [ k1, k2 ]; m = [ m1, m2 ];
  o = [ o1, o2 ]; q  = [ q1, q2 ]; t = [ t1, t2 ];
  w = [ w1, w2 ]; x  = [ x1, x2 ]; y = [ y1, y2 ];
  z = [ z1, z2 ]

  symbols = [[
    [ s[0],  u[0], v[0] ], [ b[0], c[0], d[0] ], [ o[0], q[0], t[0] ],
    [ e[0],  n[0], i[0] ], [ f[0], g[0], h[0] ], [ w[0], x[0], y[0] ],
    [ r[0], pu[0], a[0] ], [ j[0], k[0], m[0] ], [ z[0], s[0], u[0] ],
  ], [
    [ o[0], q[0], t[0] ], [ s[0],  u[0], v[0] ], [ b[0], c[0], d[0] ],
    [ w[0], x[0], y[0] ], [ e[0],  n[0], i[0] ], [ f[0], g[0], h[0] ],
    [ z[0], s[0], u[0] ], [ r[0], pu[0], a[0] ], [ j[0], k[0], m[0] ],
  ], [
    [ b[0], c[0], d[0] ], [ o[0], q[0], t[0] ], [ s[0],  u[0], v[0] ],
    [ f[0], g[0], h[0] ], [ w[0], x[0], y[0] ], [ e[0],  n[0], i[0] ],
    [ j[0], k[0], m[0] ], [ z[0], s[0], u[0] ], [ r[0], pu[0], a[0] ],
  ]]
  
  descriptions = [[
    [ s[1],  u[1], v[1] ], [ b[1], c[1], d[1] ], [ o[1], q[1], t[1] ],
    [ e[1],  n[1], i[1] ], [ f[1], g[1], h[1] ], [ w[1], x[1], y[1] ],
    [ r[1], pu[1], a[1] ], [ j[1], k[1], m[1] ], [ z[1], s[1], u[1] ],
  ], [
    [ o[1], q[1], t[1] ], [ s[1],  u[1], v[1] ], [ b[1], c[1], d[1] ],
    [ w[1], x[1], y[1] ], [ e[1],  n[1], i[1] ], [ f[1], g[1], h[1] ],
    [ z[1], s[1], u[1] ], [ r[1], pu[1], a[1] ], [ j[1], k[1], m[1] ],
  ], [
    [ b[1], c[1], d[1] ], [ o[1], q[1], t[1] ], [ s[1],  u[1], v[1] ],
    [ f[1], g[1], h[1] ], [ w[1], x[1], y[1] ], [ e[1],  n[1], i[1] ],
    [ j[1], k[1], m[1] ], [ z[1], s[1], u[1] ], [ r[1], pu[1], a[1] ],
  ]]
  
  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  current_symbol      = symbols[cur_row][cur_arr][cur_col]
  current_description = descriptions[cur_row][cur_arr][cur_col]
  current_probability = 0.33 * 0.33 * 0.33
  current_information = "[:#{current_symbol}, '#{current_description}']"
  
  File.write("data/statistics/probability/current_probability.txt", "#{current_probability}")
  File.write("data/statistics/label/current_information.txt",            current_information)
  File.write("data/statistics/description/current_description.txt",      current_description)
  File.write("data/statistics/symbol/current_label.txt",                 current_symbol)
end
