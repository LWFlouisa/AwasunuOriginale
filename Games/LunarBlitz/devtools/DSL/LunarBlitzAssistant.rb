def get_statistics(a1, a2, b1, b2, c1, c2)
  $factored_labels        = []
  $factored_probabilities = []

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
  
  puts "I'm confident it is not [ #{current_label} #{current_definition} ] as it has only #{current_probability} probability."
  
  $current_label       = current_label
  $current_definition  = current_definition
  $current_probability = current_probability + current_probability
  $current_information = "#{current_label} #{current_definition}"
  
  $factored_labels        = $factored_labels.append(current_label)
  $factored_probabilities = $factored_probabilities.append($current_probability)
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
