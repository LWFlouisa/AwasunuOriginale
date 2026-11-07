#####################################################################################
#                            Experimental: Bequest Gauntlet                         #
#####################################################################################
# This minigame is based around the idea of running the gauntlet, which in military #
# speak was an old way of executing people aside from lining them up in a firing    #
# squad. Here the game is loosely based on my Minetest mod where a biome is         #
# corrupted by replacing normal grass with purple grey cactis ( a stand in for      #
# purple grey slime with harmful bacteria ), and healing cactus ( a stand in for    #
# natural anti-biotic plants that evolved in this environment to fend off the toxic #
# corrupted.                                                                        #
#                                                                                   #
# AI and Player Guillotine are my twist on hangman where instead of risking hanging #
# your player risks being guillotined by the military or other faction that has     #
# captured you. You have a certain amount of guesses till its game over, and that   #
# where it diverges from Roguelikes with soft permadeath.                           #
#                                                                                   #
# This is mostly retained for historical archival purposes, and the real one will   #
# refocus on running a gauntlet after swerving your car off the side of a cliff     #
# when off work from a Japanese car dealer in French controlled US.                 #
#####################################################################################
module BequestGauntlet
  class Yumemoire
    def self.initialize
      $player_hp      = 10
      $healer_cactus  = 10
      $gunmetal_boots = 10
      $alien_gunmetal =  0

      $trap_cactus_placed   = 10
      $trap_cactus_obtained = 0
    end

    def self.puzzle_game
      loop do
        #####################################################################################
        #                                   Conditions                                      #
        #####################################################################################
        # Checks if you have healer cactus or gunmetal boots. And if out of gunmetal boots  #
        # then allows you to make more gunmetal boots.                                      #
        #####################################################################################
        if $player_hp < 1
          puts "You died"

          sleep(1.5)

          system("clear")

          abort
        else
          puts "Escape the desert of corruption sand..."
        end

        if $healer_cactus < 1
          puts "You're all out of healing cactus. Now you can't heal after walking into traps."
        else
          puts "You have #{$healer_cactus} healing cactus left."
        end

        if $gunmetal_boots < 1
          puts "You're all out of gunmetal boot blocks. Now you can't escape without crafting more."
        else
          puts "You have #{$gunmetal_boots} gunmetal boots left."
        end

        print "Would you like to make some gunmetal boots? << "; query = gets.chomp

        if query == "make boots"
          print "Do you have alien gunmetal? <<"; query2 = gets.chomp

          if query == "Yes"
            $alien_gunmetal       = $alien_gunmetal - 1
            $trap_cactus_obtained = $trap_cactus_obtained - 1
            $gunmetal_boots       = $gunmetal_boots + 1

            puts "You've obtained one block of gunmetal boots."
          else
            puts "Try again when you have alien gunmetal."
          end
        else
          puts "Be careful not to run out of gunmetal boots."
        end

        #####################################################################################
        #                                 Tile State                                        #
        #####################################################################################
        # The exact tile you walk on is iterate ( you walk through each possible state ).   #
        # If your tile and the computer's tile it thinks your on matches, you die.          #
        #                                                                                   #
        # Otherwise if the game bases whether it heals or damages you based on what your    #
        # current tile is.                                                                  #
        #####################################################################################
        tile_state = {
          "heal"    => "nuetral",
          "nuetral" =>  "damage",
          "damage"  =>    "heal",
        }

        tile_possibilities = [
          [["heal",    "heal"], ["heal",    "nuetral"], ["heal",    "damage"]],
          [["nuetral", "heal"], ["nuetral", "nuetral"], ["nuetral", "damage"]],
          [["damage",  "heal"], ["damage",  "nuetral"], ["damage",  "damage"]],
        ], [
          [["damage",  "heal"], ["damage",  "nuetral"], ["damage",  "damage"]],
          [["heal",    "heal"], ["heal",    "nuetral"], ["heal",    "damage"]],
          [["nuetral", "heal"], ["nuetral", "nuetral"], ["nuetral", "damage"]],
        ], [
          [["nuetral", "heal"], ["nuetral", "nuetral"], ["nuetral", "damage"]],
          [["damage",  "heal"], ["damage",  "nuetral"], ["damage",  "damage"]],
          [["heal",    "heal"], ["heal",    "nuetral"], ["heal",    "damage"]],
        ]

        context_window = File.read("lib/player/navigation/context_window.txt").to_i

        row_options = [0, 1, 2]
        col_options = [0, 1, 2]
        arr_options = [0, 1]

        cur_row = row_options.sample
        cur_col = col_options.sample
        cur_arr = arr_options.sample

        enemy_tile = tile_possibilities[context_window][cur_row][cur_col][cur_arr]

        player_tiles = [
          "heal", 
          "nuetral", 
          "damage"
        ]

        tile_index          = 0
        current_player_tile = player_tiles[tile_index]

        if current_player_tile == enemy_tile
          $player_hp = $player_hp - 1

          puts "You were damaged by a trap. You have #{$player_hp} hp left."
        else
          if    current_player_tile ==    "heal"; $player_hp = $player_hp + 1
          elsif current_player_tile == "nuetral"; puts "You managed to traverse the corrupted desert."
          elsif current_player_tile ==  "damage"; $player_hp = $player_hp - 1
          else
            puts "Unrecognized result..."
          end
        end
      end

      def self.ai_guillotine
        # alphabet = [
        #             "A", "B", "C", "D", "E",
        #             "F", "G", "H", "J", "K",
        #             "L", "M", "N",
        # 
        #             "O", "P", "Q", "R", "S",
        #             "T", "U", "V", "W", "X",
        #             "Y", "Z", ".",
        # ].to_s

        word_list = File.readlines("_data/words/word_options.txt")

                 #                                          1    1    1    1    1
                 #  1    2    3    4    5    6    7    8    9    0    1    2    3 
         keys1 = [ 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M',

                 #  1    1    1    1    1    1    2    2    2    2    2    2    2
                 #  4    5    6    7    8    9    0    1    2    3    4    5    6
                   'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z' ].shuffle

         alph_1 = keys1[0]  +  keys1[1] +  keys1[2] +  keys1[3] +  keys1[4] +  keys1[5] +  keys1[6] +  keys1[7] +  keys1[8] +
                  keys1[9]  + keys1[10] + keys1[11] + keys1[13] + keys1[13] + keys1[14] + keys1[15] + keys1[16] + keys1[17] +
                  keys1[18] + keys1[19] + keys1[20] + keys1[21] + keys1[22] + keys1[23] + keys1[24] + keys1[25]

         alph_2 = keys1[13] + keys1[14] + keys1[15] + keys1[16] + keys1[17] + keys1[18] + keys1[19] + keys1[20] +
                  keys1[21] + keys1[22] + keys1[23] + keys1[24] + keys1[25] +  keys1[0] +  keys1[1] +  keys1[2] +
                  keys1[3] +  keys1[4] +  keys1[5] +  keys1[6] +  keys1[7] +  keys1[8] +  keys1[9] + keys1[10] +
                  keys1[11] + keys1[13]

         # puts alph1
         # puts alph2

         ## Save a copy of the keys for later decryption
         open("_data/audit/keys.txt", "w") { |f|
           f.puts alph_1
           f.puts alph_2
         }

         choice_amount = word_list.size.to_i

         ai_choice = word_list.sample.to_s.strip

         #puts ai_choice

         open("_data/audit/ai_choices.txt", "a") { |f|
           f.puts ai_choice
         }

         word_prompt = ai_choice

         max = 5
         guesses = 0

         loop do
           if guesses > max
             system("clear")

             image_status = File.read("_images/guillotined/death.txt")

             puts image_status

             puts "Sister Order ran out of guesses."

             system("ruby _endgame/victory.rb")

             abort
           else
             system("clear")

             if guesses == 1
               image_status = File.read("_images/guillotined/minor.txt").strip

               puts image_status
             elsif guesses == 2
               image_status = File.read("_images/guillotined/mild.txt").strip

               puts image_status
             elsif guesses == 3
               image_status = File.read("_images/guillotined/moderate.txt").strip

               puts image_status
             elsif guesses == 4
               image_status = File.read("_images/guillotined/severe.txt").strip

               puts image_status
             elsif guesses == 5
               image_status = File.read("_images/guillotined/critical.txt").strip

               puts image_status
             end

             puts "You have #{guesses} remaining guesses."
           end

           puts word_prompt.tr alph_1, alph_2
           enemy_guesses = word_list.sample

           puts "Sister order has guessed: #{enemy_guesses}."

           if enemy_guesses == ai_choice
             puts "Sister Order has correctly guessed the chosen word."

             sleep(1.5)

             system("clear; ruby spaceshooter.rb")
           else
             puts "Sister Order guessed incorrectly!"

             guesses = guesses + 1

             sleep(1.5)
           end
        end

      end

      def self.player_guillotine
        word_list = File.readlines("_data/words/word_options.txt")
      
        keys1 = [ 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M',
                  'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z' ].shuffle
      
        alph_1 = keys1[0]  +  keys1[1] +  keys1[2] +  keys1[3] +  keys1[4] +  keys1[5] +  keys1[6] +  keys1[7] +  keys1[8] +
                 keys1[9]  + keys1[10] + keys1[11] + keys1[13] + keys1[13] + keys1[14] + keys1[15] + keys1[16] + keys1[17] +
                 keys1[18] + keys1[19] + keys1[20] + keys1[21] + keys1[22] + keys1[23] + keys1[24] + keys1[25]
      
        alph_2 = keys1[13] + keys1[14] + keys1[15] + keys1[16] + keys1[17] + keys1[18] + keys1[19] + keys1[20] +
                 keys1[21] + keys1[22] + keys1[23] + keys1[24] + keys1[25] +  keys1[0] +  keys1[1] +  keys1[2] +
                 keys1[3] +  keys1[4] +  keys1[5] +  keys1[6] +  keys1[7] +  keys1[8] +  keys1[9] + keys1[10] +
                 keys1[11] + keys1[13]
      
        ## Save a copy of the keys for later decryption
        open("_data/audit/keys.txt", "w") { |f|
          f.puts alph_1
          f.puts alph_2
        }
      
        choice_amount = word_list.size.to_i
      
        ai_choice = word_list.sample.to_s.strip
      
        puts ai_choice
      
        open("_data/audit/ai_choices.txt", "a") { |f|
          f.puts ai_choice
        }
      
        word_prompt = ai_choice
      
        max = 5
        guesses = 0
      
        loop do
          if guesses > max
            system("clear")

            image_status = File.read("_images/hanged/death.txt")

            puts image_status
       
            puts "Sister Order ran out of guesses."
       
            system("ruby _endgame.rb/victory.rb")
       
            abort
          else
            system("clear")
        
            if guesses == 1
              image_status = File.read("_images/guillotined/minor.txt").strip
        
              puts image_status
            elsif guesses == 2
              image_status = File.read("_images/guillotined/mild.txt").strip

              puts image_status
            elsif guesses == 3
              image_status = File.read("_images/guillotined/moderate.txt").strip

              puts image_status
            elsif guesses == 4
              image_status = File.read("_images/guillotined/severe.txt").strip

              puts image_status
            elsif guesses == 5
              image_status = File.read("_images/guillotined/critical.txt").strip

              puts image_status
            end

            puts "You have #{guesses} remaining guesses."
          end

          puts word_prompt.tr alph_1, alph_2

          print "Your guess: "
          your_guess = gets.chomp

          if your_guess == ai_choice
            puts "Sister chaos has correctly guessed the chosen word."

            sleep(1.5)

            system("clear; ruby spaceshooter.rb")
          else
            puts "Sister chaos guessed incorrectly!"

            guesses = guesses + 1

            sleep(1.5)
          end
        end

      end
    end
  end
end
