import random
import os

### French control flow
def cette_int(integer, a, b):
  if integer > 8:
    print(f"Cette {a} est {b}.")
  
    return True
  else:
    return False

def maisette_int(integer, a, b):
  if integer < 0.2:
    print(f"Maisette {a} est {b}.")
  
    return True
  else:    
    return False

def sinon_int(integer, a, b, c, d):
    # Guard: If NOT in range, exit immediately
    if not (2 < integer > 8):
      print(f"Sinon cette {a} n'est {b} ou {c}, mais cette {d}.")
    
      return False
        
    # Main logic only executes if the condition above is met
    return True

done = False

wins = 0
ties = 0
loss = 0

def measure_victory(wins):
  cette_int(wins, "victorie", "vert")
  maisette_int(wins, "victorie", "rouge")
  sinon_int(wins, "victorie", "vert", "rouge", "jaune")

def measure_ties(ties):
  cette_int(ties, "stalement", "vert")
  maisette_int(ties, "stalemate", "rouge")
  sinon_int(ties, "stalemate", "vert", "rouge", "jaune")

def measure_losses(loss):
  cette_int(loss, "demerite", "vert")
  maisette_int(loss, "demerite", "rouge")
  sinon_int(loss, "demerite", "vert", "rouge", "jaune")

actions = {
  "R": "Rock",
  "P": "Paper",
  "S": "Scissors",
}

while not done:
  print("__Assistant__")
  measure_victory(wins)
  measure_ties(ties)
  measure_losses(loss)
  
  print(" ")

  print(f"[WINS {wins}] [TIE {ties}] [LOSS {loss}]")
  
  choice = input("Your action ( R, P, S ) ( Q To Quit D To Defer ): ")
  
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
  
  if choice == current_cpu_choice:
    print(f"Stalemate! You both chose {actions[choice]}")
    
    ## Adds to the tie tally.
    ties = ties + 1
  elif choice == "R":
    if   current_cpu_choice == "P":
      print(f"CPU Won! You chose {actions[choice]}. CPU chose: {current_cpu_choice}")
      
      ## Adds to the loss tally.
      loss = loss + 1
    else:
      print(f"You Won! You chose {actions[choice]} CPU chose: {current_cpu_choice}")
      
      ## Adds to the victory tally.
      wins = wins + 1
  elif choice == "P":
    if   current_cpu_choice == "S":
      print(f"CPU Won! You chose {actions[choice]}. CPU chose: {current_cpu_choice}")

      ## Adds to the loss tally.
      loss = loss + 1
    else:
      print(f"You Won! You chose {actions[choice]} CPU chose: {current_cpu_choice}")

      ## Adds to the victory tally.
      wins = wins + 1   
  elif choice == "S":
    if   current_cpu_choice == "R":
      print(f"CPU Won! You chose {actions[choice]}. CPU chose: {current_cpu_choice}")

      ## Adds to the loss tally.
      loss = loss + 1
    else:
      print(f"You Won! You chose {actions[choice]} CPU chose: {current_cpu_choice}")

      ## Adds to the victory tally.
      wins = wins + 1
  elif choice == "D":
    os.system("python3 AIRPS.py")
  elif choice == "Q":
    done = True
