#############################################################################################################
#                                              Bequest Lineage                                              #
#############################################################################################################
module BequestLineage
  class FamilyTree  
    def self.hemato_tomato(*args)
      g1_name1, g1_name2, g1_name3,
      g2_name1, g2_name2, g2_name3, g2_name4, g2_name5,
      g3_name1, g3_name2, g3_name3, g3_name4, g3_name5 = args
	  
      # Confirmed second generational branch.
      second_generation = [[
        [[g1_name1, g1_name1],
         [g1_name1, g1_name2],
         [g1_name1, g1_name3]],
    
        [[g1_name2, g1_name1],
         [g1_name2, g1_name2],
         [g1_name2, g1_name3]],
    
        [[g1_name3, g1_name1],
         [g1_name3, g1_name2],
         [g1_name3, g1_name3]],
      ], [
        [[0.33, 0.33], [0.33, 0.33], [0.33, 0.33]],
        [[0.33, 0.33], [0.33, 0.33], [0.33, 0.33]],
        [[0.33, 0.33], [0.33, 0.33], [0.33, 0.33]],
      ]]

      ## Confirmed Third generational branches.
      third_generation_first_branch = [[
        [[g2_name1, g2_name1],
         [g2_name1, g2_name2],
         [g2_name1, g2_name3],
         [g2_name1, g2_name4],
         [g2_name1, g2_name5]],

        [[g2_name2, g2_name1],
         [g2_name2, g2_name2],
         [g2_name2, g2_name3],
         [g2_name2, g2_name4],
         [g2_name2, g2_name5]],
  
        [[g2_name3, g2_name1],
         [g2_name3, g2_name2],
         [g2_name3, g2_name3],
         [g2_name3, g2_name4],
         [g2_name3, g2_name5]],
         
        [[g2_name4, g2_name1],
         [g2_name4, g2_name2],
         [g2_name4, g2_name3],
         [g2_name4, g2_name4],
         [g2_name4, g2_name5]],
         
        [[g2_name5, g2_name1],
         [g2_name5, g2_name2],
         [g2_name5, g2_name3],
         [g2_name5, g2_name4],
         [g2_name5, g2_name5]],
      ], [
        [[0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2]],
        [[0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2]],
        [[0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2]],
        [[0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2]],
        [[0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2]],
      ]]

      third_generation_second_branch = [[
        [[g3_name1, g3_name1],
         [g3_name1, g3_name2],
         [g3_name1, g3_name3],
         [g3_name1, g3_name4],
         [g3_name1, g3_name5]],
         
        [[g3_name2, g3_name1],
         [g3_name2, g3_name2],
         [g3_name2, g3_name3],
         [g3_name2, g3_name4],
         [g3_name2, g3_name5]],
  
        [[g3_name3, g3_name1],
         [g3_name3, g3_name2],
         [g3_name3, g3_name3],
         [g3_name3, g3_name4],
         [g3_name3, g3_name5]],
         
        [[g3_name4, g3_name1],
         [g3_name4, g3_name2],
         [g3_name4, g3_name3],
         [g3_name4, g3_name4],
         [g3_name4, g3_name5]],
         
        [[g3_name5, g3_name1],
         [g3_name5, g3_name2],
         [g3_name5, g3_name3],
         [g3_name5, g3_name4],
         [g3_name5, g3_name5]],
      ], [
        [[0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2]],
        [[0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2]],
        [[0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2]],
        [[0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2]],
        [[0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2], [0.2, 0.2]],
      ]]

      ## Second Generational Data
      second_gen_names         = second_generation[0]
      second_gen_probabilities = second_generation[1]

      ## Third Generational Data
      third_gen_names_fb         = third_generation_first_branch[0]
      third_gen_probabilities_fb = third_generation_first_branch[1]

      third_gen_names_sb         = third_generation_second_branch[0]
      third_gen_probabilities_sb = third_generation_second_branch[1]

      what_generation = [0, 1]

      choose_generation = what_generation.sample

      # Chooses a name based on a random lineage from Hemato-Tomato.
      if    0 == choose_generation
        ### Character Selection
        row_options = [0, 1, 2, 3, 4]
        col_options = [0, 1, 2, 3, 4]
        arr_options = [0, 1]

        cur_row = row_options.sample
        cur_col = col_options.sample
        cur_arr = arr_options.sample

        player_name = second_gen_names[cur_row][cur_col][cur_arr]
 
  	print "You start your journey as: #{player_name}. "
		
	File.open("data/player/current_player_names.txt", "w") { |f|
          f.puts player_name
        }
      elsif 1 == choose_generation
        what_branch = [0, 1]

        chosen_branch = what_branch.sample

        if    chosen_branch == 0
          ### Character Selection
          row_options = [0, 1, 2, 3, 4]
          col_options = [0, 1, 2, 3, 4]
          arr_options = [0, 1]

          cur_row = row_options.sample
          cur_col = col_options.sample
          cur_arr = arr_options.sample
      
          player_name = third_gen_names_fb[cur_row][cur_col][cur_arr]

  	  print "You start your journey as: #{player_name}. "
		
	  File.open("data/player/current_player_names.txt", "w") { |f|
	    f.puts player_name
	  }
	elsif chosen_branch == 1
          ### Character Selection
          row_options = [0, 1, 2, 3, 4]
          col_options = [0, 1, 2, 3, 4]
          arr_options = [0, 1]

          cur_row = row_options.sample
          cur_col = col_options.sample
          cur_arr = arr_options.sample
      
          player_name = third_gen_names_sb[cur_row][cur_col][cur_arr]

	  print "You start your journey as: #{player_name}. "

  	  File.open("data/player/current_player_names.txt", "w") { |f|
	    f.puts player_name
	  }
	else
          ### Character Selection
          row_options = [0, 1, 2, 3, 4]
          col_options = [0, 1, 2, 3, 4]
          arr_options = [0, 1]

          cur_row = row_options.sample
          cur_col = col_options.sample
          cur_arr = arr_options.sample

          player_name = third_gen_names_fb[cur_row][cur_col][cur_arr]

  	  print "You start your journey as: #{player_name}. "
		
	  File.open("data/player/current_player_names.txt", "w") { |f|
            f.puts player_name
          }
        end
      else
        ### Character Selection
        row_options = [0, 1, 2, 3, 4]
        col_options = [0, 1, 2, 3, 4]
        arr_options = [0, 1]

        cur_row = row_options.sample
        cur_col = col_options.sample
        cur_arr = arr_options.sample

        player_name = second_gen_names[cur_row][cur_col][cur_arr]

 	print "You start your journey as: #{player_name}. "
		
        File.open("data/player/current_player_names.txt", "w") { |f|
	  f.puts player_name
	}
      end
    end

    def self.ehena_marie(e_name1, e_name2)
      ## Theoretical third generational branch.
      third_generation_theoretical = [[
        [[e_name1, e_name1],
         [e_name1, e_name2]],
    
        [[e_name2, e_name1],
         [e_name2, e_name2]],
      ], [
        [[0.5, 0.5], [0.5, 0.5]],
        [[0.5, 0.5], [0.5, 0.5]],
      ]]

      ## Third Generational Data
      third_gen_names_th         = third_generation_theoretical[0]
      third_gen_probabilities_th = third_generation_theoretical[1]

      ### Character Selection
      row_options = [0, 1]
      col_options = [0, 1]
      arr_options = [0, 1]

      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample
	  
      player_name             = third_gen_names_th[cur_row][cur_col][cur_arr]
      player_name_probability = third_gen_probabilities_th[cur_row][cur_col][cur_arr] # Historical purposes
	  
      print "You start your journey as: #{player_name}. "
	  
      File.open("data/player/current_player_names.txt", "w") { |f|
        f.puts player_name
      }
    end

    def self.choose_name(*args)
      nation_state,     family_lineage, family_description,
      years_historical,  years_current,             p_name,
      m_name,                 g1_name1,           g1_name2,
      g1_name3,               g2_name1,           g2_name2,
      g2_name3,               g2_name4,           g2_name5,
      g3_name1,               g3_name2,           g3_name3,
      g3_name4,               g3_name5,            e_name1,
	                                           e_name2 = args
	
      context_node = [
        nation_state,
        family_lineage,
        family_description,
        years_historical,
	years_current ]

      # Confirmed first generation.
      first_generation = [[
        [[p_name, p_name],
         [p_name, m_name]],
		
        [[m_name, p_name],
         [m_name, m_name]],
      ], [
        [[0.5, 0.5], [0.5, 0.5]],
        [[0.5, 0.5], [0.5, 0.5]],
      ]]

      ## Context Data
      location          = context_node[0]
      occupation        = context_node[1]
      job_description   = context_node[2]
      previous_activity = context_node[3]
      current_activity  = context_node[4]

      puts "The curent location of #{occupation} is the #{location}. #{job_description} The previous family they inherited from operated between #{previous_activity}. The current #{occupation} operated in the years #{current_activity}."

      ## First Generational Data
      first_gen_names         = first_generation[0]
      first_gen_probabilities = first_generation[1]

      ### Character Selection
      row_options = [0, 1]
      col_options = [0, 1]
      arr_options = [0, 1]

      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      first_gen_name        = first_gen_names[cur_row][cur_col][cur_arr]
      first_gen_probability = first_gen_probabilities[cur_row][cur_col][cur_arr]

      if    first_gen_name == p_name;
	print " Your patriarch had been #{p_name}, and the guillotine blade drips with blood when #{p_name} witnessed #{m_name}'s beheading. [ #{first_gen_name}, #{first_gen_probability} ]"

        BequestLineage::FamilyTree.hemato_tomato(g1_name1, g1_name2, g1_name3,
	                                         g2_name1, g2_name2, g2_name3, g2_name4, g2_name5,
	                                         g3_name1, g3_name2, g3_name3, g3_name4, g3_name5)
      elsif first_gen_name == m_name
	      print " Your matriarch had been #{m_name}, whose wounds were licked by your other mother's lips as #{m_name}'s severed head slowly faded to black. [ #{first_gen_name}, #{first_gen_probability} ]"
        
        puts "Therefore you're the only survivor."

        BequestLineage::FamilyTree.ehena_marie(e_name1, e_name2)
      else
        BequestLineage::FamilyTree.hemato_tomato(g1_name1, g1_name2, g1_name3,
	                                         g2_name1, g2_name2, g2_name3, g2_name4, g2_name5,
	                                         g3_name1, g3_name2, g3_name3, g3_name4, g3_name5)
      end
    end
  end
end
