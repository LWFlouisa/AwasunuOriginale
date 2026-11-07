import random
import os

#############################################################################################
#                                     Statistical Model                                     #
#############################################################################################
def get_statistics(a1, a2, b1, b2, c1, c2):
  import random
  
  a = [ a1, a2 ]
  b = [ b1, b2 ]
  c = [ c1, c2 ]
  
  matrix = [
    [[a[0], a[0], a[0]],
     [a[0], a[0], b[0]],
     [a[0], a[0], b[0]]],
     
    [[b[0], b[0], a[0]],
     [b[0], b[0], b[0]],
     [b[0], b[0], b[0]]],
     
    [[c[0], c[0], a[0]],
     [c[0], c[0], b[0]],
     [c[0], c[0], c[0]]],
  ], [
    [[a[1], a[1], a[1]],
     [a[1], a[1], b[1]],
     [a[1], a[1], b[1]]],
     
    [[b[1], b[1], a[1]],
     [b[1], b[1], b[1]],
     [b[1], b[1], b[1]]],
     
    [[c[1], c[1], a[1]],
     [c[1], c[1], b[1]],
     [c[1], c[1], c[1]]],
  ], [
    [[0.33, 0.33, 0.33],
     [0.33, 0.33, 0.33],
     [0.33, 0.33, 0.33]],
     
    [[0.33, 0.33, 0.33],
     [0.33, 0.33, 0.33],
     [0.33, 0.33, 0.33]],
     
    [[0.33, 0.33, 0.33],
     [0.33, 0.33, 0.33],
     [0.33, 0.33, 0.33]],
  ]
  
  labels           = matrix[0]
  definition       = matrix[1]
  base_probability = matrix[2]
 
  selection_probability = 0.33 * 0.33
  
  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]
  
  cur_row = random.choice(row_options)
  cur_col = random.choice(col_options)
  cur_arr = random.choice(arr_options)
  
  current_label       =      labels[cur_row][cur_col][cur_arr]
  current_description =  definition[cur_row][cur_col][cur_arr]
  
  index_probability = base_probability[cur_row][cur_col][cur_arr]
  current_probability = index_probability * selection_probability
  
  my_data = current_label, current_description, current_probability
  
  spacing = " "
  
  floating_string = str(my_data[2])
  
  #print(f"I'm confident it is not [ {current_label} {current_description} ] as it has only {current_probability} probability.")

  f"I'm confident it is not [ {current_label} {current_description} ] as it has only {current_probability} probability."
  
  # Store state between function calls
  with open('data/statistics/labels/current_label.txt', 'w') as f:
      f.write(str(current_label))

  with open('data/statistics/description/current_description.txt', 'w') as f:
      f.write(str(current_label))

  with open('data/statistics/probabilities/current_probability.txt', 'w') as f:
      f.write(str(current_probability))

#############################################################################################
#                                    Reward Structure                                       #
#############################################################################################
def proximity_de_medusahoseki(a, b):
  maximum_distance     = b
  distance_probability = a
  
  calculation = maximum_distance - ( maximum_distance * distance_probability )
  calculation = calculation #.round
  
  print("Distance from Medusahoseki ( Medusa Gem ): " + f"{calculation}")

def proximity_de_nemedusahoseki(a, b):
  maximum_distance     = b
  distance_probability = 1 - a
  
  calculation = maximum_distance - ( maximum_distance * distance_probability )
  calculation = calculation #.round
  
  print("Distance from Nemedusahoseki ( Salamander Riding Goat ): " + f"{calculation}")

def proximity_de_memorie(a):
  year_period = 12
  
  calculation = 12 - ( 12 * a )
  calculation = calculation #.round
  
  print("this memory was from a prior " + f"{calculation}" + " year period.")

def dynamic_reward_allocation():
  import random

  symbol_file = open("data/statistics/labels/current_label.txt")
  description_file = open("data/statistics/description/current_description.txt")

  current_symbol      = symbol_file.read()
  current_probability = float(open("data/statistics/probabilities/current_probability.txt").read())
  
  if current_probability > 0.9999999999999:
    current_probability = 1 / current_probability

  current_description = description_file.read()

  increment = [3, 5, 7]

  for _ in range(random.choice(increment)):
    current_probability = current_probability + 0.015

  current_probability = str(current_probability)
    
  with open('data/statistics/description/current_description.txt', 'w') as f:
      f.write(str(current_description))

  with open('data/statistics/probabilities/current_probability.txt', 'w') as f:
      f.write(str(current_probability))

def dynamic_guilotine_allocation():
  import random

  symbol_file = open("data/statistics/labels/current_label.txt")
  description_file = open("data/statistics/description/current_description.txt")
  
  current_symbol      = symbol_file.read()
  current_probability = float(open("data/statistics/probabilities/current_probability.txt").read())
  
  if current_probability > 0.9999999999999:
    current_probability = 1 / current_probability

  current_description = description_file.read()

  increment = [3, 5, 7]

  for _ in range(random.choice(increment)):
    current_probability = current_probability - 0.15

  current_probability = str(current_probability)
    
  with open('data/statistics/labels/current_description.txt', 'w') as f:
      f.write(str(current_description))

  with open('data/statistics/probabilities/current_probability.txt', 'w') as f:
      f.write(str(current_probability))

### Japanese Control Flow
def sore_float(probability, declaration):
  if probability > 0.8:
    print(declaration)

    #proximity_de_medusahoseki(150, probability), proximity_de_memorie(probability)
    #proximity_de_nemedusahoseki(150, probability), proximity_de_memorie(probability)
  
    return True
  else:
    return False

def shikashi_float(probability, declaration):
  if probability < 0.2:
    print(declaration)

    #proximity_de_medusahoseki(150, probability), proximity_de_memorie(probability)
    #proximity_de_nemedusahoseki(150, probability), proximity_de_memorie(probability)
  
    return True
  else:    
    return False

def matawa_float(probability, declaration):
    # Guard: If NOT in range, exit immediately
    if not (0.2 < probability > 0.8):
      print(declaration)

      #proximity_de_medusahoseki(150, probability), proximity_de_memorie(probability)
      #proximity_de_nemedusahoseki(150, probability), proximity_de_memorie(probability)
    
      return True
        
    # Main logic only executes if the condition above is met
    return False

def rock_confidence():
  symbols      = [":red_rock", ":black_rock", ":normal_rock"]
  
  descriptions = ["The rock is red.",
                  "The rock is black.",
                  "The rock is brown."]
                  
  for _ in range(3):
    get_statistics(symbols[0], descriptions[0],
                   symbols[1], descriptions[1],
                   symbols[2], descriptions[2])

    dynamic_reward_allocation()
    dynamic_guilotine_allocation()
  
    current_probability = float(open("data/statistics/probabilities/current_probability.txt").read())
  
    #proximity_de_medusahoseki(150, current_probability), proximity_de_memorie(current_probability)
    #proximity_de_nemedusahoseki(150, current_probability), proximity_de_memorie(current_probability)
    
    
    sore_float(current_probability, "Cette rocher est rouge.")
    shikashi_float(current_probability, "Mais cette rocher est noir.")
    matawa_float(current_probability ,  "Sinon cette rocher n'est rouge ou noir, mais est braun.")

def paper_confidence():
  symbols      = [":white_paper", ":burnt_paper", ":ancient_manuscript"]
  
  descriptions = ["The paper is white.",
                  "The paper is burnt.",
                  "The manuscript is ancient."]
                  
  for _ in range(3):
    get_statistics(symbols[0], descriptions[0],
                   symbols[1], descriptions[1],
                   symbols[2], descriptions[2])

    dynamic_reward_allocation()
    dynamic_guilotine_allocation()
  
    current_probability = float(open("data/statistics/probabilities/current_probability.txt").read())
  
    #proximity_de_medusahoseki(150, current_probability), proximity_de_memorie(current_probability)
    #proximity_de_nemedusahoseki(150, current_probability), proximity_de_memorie(current_probability)
    
    
    sore_float(current_probability, "Cette papier est blanc.")
    shikashi_float(current_probability, "Mais cette papier est flambe.")
    matawa_float(current_probability ,  "Sinon cette paper n'est blanc ou flambe, mais est ancien.")

def scissors_confidence():
  symbols      = [":clean_scissors", ":rusted_scissors", ":used_scissors"]
  
  descriptions = ["The scissors are clean.",
                  "The scissors are rusted.",
                  "The scissors are used."]
                  
  for _ in range(3):
    get_statistics(symbols[0], descriptions[0],
                   symbols[1], descriptions[1],
                   symbols[2], descriptions[2])

    dynamic_reward_allocation()
    dynamic_guilotine_allocation()
  
    current_probability = float(open("data/statistics/probabilities/current_probability.txt").read())
  
    #proximity_de_medusahoseki(150, current_probability), proximity_de_memorie(current_probability)
    #proximity_de_nemedusahoseki(150, current_probability), proximity_de_memorie(current_probability)
    
    
    sore_float(current_probability, "Cette papier est blanc.")
    shikashi_float(current_probability, "Mais cette papier est flambe.")
    matawa_float(current_probability ,  "Sinon cette paper n'est blanc ou flambe, mais est ancien.")


#################################################################################################
#                                     Primary Game Engine                                       #
#################################################################################################
done = False

wins = 0
ties = 0
loss = 0

actions = {
  "R": "Rock",
  "P": "Paper",
  "S": "Scissors",
}

while not done:
  rock_confidence()
  paper_confidence()
  scissors_confidence()

  print(f"[WINS {wins}] [TIE {ties}] [LOSS {loss}]")

  #choice = input("Your action ( R, P, S ) ( Q To Quit ): ")
  
  player_actions = [
    [["R", "R", "R", "R", "R"],
     ["R", "R", "R", "R", "P"],
     ["R", "R", "R", "R", "S"],
     ["R", "R", "R", "R", "Q"],
     ["R", "R", "R", "R", "D"]],

    [["P", "P", "P", "P", "R"],
     ["P", "P", "P", "P", "P"],
     ["P", "P", "P", "P", "S"],
     ["P", "P", "P", "P", "Q"],
     ["P", "P", "P", "P", "D"]],

    [["S", "S", "S", "S", "R"],
     ["S", "S", "S", "S", "P"],
     ["S", "S", "S", "S", "S"],
     ["S", "S", "S", "S", "Q"],
     ["S", "S", "S", "S", "D"]],

    [["Q", "Q", "Q", "Q", "R"],
     ["Q", "Q", "Q", "Q", "P"],
     ["Q", "Q", "Q", "Q", "S"],
     ["Q", "Q", "Q", "Q", "Q"],
     ["Q", "Q", "Q", "Q", "D"]],

    [["D", "D", "D", "D", "R"],
     ["D", "D", "D", "D", "P"],
     ["D", "D", "D", "D", "S"],
     ["D", "D", "D", "D", "Q"],
     ["D", "D", "D", "D", "D"]],
  ]
  
  row_options = [0, 1, 2, 3, 4]
  col_options = [0, 1, 2, 3, 4]
  arr_options = [0, 1, 2, 3, 4]
  
  cur_row = random.choice(row_options)
  cur_col = random.choice(col_options)
  cur_arr = random.choice(arr_options)

  current_player_action = player_actions[cur_row][cur_col][cur_arr]
  
  cpu_a = "R"
  cpu_b = "P"
  cpu_c = "S"
  
  cpu_choice = [
    [[cpu_a, cpu_a, cpu_a],
     [cpu_a, cpu_a, cpu_b],
     [cpu_a, cpu_a, cpu_c]],

    [[cpu_b, cpu_b, cpu_a],
     [cpu_b, cpu_b, cpu_b],
     [cpu_b, cpu_b, cpu_c]],

    [[cpu_c, cpu_c, cpu_a],
     [cpu_c, cpu_c, cpu_b],
     [cpu_c, cpu_c, cpu_c]],
  ]
  
  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]
  
  cur_row = random.choice(row_options)
  cur_col = random.choice(col_options)
  cur_arr = random.choice(arr_options)
  
  current_cpu_choice = cpu_choice[cur_row][cur_col][cur_arr]
  
  if current_player_action == current_cpu_choice:
    print(f"Stalemate! You both chose {actions[current_cpu_choice]}")
    
    ## Adds to the tie tally.
    ties = ties + 1
  elif current_player_action == "R":
    if   current_cpu_choice == "P":
      print(f"CPU Won! You chose {actions[current_cpu_choice]}. CPU chose: {current_cpu_choice}")
      
      ## Adds to the loss tally.
      loss = loss + 1
    else:
      print(f"You Won! You chose {actions[current_cpu_choice]} CPU chose: {current_cpu_choice}")
      
      ## Adds to the victory tally.
      wins = wins + 1
  elif current_player_action == "P":
    if   current_cpu_choice == "S":
      print(f"CPU Won! You chose {actions[current_cpu_choice]}. CPU chose: {current_cpu_choice}")

      ## Adds to the loss tally.
      loss = loss + 1
    else:
      print(f"You Won! You chose {actions[current_cpu_choice]} CPU chose: {current_cpu_choice}")

      ## Adds to the victory tally.
      wins = wins + 1   
  elif current_player_action == "S":
    if   current_cpu_choice == "R":
      print(f"CPU Won! You chose {actions[current_cpu_choice]}. CPU chose: {current_cpu_choice}")

      ## Adds to the loss tally.
      loss = loss + 1
    else:
      print(f"You Won! You chose {actions[current_cpu_choice]} CPU chose: {current_cpu_choice}")

      ## Adds to the victory tally.
      wins = wins + 1
  elif current_player_action == "D":  
    os.system("python3 RockPaperScissors.py")
  elif current_player_action == "Q":
    done = True
