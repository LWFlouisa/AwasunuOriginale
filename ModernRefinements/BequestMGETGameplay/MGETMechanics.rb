###############################################################################################
#                                 Zombie State Minigame                                       #
###############################################################################################
#$true_reset_hp = File.read("lib/player_stats/true_reset_hp.txt").strip.to_i
$reset_hp      = File.read("lib/player_stats/reset_hp.txt").strip.to_i
$player_hp     = File.read("lib/player_stats/zombie_player_hp.txt").strip.to_i

module BequestHelloWorld
  class MachineLearning
    ############################################################################################  
    #                                        vampire                                           #
    ############################################################################################
    #  * gives wife infinite probability ( anything over one
    #  * quietly pretends she doesnt exist ( suggesting localized variable )
    #  * never says goodbye ( so no return statement )
    #  * avoids wet places like lakes ( decomposition process excellerated in the damp )
    #  * ladies deny romantic involvement

    def self.proximity_de_medusahoseki(a, b)
      maximum_distance     = b
      distance_probability = a
  
      calculation = maximum_distance - ( maximum_distance * distance_probability )
      calculation = calculation.round
  
      "Distance from Medusahoseki: #{calculation}"
    end

    def self.proximity_de_nemedusahoseki(a, b)
      maximum_distance     = b
      distance_probability = 1 - a
  
      calculation = maximum_distance - ( maximum_distance * distance_probability )
      calculation = calculation.round
  
      "Distance from Nemedusahoseki ( Salamander Riding Goat ): #{calculation}"
    end

    def self.proximity_de_memorie(a)
      year_period = 12
  
      calculation = 12 - ( 12 * a )
      calculation = calculation.round
  
      "this memory was from a prior #{calculation} year period"
    end

    def self.mperiod_sprox(a, b)
      "#{a} over #{b}"
    end

    def self.generate_bounded_probability
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

    def self.chart_percentages(real_percentage, percentage_a, percentage_b)
      a = 320 * ( 100 * ( percentage_a - ( 1 - percentage_a ) ) )
      b = 240 * ( 100 * ( percentage_b - ( 1 - percentage_b ) ) )

      a = a % 320
      b = b % 240
  
      a = a.round.to_i
      b = b.round.to_i
  
      if a == 0
        a = a + 1
      end
  
      if b == 0
        b = b + 1
      end
  
      thresholding(real_percentage, a, b)

      # map real percent to medusa threshold
      puts BequestMGOT::MachineLearning.mperiod_sprox(BequestMGOT::MachineLearning.proximity_de_medusahoseki(distance_x, percentage_a),
                                                      BequestMGOT::MachineLearning.proximity_de_memorie(real_percentage))
                                                      
      puts BequestMGOT::MachineLearning.mperiod_sprox(BequestMGOT::MachineLearning.proximity_de_nemedusahoseki(distance_y, percentage_b),
                                                      BequestMGOT::MachineLearning.proximity_de_memorie(real_percentage))
    end

    def self.convert_to_piano_to_percent(fake_percent, distance_x, distance_y)
      # if number is 0.eaaaaf, convert to real percent
      real_percent = fake_percent.tr ".cdefgab", ".0123456"
      real_percent = real_percent.to_f
  
      # map real percent to medusa threshold
      puts BequestMGOT::MachineLearning.mperiod_sprox(BequestMGOT::MachineLearning.proximity_de_medusahoseki(distance_x, real_percent),
                                                      BequestMGOT::MachineLearning.proximity_de_memorie(real_percent))
                                                      
      puts BequestMGOT::MachineLearning.mperiod_sprox(BequestMGOT::MachineLearning.proximity_de_nemedusahoseki(distance_y, real_percent),
                                                      BequestMGOT::MachineLearning.proximity_de_memorie(real_percent))
  
      # map real percent to cognitive threshold
      #thresholding(real_percent, map_y, map_y)

      # from percentages
      #chart_percentages(0.32, -0.54, -0.72)
    end
    
    ## Closer to the original intent, where each head represents unfalsifiable probability.
    def self.cerberus_piano(a, b, c, d)
      first_value  = convert_from_piano_to_percent(a) # a.tr ".cdefgab", ".0123456"  #.to_f
      second_value = convert_from_piano_to_percent(b) # b.tr ".cdefgab", ".0123456" #.to_f
      third_value  = convert_from_piano_to_percent(c) # c.tr ".cdefgab", ".0123456"  #.to_f
  
      first_value  = ( 1 / first_value ) ** d
      second_value = ( 1 / second_value ) ** d
      third_value  = ( 1 / third_value ) ** d

      @cerberus = [ first_value, second_value, third_value ]

      "#{a}, #{b}, #{c} is processed in parallel."
    end

    ## This handles coverted probabilities.
    def self.cerberus(a, b, c, d)  
      first_value  = ( 1 / a ) ** d
      second_value = ( 1 / b ) ** d
      third_value  = ( 1 / c ) ** d

      @cerberus = [ first_value, second_value, third_value ]

      "#{a}, #{b}, #{c} is processed in parallel."
    end
    
    def self.temperature_from_piano(count)
      count.times do
        convert_to_piano_to_percent(generate_bounded_probability, 150, 150)
      end
    end

    ## A castle here is defined as a place of infinite probability.
    def self.castle_probability(a)
      ( 1 / a.to_f ) ** a + 0.99999
    end

    ## Landmarks
    def self.vampire_castle(a)
      a
    end

    ## Plot Catelyst
    def self.woman_leaving(a)
      a
    end

    ## Activity
    def self.daffie_girl(a)
      a
    end

    ## Primary fear or motivation
    def self.avoids_water(a)
      a
    end

    def self.vampire(a, b, c, d, e, f)
      probability = 1 / f

      this_castle  = vampire_castle(a)
  
      water_avoidance = avoids_water(b) #; puts water_avoidance

      banished = woman_leaving(c) #; puts banished

      is_daffie = daffie_girl(d) #; puts is_daffie
  
      water_status = is_holy_water?(e)

      $data = [ this_castle, 
                banished,
                is_daffie,
                water_avoidance,
                water_status,
                probability ]

      return this_castle
      return banished
      return is_daffie
      return water_avoidance
      return probability
    end
    
    def self.prepare_vampires(a1, a2, b1, b2, c1, c2)
      $a = BequestMGOT::MachineLearning.vampire(a1, "Loup Garou", "Mina", "Bathory", "glass", a2)
      $b = BequestMGOT::MachineLearning.vampire(b1, "Loup Garou", "Mina", "Bathory", "glass", b2)
      $c = BequestMGOT::MachineLearning.vampire(c1, "Loup Garou", "Mina", "Bathory", "glass", c2)
    end

    ## Parallel vampire castles.
    def vampyreshiro(a1, a2, b1, b2)
      first_assessment = ( 1 / a2.to_f ) ** a2 + 0.99999, a1
  
      second_assessment = ( 1 / b2.to_f ) ** b2 + 0.99999, b1
  
      $new_castle             = first_assessment[0], second_assessment[0]
      $new_castle_probability = first_assessment[1], second_assessment[1]
  
      "The probability of #{$new_castle[0]} is #{$new_castle_probability[0]}, the probability of #{$new_castle[1]} is #{$new_castle_probability[1]}."
    end

    ## Parallel vampire castle voids.
    def self.nevampyreshiro(a1, a2, b1, b2)
      first_assessment = ( 1 / a2.to_f ) ** a2 + 0.99999, a1
      second_assessment = ( 1 / b2.to_f ) ** b2 + 0.99999, b1
  
      $new_castle             = first_assessment[0], second_assessment[0]
      $new_castle_probability = first_assessment[1], second_assessment[1]
  
      "The probability of #{$new_castle[0]} of the mitigation of #{$new_castle_probability[0]}, the probability of #{$new_castle[1]} of the mitigation of #{$new_castle_probability[1]}."
    end
    
    def self.shuffle_vampires(upper_one, lower_one, label_one_name,
                              upper_two, lower_two, label_two_name,
                              upper_tre, lower_tre, label_tre_name)
                              
      d = BequestMGOT::MachineLearning.vampyreshiro(upper_one,   lower_one, label_one_name, label_two_name)
      e = BequestMGOT::MachineLearning.nevampyreshiro(upper_two, lower_two, label_one_name, label_tre_name)
      f = BequestMGOT::MachineLearning.nevampyreshiro(upper_tre, lower_tre, label_two_name, label_one_name)

      vampires = [
        [[d, d, d], [d, d, e], [d, d, f]],
        [[e, e, d], [e, e, e], [e, e, f]],
        [[f, f, d], [f, f, e], [f, f, f]],
      ]
      
      row_options = [0, 1, 2]
      col_options = [0, 1, 2]
      arr_options = [0, 1, 2]
      
      ## Establish First Vampire
      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      first_vampire = vampires[cur_row][cur_col][cur_arr]
      
      ## Establish Second Vampire
      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      second_vampire = vampires[cur_row][cur_col][cur_arr]

      ## Establish Second Vampire
      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      third_vampire = vampires[cur_row][cur_col][cur_arr]

      2.times do
        BequestMGOT::Reinforcement.get_neg2_statistics(:first_vampire,   first_vampire,
                                                       :second_vampire, second_vampire,
                                                       :third_vampire,   third_vampire)
                                                       
                                                       BequestMGOT::Reinforcement.dynamic_mode_switcher
      end

      vampire_temperature = sore_float(summed_lure_probability > maid_maximum) do
        puts mperiod_sprox(proximity_de_medusahoseki(memory_distance, $current_probability), proximity_de_memorie($current_probability))
        puts mperiod_sprox(proximity_de_nemedusahoseki(memory_distance, $current_probability), proximity_de_memorie($current_probability))

        puts "[ #{first_vampire} | #{second_vampire} | #{third_vampire} ]"
      end

      vampire_temperature = shikashi_float(vampire_temperature, summed_lure_probability < maid_minimum) do
        puts mperiod_sprox(proximity_de_medusahoseki(memory_distance, $current_probability), proximity_de_memorie($current_probability))
        puts mperiod_sprox(proximity_de_nemedusahoseki(memory_distance, $current_probability), proximity_de_memorie($current_probability))
        
        puts "[ #{first_vampire} | #{second_vampire} | #{third_vampire} ]"
      end

      vampire_temperature = matawa_float(vampire_temperature) do
        puts mperiod_sprox(proximity_de_medusahoseki(memory_distance, $current_probability), proximity_de_memorie($current_probability))
        puts mperiod_sprox(proximity_de_nemedusahoseki(memory_distance, $current_probability), proximity_de_memorie($current_probability))
        
        puts "[ #{first_vampire} | #{second_vampire} | #{third_vampire} ]"
      end
    end

    def self.is_holy_water?(a)  
      falsity = [
        [[true,  true], [true,  false]],
        [[false, true], [false, false]],
      ]
  
      row_options = [0, 1]
      col_options = [0, 1]
      arr_options = [0, 1]

      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample
  
      current_truth = falsity[cur_row][cur_col][cur_arr]
  
      claim = a, current_truth
  
      "The is #{claim[0]} is dowsed in holy water: #{claim[1]}"
    end

    def self.evaluate_gothic_elements
      require "NeoPathfinding"

      2.times do
        get_statistics(:nosferatu_aquaphobia,  vampire("Ontrontro", "Bathory", "Swimming",  "Nosferatu", "Glass", 9.0),
                       :carmilla_aquaphobia,   vampire("Ontrontro", "Bathory", "Swimming",   "Carmilla", "Glass", 9.0),
                       :loup_garou_aquaphobia, vampire("Ontrontro", "Bathory", "Swimming", "Loup Garou", "Glass", 9.0))

        dynamic_reward_allocation
      end
  
      accurate_probability = ( $current_probability + $data[5] ) / 2

      print "#{layer_contradiction($data[2], $data[1])} [ #{$data[0]} is avoided by #{$data[1]}, #{accurate_probability} ], # Contradicts known lore"
    end

    def self.evolved_evaluator
      require "NeoPathfinding"

      factoids = [
        [ :nosferatu_aquaphobia, "Ontrontro", "Swimming", "Nosferatu", "Bathory", "The is glass is dowsed in holy water: false", 0.083900793 ],  
        [ :carmilla_aquaphobia,  "Ontrontro", "Swimming",  "Carmilla", "Bathory",  "The is glass is dowsed in holy water: true", 0.043055546 ], 
        [ :loup_garou_aquaphobia, "Ontrontro", "Swimming", "Loup Garou", "Bathory", "The is glass is dowsed in holy water: true", 0.015316353 ],
      ]  

      inferred_data = [
        [ "Nosferatu avoid Swimming",           0.0743542940000000 ], # Contradicts known lore
        [ "Carmilla is avoided by Loup Garou", 0.8588758600000000 ], # Contradicts known lore
        [ "Carmilla is avoided by Swimming",   0.2733555555555556 ], # Contradicts known lore
        [ "Loup Garou is avoided by Swimming",  0.0748570670000000 ], # Does not contradict known lore.
      ]

      nosferatu_aquaphobia  = factoids[0][0], factoids[0][1], factoids[0][2], factoids[0][3], factoids[0][4], factoids[0][5], factoids[0][6]
      carmilla_aquaphobia   = factoids[1][0], factoids[1][1], factoids[1][2], factoids[1][3], factoids[1][4], factoids[1][5], factoids[1][6]
      loup_garou_aquaphobia = factoids[2][0], factoids[2][1], factoids[2][2], factoids[2][3], factoids[2][4], factoids[2][5], factoids[2][6]

      nosferatu_inferred  = inferred_data[0][0], inferred_data[0][1]
      carmilla_inferred   = inferred_data[1][0], inferred_data[1][1]
      loup_garou_inferred = inferred_data[3][0], inferred_data[3][1]

      nosferatu_symbol       = nosferatu_aquaphobia[0]
      nosferatu_novel        = nosferatu_aquaphobia[1]
      nosferatu_activity     = nosferatu_aquaphobia[2]
      nosferatu_character    = nosferatu_aquaphobia[3]
      nosferatu_secondary    = nosferatu_aquaphobia[4]
      nosferatu_water        = nosferatu_aquaphobia[5]
      nosferatu_error_margin = nosferatu_aquaphobia[6]

      carmilla_symbol       = carmilla_aquaphobia[0]
      carmilla_novel        = carmilla_aquaphobia[1]
      carmilla_activity     = carmilla_aquaphobia[2]
      carmilla_character    = carmilla_aquaphobia[3]
      carmilla_secondary    = carmilla_aquaphobia[4]
      carmilla_water        = carmilla_aquaphobia[5]
      carmilla_error_margin = carmilla_aquaphobia[6]

      loup_garou_symbol       = loup_garou_aquaphobia[0]
      loup_garou_novel        = loup_garou_aquaphobia[1]
      loup_garou_activity     = loup_garou_aquaphobia[2]
      loup_garou_character    = loup_garou_aquaphobia[3]
      loup_garou_secondary    = loup_garou_aquaphobia[4]
      loup_garou_water        = loup_garou_aquaphobia[5]
      loup_garou_error_margin = loup_garou_aquaphobia[6]

      puts "Evaluate Nosferatu"
      2.times do
        get_neg2_statistics(:nosferatu_symbol,     nosferatu_symbol,
                       :nosferatu_novel,       nosferatu_novel,
                       :carmilla_activity, nosferatu_activity)
                  
                       dynamic_reward_allocation
      end

      2.times do
        get_neg2_statistics(:nosferatu_character, nosferatu_character,
                       :nosferatu_secondary, nosferatu_secondary,
                       :nosferatu_water,         nosferatu_water)
                 
                       dynamic_reward_allocation
      end

      puts "Evaluate Carmilla"
      2.times do
        get_neg2_statistics(:carmilla_symbol,      carmilla_symbol,
                            :carmilla_novel,        carmilla_novel,
                            :carmilla_activity, nosferatu_activity)
                 
                       dynamic_mode_switcher
      end

      2.times do
        get_neg2_statistics(:carmilla_character, carmilla_character,
                            :carmilla_secondary, carmilla_secondary,
                            :carmilla_water,         carmilla_water)
                 
                       dynamic_mode_switcher
      end

      puts "Evaluate Loup Garou"
      2.times do
        get_neg2_statistics(:loup_garou_symbol,     loup_garou_symbol,
                            :loup_garou_novel,       loup_garou_novel,
                            :loup_garou_activity, loup_garou_activity)
                 
                       dynamic_mode_switcher
      end

      2.times do
        get_neg2_statistics(:loup_garou_symbol,     loup_garou_symbol,
                            :loup_garou_novel,       loup_garou_novel,
                            :loup_garou_activity, loup_garou_activity)
                 
                       dynamic_mode_switcher
      end

      puts "Evaluate Inferred Data"
      2.times do
        get_neg2_statistics(:loup_garou_character, loup_garou_character[0],
                            :loup_garou_secondary, loup_garou_secondary[0],
                            :loup_garou_water,         loup_garou_water[0])
                 
                       dynamic_mode_switcher
      end
    end
  end
  
  class Legacy
    ## Monitors player hit gauge.
    def self.monitor_player_hp(player_hp_upper, player_hp_lower)
      a = MGET::GuidelineBasedConstraintLogicDiscrete.cette("vie", "grande")
      b = MGET::GuidelineBasedConstraintLogicDiscrete.cette("vie", "petite")
      c = MGET::GuidelineBasedConstraintLogicDiscrete.cette("vie", "grande", "petite", "moyen")     
    
      monitor_hp = MGET::GuidelineBasedConstraintLogicDiscrete.cette_int($current_probability > playher_hp_upper) do
        puts a
      end

      monitor_hp = MGET::GuidelineBasedConstraintLogicDiscrete.maisette_int(monitor_hp, $current_probability > playher_hp_lower) do
        puts b
      end

      monitor_hp = MGET::GuidelineBasedConstraintLogicDiscrete.sinon_int(monitor_hp) do
        puts c
      end
    end

    ## Monitors player attack power.
    def self.monitor_player_atk(player_atk_upper, player_atk_lower)
      a = MGET::GuidelineBasedConstraintLogicDiscrete.cette("force", "grande")
      b = MGET::GuidelineBasedConstraintLogicDiscrete.cette("force", "petite")
      c = MGET::GuidelineBasedConstraintLogicDiscrete.cette("force", "grande", "petite", "moyen")     
    
      monitor_atk = MGET::GuidelineBasedConstraintLogicDiscrete.cette_int($current_probability > player_atk_upper) do
        puts a
      end

      monitor_atk = MGET::GuidelineBasedConstraintLogicDiscrete.maisette_int(monitor_hp, $current_probability > player_atk_lower) do
        puts b
      end

      monitor_atk = MGET::GuidelineBasedConstraintLogicDiscrete.sinon_int(monitor_atk) do
        puts c
      end
    end

    ## Monitors player current defences.    
    def self.monitor_player_def(player_def_upper, player_def_lower)
      a = MGET::GuidelineBasedConstraintLogicDiscrete.cette("bouclier", "Grande")
      b = MGET::GuidelineBasedConstraintLogicDiscrete.cette("bouclier", "Petite")
      c = MGET::GuidelineBasedConstraintLogicDiscrete.cette("bouclier", "Grande", "Petite", "Moyen")     
    
      monitor_def = MGET::GuidelineBasedConstraintLogicDiscrete.cette_int($current_probability > player_def_upper) do
        puts a
      end

      monitor_def = MGET::GuidelineBasedConstraintLogicDiscrete.maisette_int(monitor_def, $current_probability > player_def_lower) do
        puts b
      end

      monitor_def = MGET::GuidelineBasedConstraintLogicDiscrete.sinon_int(monitor_def) do
        puts c
      end
    end

    ## Monitors player healing ability.    
    def self.monitor_player_heal(player_heal_upper, player_heal_lower)
      a = MGET::GuidelineBasedConstraintLogicDiscrete.cette("rajeunir", "grande")
      b = MGET::GuidelineBasedConstraintLogicDiscrete.cette("rajeunir", "petite")
      c = MGET::GuidelineBasedConstraintLogicDiscrete.cette("rajeunir", "grande", "petite", "moyen")     
    
      monitor_heal = MGET::GuidelineBasedConstraintLogicDiscrete.cette_int($current_probability > player_heal_upper) do
        puts a
      end

      monitor_heal = MGET::GuidelineBasedConstraintLogicDiscrete.maisette_int(monitor_heal, $current_probability > player_heal_lower) do
        puts b
      end

      monitor_heal = MGET::GuidelineBasedConstraintLogicDiscrete.sinon_int(monitor_heal) do
        puts c
      end
    end
    
    ## Monitors player sanity.
    def self.monitor_player_san(player_san_upper, player_san_lower)
      a = MGET::GuidelineBasedConstraintLogicDiscrete.cette("sante mentale", "grande")
      b = MGET::GuidelineBasedConstraintLogicDiscrete.cette("sante mentale", "petite")
      c = MGET::GuidelineBasedConstraintLogicDiscrete.cette("sante mentale", "grande", "petite", "moyen")     
    
      monitor_heal = MGET::GuidelineBasedConstraintLogicDiscrete.cette_int($current_probability > player_heal_upper) do
        puts a
      end

      monitor_heal = MGET::GuidelineBasedConstraintLogicDiscrete.maisette_int(monitor_heal, $current_probability > player_heal_lower) do
        puts b
      end

      monitor_heal = MGET::GuidelineBasedConstraintLogicDiscrete.sinon_int(monitor_heal) do
        puts c
      end
    end
    
    ## Monitors player trust.
    def self.monitor_player_tru(player_tru_upper, player_tru_lower)
      a = MGET::GuidelineBasedConstraintLogicDiscrete.cette("confiance", "grande")
      b = MGET::GuidelineBasedConstraintLogicDiscrete.cette("confiance", "petite")
      c = MGET::GuidelineBasedConstraintLogicDiscrete.cette("confiance", "grande", "petite", "moyen")     
    
      monitor_trust = MGET::GuidelineBasedConstraintLogicDiscrete.cette_int($current_probability > player_tru_upper) do
        puts a
      end

      monitor_trust = MGET::GuidelineBasedConstraintLogicDiscrete.maisette_int(monitor_trust, $current_probability > player_tru_lower) do
        puts b
      end

      monitor_trust = MGET::GuidelineBasedConstraintLogicDiscrete.sinon_int(monitor_trust) do
        puts c
      end
    end

    ## Monitors player trauma.
    def self.monitor_player_tra(player_tra_upper, player_tra_lower)
      a = MGET::GuidelineBasedConstraintLogicDiscrete.cette("trauma", "grande")
      b = MGET::GuidelineBasedConstraintLogicDiscrete.cette("trauma", "petite")
      c = MGET::GuidelineBasedConstraintLogicDiscrete.cette("trauma", "grande", "petite", "moyen")     
    
      monitor_trauma = MGET::GuidelineBasedConstraintLogicDiscrete.cette_int($current_probability > player_tra_upper) do
        puts a
      end

      monitor_trauma = MGET::GuidelineBasedConstraintLogicDiscrete.maisette_int(monitor_trust, $current_probability > player_tra_lower) do
        puts b
      end

      monitor_trauma = MGET::GuidelineBasedConstraintLogicDiscrete.sinon_int(monitor_trust) do
        puts c
      end
    end

    ## Monitors pet hit gauge.
    def self.monitor_pet_hp(pet_hp_upper, pet_hp_lower)
    end

    ## Monitors pet attack power.
    def self.monitor_pet_atk(pet_atk_upper, pet_atk_lower)
    end

    ## Monitors pet current defences.    
    def self.monitor_pet_def(pet_def_upper, pet_def_lower)
    end

    ## Monitors pet healing ability.    
    def self.monitor_pet_heal(pet_heal_upper, pet_heal_lower)
    end
    
    ## Monitors pet sanity.
    def self.monitor_pet_san(pet_pet_upper, pet_pet_lower)
    end
    
    ## Monitors enemy trust.
    def self.monitor_pet_tru(pet_tru_upper, pet_tru_lower)
    end

    ## Monitors enemy trauma.
    def self.monitor_enemy_hp(enemy_hp_upper, enemy_hp_lower)
    end
    
    ## Monitors enemy attack power.
    def self.monitor_enemy_atk(enemy_atk_upper, enemy_atk_lower)
    end

    ## Monitors enemy current defences.    
    def self.monitor_enemy_def(enemy_def_upper, enemy_def_lower)
    end

    ## Monitors enemy healing ability.    
    def self.monitor_enemy_heal(enemy_heal_upper, enemy_heal_lower)
    end
  end
  end
end

module BequestHopscotchAssistant
  class Reinforcement
    def self.get_neg1_statistics(a1, a2, b1, b2, c1, c2)
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
        [[-0.50, -0.50], [-0.50, -0.50], [-0.50, -0.50]],
        [[-0.50, -0.50], [-0.50, -0.50], [-0.50, -0.50]],
        [[-0.50, -0.50], [-0.50, -0.50], [-0.50, -0.50]],
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
    
    def self.get_neg2_statistics(a1, a2, b1, b2, c1, c2)
      a = a1, a2
      b = b1, b2
      c = c1, c2

      matrix = [
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
        [[-0.33, -0.33, -0.33],
         [-0.33, -0.33, -0.33],
         [-0.33, -0.33, -0.33]],
     
        [[-0.33, -0.33, -0.33],
         [-0.33, -0.33, -0.33],
         [-0.33, -0.33, -0.33]],
     
        [[-0.33, -0.33, -0.33],
         [-0.33, -0.33, -0.33],
         [-0.33, -0.33, -0.33]],
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
    
    def self.reasses_uncertainty
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
  
      $current_probability = $current_probability * 0.15
    end

    def self.reconsider_uncertainty
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
  
      $current_probability = $current_probability + 0.15
    end
    
    ## Dynamic reward allocation that in practice is closer to a dynamic uncertainty generator.
    def self.dynamic_reward_un_allocation
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

      if    current_reward_structure == l1_reasses; MGET::Reinforcement.reasses_uncertainty
      elsif current_reward_structure == l2_reasses; 2.times do MGET::Reinforcement.reasses_uncertainty end
      elsif current_reward_structure == l3_reasses; 3.times do MGET::Reinforcement.reasses_uncertainty end
      elsif current_reward_structure == l4_reasses; 4.times do MGET::Reinforcement.reasses_uncertainty end
      else
        MGET::Reinforcement.reasses_uncertainty
      end
    end

    ## A guillotine that somehow makes you more certain and not less.
    def self.dynamic_guillotine_un_allocation
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

      if    current_reward_structure == l1_reasses; MGET::Reinforcement.reconsider_uncertainty
      elsif current_reward_structure == l2_reasses; 2.times do MGET::Reinforcement.reconsider_uncertainty end
      elsif current_reward_structure == l3_reasses; 3.times do MGET::Reinforcement.reconsider_uncertainty end
      elsif current_reward_structure == l4_reasses; 4.times do MGET::Reinforcement.reconsider_uncertainty end
      else
        MGET::Reinforcement.reconsider_uncertainty
      end
    end

    def self.dynamic_mode_switcher
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

      if    current_mode == "deposit"; MGET::Reinforcement.dynamic_reward_un_allocation
      elsif current_mode == "extract"; MGET::Reinforcement.dynamic_guillotine_un_allocation
      else
        MGET::EvaluateTrivia.dynamic_guillotine_allocation
      end
    end
  end
  
  class GuidelineBasedConstraintLogicSpecifiers
    def self.parle(phrase)
      puts phrase
    end

    def self.bokette(phrase)
      sleep(1.5)
  
      puts phrase
    end

    def cette(x, y)
      if x == ""
        puts "X is not provided."

        abort
      end
  
      if y == ""
        puts "X is not provided."

        abort
      end

      $that = x, y

      "Cette #{x} est #{y}."
    end

    def necette(x, y)
      if x == ""
        puts "The negation of X is not provided."

        abort
      end
  
      if y == ""
        puts "The negation of Y is not provided."

        abort
      end

      $not_that = x, y
  
      "L'impact de cela #{x} es #{y}, "
    end

    def self.bokecette(x, y)
      if x == ""
        puts "X is not provided."

        abort
      end
  
      if y == ""
        puts "X is not provided."

        abort
      end

      sleep(1.5)

      $that = x, y

      "Cette #{x} es #{y}. "
    end

    def self.maisette(x, y)
      if x == ""
        puts "X is not provided."

        abort
      end
  
      if y == ""
        puts "Y is not provided."

        abort
      end
  
      $but_that = x, y

      "Mais cette #{x} est #{y}."
    end

    def self.nemaisette(x, y)
      if x == ""
        puts "X is not provided."

        abort
      end
  
      if y == ""
        puts "Y is not provided."

        abort
      end

      $but_not_that = x, y

      "mais l'impact de cela #{x} es #{y}."
    end

    def self.bokemaisette(x, y)
      if x == ""
        puts "X is not provided."

        abort
      end
  
      if y == ""
        puts "X is not provided."

        abort
      end

      sleep(1.5)

      preposition = ["es", "es ne"]

      $but_that = x, y

      "Mais cette #{x} #{preposition.sample} #{y}."
    end

    def self.sinon(a, b, c, d)
      if a == ""
        puts "A is not provided."

        abort
      end
  
      if b == ""
        puts "B is not provided."

        abort
      end

      if c == ""
        puts "C is not provided."

        abort
      end

      if d == ""
        puts "C is not provided."

        abort
      end
  
      $otherwise     = a, d
      $otherwise_not = a, b, c

      "Sinon #{a} c'est #{b} ou #{c} est aussi vrai. #{a} c'est #{d}."
    end

    def nesinon(a, b, c, d)
      if a == ""
        puts "A is not provided."

        abort
      end
  
      if b == ""
        puts "B is not provided."

        abort
      end

      if c == ""
        puts "C is not provided."

        abort
      end

      if d == ""
        puts "C is not provided."

        abort
      end
  
      $otherwise_not = a, b, c
      $otherwise     = a, d

      "Sinon #{a} est #{b} ou #{c} est faux. Mais #{a} c'est #{d}."
    end

    def self.bokesinon(x, y, z)
      if x == ""
        puts "X is not provided."

        abort
      end
  
      if y == ""
        puts "X is not provided."

        abort
      end

      if z == ""
        puts "X is not provided."

        abort
      end

      sleep(1.5)

      "Sinon #{x} es ne #{y} ou #{z}."
    end

    def self.cette_int(condition)
      if condition
        yield
    
        return true
      end
  
      false
    end

    def self.maisette_int(already_done, condition)
      return true if already_done
  
      if condition
        yield
    
        return true
      end
    end

    def self.sinon_int(already_done)
      yield unless already_done
  
      unless already_done
        if not defined?($that)
          puts "[ THAT ] has not been defined."
        else
          MGET::GuidelineBasedConstraintLogicDiscrete.parle(cette("CETTE: #{$that[0]} est #{$that[1]}"))
        end
  
        if not defined?($but_that)
          puts "[ BUT THAT ] has not been defined."
        else
          MGET::GuidelineBasedConstraintLogicDiscrete.parle(cette("MAISETTE: #{$but_that[0]} est #{$but_that[1]}"))
        end
    
        if not defined?($otherwise)
          puts "[ OTHERWISE ] has not been defined."
        else
          MGET::GuidelineBasedConstraintLogicDiscrete.parle(sinon("SINON: #{$otherwise[0]} est #{$otherwise[1]}"))
          MGET::GuidelineBasedConstraintLogicDiscrete.parle(sinon("SINON: #{$otherwise_not[0]} est ne #{$otherwise[1]} ou #{$otherwise[1]}"))
        end
      end
    end
  end
  
  class GuidelineBasedConstraintLogicProbabilistic
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

    ## A place of many rivers flowing together.
    def self.matawa_float(already_done)
      yield unless already_done
  
      unless already_done
        if not defined?($that)
          puts "[ THAT ] has not been defined."
        else
          MGET::GuidelineBasedConstraintLogicDiscrete.parle(cette("CETTE: #{$that[0]} est #{$that[1]}"))
        end
  
        if not defined?($but_that)
          puts "[ BUT THAT ] has not been defined."
        else
          MGET::GuidelineBasedConstraintLogicDiscrete.parle(cette("MAISETTE: #{$but_that[0]} est #{$but_that[1]}"))
        end
    
        if not defined?($otherwise)
          puts "[ OTHERWISE ] has not been defined."
        else
          MGET::GuidelineBasedConstraintLogicDiscrete.parle(sinon("SINON: #{$otherwise[0]} est #{$otherwise[1]}"))
          MGET::GuidelineBasedConstraintLogicDiscrete.parle(sinon("SINON: #{$otherwise_not[0]} est ne #{$otherwise[1]} ou #{$otherwise[1]}"))
        end
      end
    end

    ## A place of many rivers flowing together.
    def self.aruiwa_float(already_done)
      yield unless already_done
  
      unless already_done
        if not defined?($that)
          puts "[ THAT ] has not been defined."
        else
          MGET::GuidelineBasedConstraintLogicDiscrete.parle(cette("CETTE: #{$that[0]} est #{$that[1]}"))
        end
  
        if not defined?($but_that)
          puts "[ BUT THAT ] has not been defined."
        else
          MGET::GuidelineBasedConstraintLogicDiscrete.parle(cette("MAISETTE: #{$but_that[0]} est #{$but_that[1]}"))
        end
    
        if not defined?($otherwise)
          puts "[ OTHERWISE ] has not been defined."
        else
          MGET::GuidelineBasedConstraintLogicDiscrete.parle(sinon("SINON: #{$otherwise[0]} est #{$otherwise[1]}"))
          MGET::GuidelineBasedConstraintLogicDiscrete.parle(sinon("SINON: #{$otherwise_not[0]} est ne #{$otherwise[1]} ou #{$otherwise[1]}"))
        end
      end
    end
  end
  
  class Research
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
        #if defined?($otherwise)
          #puts "#{$otherwise_not[0]} is 'THAT'"
          #puts "#{$otherwise_not[1]} is 'WHAT'"
        #end
      end
    end
    
    ## Derived from the term Sabot De Bois and Fensu in Japanese, indicates a lack of specific opinion about ancient artifacts.
    def self.sabofensu(a)
      $current_sabofensu = "Moi ne avoir un avis de: #{a}"
    end

    ## Specific Dream Symbols
    def self.analyze_sabofensu(a, b, c)
      2.times do
        get_statistics(:first_sabofensu,  a,
                       :second_sabofensu, b,
                       :third_sabofensu,  c)
                 
                       dynamic_reward_allocation         
      end
    end

    def self.nesabofensu(a)
      $current_nesabofensu = "Je pense de avoir le impact de #{a}"
    end

    def self.analyze_nesabofensu(a, b, c)
      2.times do
        get_statistics(:first_certainty,  a,
                       :second_certainty, b,
                       :third_certainty,  c)
                 
                       dynamic_reward_allocation
      end
    end

    def self.musee_comprime(a)
      $current_musee_comprime = "cette musee comprime #{a}"
    end

    def self.analyze_musee_comprime(a, b, c)
      2.times do
        get_statistics(:first_museum,  a,
                       :second_museum, b,
                       :third_museum,  c)
                 
                       dynamic_reward_allocation
      end
    end

    def self.poupee_sassoir(a)
      $current_poupee = "Je avoir s'assoir en le chaise a #{a}."
    end

    def self.analyze_poupee_sassoir(a, b, c)
      2.times do
        get_statistics(:first_sitting_doll,  a,
                       :second_sitting_doll, b,
                       :third_sitting_doll,  c)
   
                       dynamic_reward_allocation
     end
   end

   def self.nepoupee_sassoir(a)
      $current_ne_poupee = "Je ne avoir s'assoir en le chaise a #{a}."
   end

   def self.analyze_nepoupee_sassoir(a, b, c)
      2.times do
        get_statistics(:first_standing_doll,  a,
                       :second_standing_doll, b,
                       :third_standing_doll,  c)
                 
                       dynamic_reward_allocation
      end
    end

    # That #{a} is warped into a black expanse.
    def self.noremodei(a)
      $current_noremodei = "Cette #{a} est noermodeios."
    end

    def self.analyze_nepoupee_sassoir(a, b, c)
      2.times do
        get_statistics(:first_node_model,  a,
                       :second_node_model, b,
                       :third_node_model,  c)

                       dynamic_reward_allocation
      end
    end

    # That impression of #{a} that has wapred into a black expanse.
    def self.ninoremodei(a)
      $current_noremodei = "Cette #{a} est anos ninoermodeios."
    end

    def analyze_nepoupee_sassoir(a, b, c)
      2.times do
        get_statistics(:first_non_node_model,  a,
                       :second_non_node_model, b,
                       :third_non_node_model,  c)

                       dynamic_reward_allocation
      end
    end

    def self.proximity_de_medusahoseki(a, b)
      maximum_distance     = b
      distance_probability = a
  
      calculation = maximum_distance - ( maximum_distance * distance_probability )
      calculation = calculation.round
  
      "Distance from Medusahoseki: #{calculation}"
    end

    def self.proximity_de_nemedusahoseki(a, b)
      maximum_distance     = b
      distance_probability = 1 - a
  
      calculation = maximum_distance - ( maximum_distance * distance_probability )
      calculation = calculation.round
  
      "Distance from Nemedusahoseki ( Salamander Riding Goat ): #{calculation}"
    end

    def self.proximity_de_memorie(a)
      year_period = 12
  
      calculation = 12 - ( 12 * a )
      calculation = calculation.round
  
      "this memory was from a prior #{calculation} year period"
    end

    def self.mperiod_sprox(a, b)
      "#{a} over #{b}"
    end

    # forme de gravité
    def self.graviteformee(a, b)
      new_word = a, b

      $curremt_graviteforme = "Le #{a} es uni avec #{b}: #{new_word[0]}#{new_word[1]}"
    end

    def self.analyze_graviteformee(a, b, c, d, e, f)
      first_word  = a, b
      second_word = c, d
      third_word  = e, f
  
      2.times do
        get_statistics(:first_word,    "Le #{a} es uni avec #{b}: #{first_word[0]}#{first_word[1]}",
                       :second_word, "Le #{c} es uni avec #{d}: #{second_word[0]}#{second_word[1]}",
                       :third_word,    "Le #{e} es uni avec #{f}: #{third_word[0]}#{third_word[1]}")
                   
                       dynamic_reward_allocation
      end
    end

    def negraviteformee(a, b)
      new_word = a, b

      $curremt_graviteforme = "Le #{a} es ne uni avec #{b}: #{new_word[0]}#{new_word[1]}"
    end

    def analyze_negraviteformee(a, b, c, d, e, f)
      first_word  = a, b
      second_word = c, d
      third_word  = e, f
  
      2.times do
        get_statistics(:first_word,    "Le #{a} es ne uni avec #{b}: #{first_word[0]}#{first_word[1]}",
                       :second_word, "Le #{c} es ne uni avec #{d}: #{second_word[0]}#{second_word[1]}",
                       :third_word,    "Le #{e} es ne uni avec #{f}: #{third_word[0]}#{third_word[1]}")
                   
                       dynamic_reward_allocation
      end
    end

    def self.incongruisho(a, b, c) # Turn off the television
      "The #{a} must be taken from #{b} and disposed of at #{c} and forgotten about."
    end

    def self.analyze_incongruisho(a, b, c, d, e, f, g, h, i)
      2.times do
        get_statistics(:first_incongruisho,    "The #{a} must be taken from #{b} and disposed of at #{c} and forgotten about.",
                       :second_incongruisho, "The #{d} must be taken from #{e} and disposed of at #{f} and forgotten about.",
                       :third_incongruisho,    "The #{g} must be taken from #{h} and disposed of at #{i} and forgotten about.")
                   
                       dynamic_reward_allocation
      end
    end

    # neincongruisho
    def self.neincongruisho(a, b, c) # Turn off the television
      "The impact of #{a} from the pattern of #{b} in the context of #{c}."
    end

    ###############################################################################################################
    #                                           Hybrid FUnctions                                                  #
    ###############################################################################################################
    # cette_incongruisho(cette("pomme", "rouge"), "apple", "the table", "garbage can")
    def self.cette_incongruisho(i, a, b, c)
      "#{i}: The #{a} has been found to have a pattern of #{b} in the context of #{c}."
    end

    # maisette_incongruisho(maisette("pomme", "rouge"), "apple", "the table", "garbage can")
    def self.maisette_incongruisho(i, a, b, c)
      "#{i}: The #{a} has been found to have a pattern of #{b} in the context of #{c}."
    end

    # sinon_incongruisho(maisette("pomme", "rouge"), "apple", "the table", "garbage can")
    def self.sinon_incongruisho(i, a, b, c)
      "#{i}: The #{a} has been found to have a pattern of #{b} in the context of #{c}."
    end

    def self.sabofensu_incongruisho(i, a, b, c)
      "I've forgotten about the impact: #{a} must be taken from #{b} and disposed of at #{c} and forgotten about."
    end

    def self.saborakku_incongruisho(i, a, b, c)
      "I must recheck: #{a} must be taken from #{b} and relocated to #{c} for research purposes."
    end

    def self.sabofensu_neincongruisho(i, a, b, c)
      "I must recheck the impact: I've forgotten #{a} must have been taken from #{b} and disposed of at #{c}."
    end

    def self.saborakku_neincongruisho(i, a, b, c)
      "I must recheck the impact: #{a} must be taken from #{b} and relocated to #{c} for research purposes."
    end

    # Evaluate generated videos used as cover stories
    def self.sorasuketobodo(a, b)
      "Is it possible the video of #{a} may be a cover legend for #{b}?"
    end

    #################################################################################################################
    #                                              Maisettevague                                                    #
    #################################################################################################################
    # This section is primarily about wave climbing machine learning.                                               #
    #################################################################################################################
    def self.rayonnage_de_papier(a, b, c)
      puts "You moved #{a} from shelf #{b} to shelf #{c}."
    end

    def self.correct_recollection(a, b, c)
      2.times do
        get_statistics(:remembered_a,     a,
                       :misremembered_b,  b,
                       :representation_c, c)

        dynamic_reward_allocation
      end

      print "You remembered #{a} was in #{c}, but instead #{b} is present in #{c}."
      puts " Consider checking with other documents or photos to verify."
    end

    def self.correct_recollection2(a, b, c)
      2.times do
        get_statistics(:remembered_b,     a,
                       :misremembered_a,  b,
                       :representation_c, c)

        dynamic_reward_allocation
      end

      print "You remembered #{b} was in #{c}, but instead #{a} is present in #{c}."
      puts " Consider checking with other documents or photos to verify."
    end
  
    ##########################################################################################
    #                                Layered Contradiction                                   #
    ##########################################################################################
    # This DSL is for handling contradictions and descrepancies in datasets, using between   #
    # that specified as A, and that specified as B, in order to evaluate what their          #
    # their difference is.                                                                   #
    ##########################################################################################
    def self.layer_contradiction(a, b)
      "#{a} is a contradiction of #{b}."
    end

    # Layer contradiction
    def self.couchemujun(a, b)
      "#{a} is a contradiction of #{b}."
    end

    # Mitigate contradiction
    def self.necouchemujun(a, b)
      "The impact or mitigation of contradiction #{a} and #{b} in the void."
    end

    # Layer descrepancy
    def self.couchesogo(a, b)
      "There is a descrepancy between #{a} and #{b}."
    end

    # Mitigate descrepancy
    def self.necouchesogo(a, b)
      "The impact or mitigation of the descrepancy between #{a} and #{b}."
    end

    ## Empty the layers of contradiction
    def self.couchemujunkyo(a, b) # [ Ku xa mun uh ki xoh ]
      "The layers between #{a} and #{b} are empty."
    end

    ## Emtpy the layers of descrepancy
    def self.couchesogokyo(a, b) # [ Ku xa svo goh ki xoh ]
      "The impact or mitigation the layers between #{a} and #{b} being empty."
    end
    
    ##########################################################################################################
    #                                       Daily And Nightly Activities                                     #
    ##########################################################################################################
    #          This documents daily and nightly activities with an agentic MC that the user instructs.       #
    ##########################################################################################################
    def self.park_car(a, b)
      "#{a} parks the car in #{b}."
    end

    def self.meet_friend(a, b)
      "#{a} meets a friend over at #{b}."
    end

    def self.discuss_history(a, b)
      "#{a} discusses personal history with #{b}."
    end

    def self.collaborate(a, b, c)
      "#{a} and #{b} collaborate on #{c}."
    end

    def self.extract_persona(a, b, c)
      "Extract #{a} from #{b}, as a is aware of c"
    end

    def self.contain_leakage(a, b)
      "#{a} contains leakage of #{b}."
    end

    def self.differentiate_holopersona(a, b)
      "#{a} differentiates holopersona #{b}"
    end

    def self.persona_select_item(a, b)
      "#{a} select item #{b}"
    end

    def self.soda_fountain(a, b)
      "#{a} located in #b}"
    end

    def self.joker_the_babarbian(a, b)
      "#{a} is a #{b}"
    end

    def self.is_back_same_size!(a, b)
      "#{a} is size of #{b} #{affirmation}"
    end

    def self.observe_wendigo_poodle(a, b, c)
      "#{a} and #{b} observe the wendigo poodle. It destroys photographs of it when you take them. #{c} is where it concentrates at a specific hour."
    end

    def self.connverted_porch(a, b)
      "#{a} in #{b} has become an outside porch."
    end

    def self.dormatory(a, b)
      "#{a} is sleeping in dormatory #{b}"
    end

    def self.shared_restroom(a, b)
      "#{a} shares a restroom with guest #{b}"
    end

    def self.daily_activities(a, b, c, d, e, f, g, h, i, j)
      "#{a} #{b} #{c} #{d} #{e} #{f} #{g} #{h} #{i} #{j}"
    end

    def self.nightly_activities(a, b, c, d, e)
      "#{a} #{b} #{c} #{d} #{e}"
    end

    def self.false_invoice(a, b)
      "#{a} filed a false invoice to #{b}."
    end

    def self.false_information(a, b)
      "#{a} planted false information in #{b}."
    end

    def self.tug_at_raincoat(a, b)
      "#{a} tugged at the raincoat of #{b}."
    end
    
    ## Recall things during sleep that you thought about days prior.
    def self.cultural_remix
      a = "Sarah"
    
      a1 = park_car(a, "parking lot")
      b1 = tug_at_raincoat("Case Officer", a)
      c1 = meet_friend(a, "cafe")
      
      d1 = discuss_history(a, "Case Officer")
      e1 = collaborate(a, "Case Officer", "Haunted Mansion")
      f1 = connverted_porch("Bedroom Entrance", "Back Porch")
      
      g1 = observe_wendigo_poodle(a, "Case Officer", "Back Porch")
      h1 = extract_persona("Maid", "Haunted Mansion", a)
      i1 = contain_leakage("Maid", "Haunted Mansion")
      
      j1 = differentiate_holopersona("Maid", "Other Specimens")
      k1 = persona_select_item(a, "Maid Shadow")
      l2 = soda_fountain(a, "Case Officer")
      
      m2 = shared_restroom(a, "Case Officer")
      n2 = is_back_same_size("Haunted Mansion Backyard", "Haunted Mansion Frontyard")
      o2 = dormatory(a, "of Case Officer")
      
      p2 = joker_the_babarbian(a, "Ace")
      q2 = false_information("Case Officer", a)
      r1 = false_invoice("Case Officer", a)
      
      2.times do
        BequestHopscotchAssistant::Reinforcement.get_neg2_statistics(:park_car,        a1,
                                                                     :tug_at_raincoat, b1,
                                                                     :meet_friends,    c1)
                                                                     
                                                                     BequestHopscotchAssistant::Reinforcement.dynamic_mode_switcher
      end

      2.times do
        BequestHopscotchAssistant::Reinforcement.get_neg2_statistics(:discuss_history,  d1,
                                                                     :collaborate,      e1,
                                                                     :connverted_porch, f1)
                                                                     
                                                                     BequestHopscotchAssistant::Reinforcement.dynamic_mode_switcher
      end

      2.times do
        BequestHopscotchAssistant::Reinforcement.get_neg2_statistics(:observe_wendigo_poodle, g1,
                                                                     :extract_persona,        h1,
                                                                     :contain_leakage,        i1)
                                                                     
                                                                     BequestHopscotchAssistant::Reinforcement.dynamic_mode_switcher
      end

      2.times do
        BequestHopscotchAssistant::Reinforcement.get_neg2_statistics(:differentiate_holopersona, j1,
                                                                     :persona_select_item,       k1,
                                                                     :soda_fountain,             l1)
                                                                     
                                                                     BequestHopscotchAssistant::Reinforcement.dynamic_mode_switcher
      end

      2.times do
        BequestHopscotchAssistant::Reinforcement.get_neg2_statistics(:shared_restroom,   m1,
                                                                     :is_back_same_size, n1,
                                                                     :dormatory,         o1)
                                                                     
                                                                     BequestHopscotchAssistant::Reinforcement.dynamic_mode_switcher
      end

      2.times do
        BequestHopscotchAssistant::Reinforcement.get_neg2_statistics(:joker_the_babarbian, m1,
                                                                     :false_information,   n1,
                                                                     :false_invoice,       o1)
                                                                     
                                                                     BequestHopscotchAssistant::Reinforcement.dynamic_mode_switcher
      end
    end
  end
end

module MGOTHopscotchZombie
  class GuidelineBasedConstraintLogic
    def self.parle(phrase)
      puts phrase
    end

    def self.bokette(phrase)
      sleep(1.5)
  
      puts phrase
    end

    def cette(x, y)
      if x == ""
        puts "X is not provided."

        abort
      end
  
      if y == ""
        puts "X is not provided."

        abort
      end

      $that = x, y

      "Cette #{x} est #{y}."
    end

    def necette(x, y)
      if x == ""
        puts "The negation of X is not provided."

        abort
      end
  
      if y == ""
        puts "The negation of Y is not provided."

        abort
      end

      $not_that = x, y
  
      "L'impact de cela #{x} es #{y}, "
    end

    def self.bokecette(x, y)
      if x == ""
        puts "X is not provided."

        abort
      end
  
      if y == ""
        puts "X is not provided."

        abort
      end

      sleep(1.5)

      $that = x, y

      "Cette #{x} es #{y}. "
    end

    def self.maisette(x, y)
      if x == ""
        puts "X is not provided."

        abort
      end
  
      if y == ""
        puts "Y is not provided."

        abort
      end
  
      $but_that = x, y

      "Mais cette #{x} est #{y}."
    end

    def self.nemaisette(x, y)
      if x == ""
        puts "X is not provided."

        abort
      end
  
      if y == ""
        puts "Y is not provided."

        abort
      end

      $but_not_that = x, y

      "mais l'impact de cela #{x} es #{y}."
    end

    def self.bokemaisette(x, y)
      if x == ""
        puts "X is not provided."

        abort
      end
  
      if y == ""
        puts "X is not provided."

        abort
      end

      sleep(1.5)

      preposition = ["es", "es ne"]

      $but_that = x, y

      "Mais cette #{x} #{preposition.sample} #{y}."
    end

    def self.sinon(a, b, c, d)
      if a == ""
        puts "A is not provided."

        abort
      end
  
      if b == ""
        puts "B is not provided."

        abort
      end

      if c == ""
        puts "C is not provided."

        abort
      end

      if d == ""
        puts "C is not provided."

        abort
      end
  
      $otherwise     = a, d
      $otherwise_not = a, b, c

      "Sinon #{a} c'est #{b} ou #{c} est aussi vrai. #{a} c'est #{d}."
    end

    def nesinon(a, b, c, d)
      if a == ""
        puts "A is not provided."

        abort
      end
  
      if b == ""
        puts "B is not provided."

        abort
      end

      if c == ""
        puts "C is not provided."

        abort
      end

      if d == ""
        puts "C is not provided."

        abort
      end
  
      $otherwise_not = a, b, c
      $otherwise     = a, d

      "Sinon #{a} est #{b} ou #{c} est faux. Mais #{a} c'est #{d}."
    end

    def self.bokesinon(x, y, z)
      if x == ""
        puts "X is not provided."

        abort
      end
  
      if y == ""
        puts "X is not provided."

        abort
      end

      if z == ""
        puts "X is not provided."

        abort
      end

      sleep(1.5)

      "Sinon #{x} es ne #{y} ou #{z}."
    end

    def self.cette_int(condition)
      if condition
        yield
    
        return true
      end
  
      false
    end

    def self.maisette_int(already_done, condition)
      return true if already_done
  
      if condition
        yield
    
        return true
      end
    end

    def self.sinon_int(already_done)
      yield unless already_done
  
      unless already_done
        if not defined?($that)
          puts "[ THAT ] has not been defined."
        else
          MGET::GuidelineBasedConstraintLogicDiscrete.parle(cette("CETTE: #{$that[0]} est #{$that[1]}"))
        end
  
        if not defined?($but_that)
          puts "[ BUT THAT ] has not been defined."
        else
          MGET::GuidelineBasedConstraintLogicDiscrete.parle(cette("MAISETTE: #{$but_that[0]} est #{$but_that[1]}"))
        end
    
        if not defined?($otherwise)
          puts "[ OTHERWISE ] has not been defined."
        else
          MGET::GuidelineBasedConstraintLogicDiscrete.parle(sinon("SINON: #{$otherwise[0]} est #{$otherwise[1]}"))
          MGET::GuidelineBasedConstraintLogicDiscrete.parle(sinon("SINON: #{$otherwise_not[0]} est ne #{$otherwise[1]} ou #{$otherwise[1]}"))
        end
      end
    end
  end

  class TacticalAdviser
    def self.monitor_player_hp(player_hp_maximum, player_hp_minimum)
    end

    def self.monitor_player_cactus(player_cactus_maximum, player_cactus_minimum)
    end

    def self.monitor_player_boots(player_boots_maximum, player_boots_minimum)
    end
    
    def self.monitor_player_gunmetal(player_gunmetal_maximum, player_gunmetal_minimum)
    end
    
    def self.monitor_player_cactus_placed(player_placed_maximum, player_placed_minimum)
    end
    
    def self.monitor_player_cactus_obtained(player_obtained_maximum, player_obtained_minimum)
    end
    
    def self.monitor_player_stranded(player_stranded_maximum, player_stranded_minimum)
    end
    
    ###################################################################################################################
    #                                              Hopscotch Assistant                                                #
    ###################################################################################################################
    def self.hop_scotch_assistant
      puts "Zombie Hopscotch"
      2.times do
        get_neg2_statistics(:throw_stone,                          "This tracks how many stones you've thrown.",
                            :lost_limbs,     "This tracks how many limbs you've lost over time in zombie mode.",
                            :hopped_squares,               "This tracks how many hopped squares you've hopped.")
                 
                            dynamic_mode_switcher
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

    def self.album_archival
      puts "JPop Album Archical"
      2.times do
        get_neg2_statistics(:archive,                                "This predicts whether the player will stab the enemy.",
                            :timeout, "This predicts whether the player will run out of days and hours to archive JPop CDs.",
                            :death,                      "This predicts how likely the player will die from their injuries.")
                 
                            dynamic_mode_switcher
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
  end

  class Player  
    def self.global_stats
      ## Player Stats Questionably Relevant
      # player = [
      #   [ :player_stun, "player stun", 0.020663488000000000 ],
      #   [ :player_lure, "player lure", 0.047436840000000000 ],
      #   [ :player_trap, "player trap", 0.011859210000000002 ],
      # ]
    
      $days_left  =   0
      $hours_left = 168

      starting_hp = [
        [[3, 3, 3], [3, 3, 5], [3, 3, 7]],
        [[5, 5, 3], [5, 5, 5], [5, 5, 7]],
        [[7, 7, 3], [7, 7, 5], [7, 7, 7]],
      ]

      row_options = [0, 1, 2]
      col_options = [0, 1, 2]
      arr_options = [0, 1, 2]
  
      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      handicap_hp = starting_hp[cur_row][cur_col][cur_arr]

      $player_hp = 10 - handicap_hp * $player_level

      $player_hp         = 10 * $player_level
      $player_has_stone  = true
      $stranded          = true
      $player_limbs_lost = 0

      possible_album_count = [
        [[25, 25, 25, 25, 25,  25],
         [25, 25, 25, 25, 25,  50],
         [25, 25, 25, 25, 25,  75],
         [25, 25, 25, 25, 25, 100],
         [25, 25, 25, 25, 25, 125],
         [25, 25, 25, 25, 25, 150]],

        [[50, 50, 50, 50, 50,  25],
         [50, 50, 50, 50, 50,  50],
         [50, 50, 50, 50, 50,  75],
         [50, 50, 50, 50, 50, 100],
         [50, 50, 50, 50, 50, 125],
         [50, 50, 50, 50, 50, 150]],

        [[75, 75, 75, 75, 75,  25],
         [75, 75, 75, 75, 75,  50],
         [75, 75, 75, 75, 75,  75],
         [75, 75, 75, 75, 75, 100],
         [75, 75, 75, 75, 75, 125],
         [75, 75, 75, 75, 75, 150]],

        [[100, 100, 100, 100, 100,  25],
         [100, 100, 100, 100, 100,  50],
         [100, 100, 100, 100, 100,  75],
         [100, 100, 100, 100, 100, 100],
         [100, 100, 100, 100, 100, 125],
         [100, 100, 100, 100, 100, 150]],

        [[125, 125, 125, 125, 125,  25],
         [125, 125, 125, 125, 125,  50],
         [125, 125, 125, 125, 125,  75],
         [125, 125, 125, 125, 125, 100],
         [125, 125, 125, 125, 125, 125],
         [125, 125, 125, 125, 125, 150]],

        [[150, 150, 150, 150, 150,  25],
         [150, 150, 150, 150, 150,  50],
         [150, 150, 150, 150, 150,  75],
         [150, 150, 150, 150, 150, 100],
         [150, 150, 150, 150, 150, 125],
         [150, 150, 150, 150, 150, 150]],
      ]

      row_options = [0, 1, 2, 3, 4, 5]
      col_options = [0, 1, 2, 3, 4, 5]
      arr_options = [0, 1, 2, 3, 4, 5]
  
      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      ## Archival Practices
      $jpop_albums      = possible_album_count[cur_row][cur_col][cur_arr]
      $duplicate_albums =   3
      $reset_hours      = 168
      $enemies_beheaded =   0
      
      ## Determines how much ammo you have left.
      $ammo = 150
      
      ## If there is only 10 healing cactus, you can only obtain two healing cactus.
      $healer_cactus  = 10 * $environmental_level
      $healing_cactus =  0
      
      ## Make walkpaths made out of alien spaceship gunmetal.
      $gunmetal_boots = 0
      
      ## The amount of gunmetal blocks you can place is equivalent to the amount of alien gunmetal shards.
      $alien_gunmetal =  10 * $environmental_level

      ## You can only obtain as much trap cactus as is already placed.
      $trap_cactus_placed   = 10 * $environmental_level
      $trap_cactus_obtained = 0
      
      $cactus_passed = 0
    end
    
    def self.tile_state
      if $cactus_passed > 250
        puts "You managed to find land not covered in poisonous cactus. And found a team of survivors whom also archived JPop albums."
    
        abort
      else
        puts "You have not yet found civilization..."
      end
  
      if $player_hp < 1
        puts "You died"

        sleep(1.5)

        system("clear")

        abort
      else
        if $stranded == false
          puts "You crashed your ship into a planet covered with poisonous cactus."
          puts "Escape the desert of corruption sand..."
      
          $stranded = true
        else
          puts "Continue into the poisonous cactus desert..."
          
          $player_hp = $player_hp - 1
        end
      end
      
      print "Would you like to make some gunmetal boots? << "; query = gets.chomp

      if query == "make boots"
        print "Do you have alien gunmetal? <<"; query2 = gets.chomp

        if $alien_gunmetal > 1
          $alien_gunmetal       = $alien_gunmetal - 1
          $trap_cactus_obtained = $trap_cactus_obtained - 1
          $gunmetal_boots       = $gunmetal_boots + 1

          puts "You've obtained one block of gunmetal boots."
        else
          puts "Try again when you have alien gunmetal."
        end
      elsif query2 == "place healing cactus"
        print "Do you have healing cactus?"; query2 = gets.chomp
    
        if $healer_cactus > 1
          puts "You placed down a block of healing cactus."
    
          $player_hp = $player_hp + 1
      
          $healing_cactus = $healing_cactus - 1
        else
          puts "You're out of healing cactus."
        end
      else
        puts "Be careful not to run out of gunmetal boots."
      end

      ## If all out of healing cactus on map, check for presence of gunmetal boots.
      if $healing_cactus < 1      
        puts "You're all out of healing cactus. Do you have gunmetal boot half slabs? << "; action = gets.chomp
        
        if action == "place gunmetal slab"
          $gunmetal_boots = $gunmetal_boots - 1
          
          puts "You placed a gunmetal slab."
        else
          HopscotchDesert::Enemy.rock_paper_scissors
        end
      else
        $healing_cactus = $healing_cactus + 1
        $player_hp      = $player_hp      + 1
      
        puts "You have #{$healer_cactus} healing cactus left."
      end
    end

    def self.process_two_steps
      def process_two_steps
        if    $calculate_steps == 3
          puts "    [   ]    "
          puts "    [   ]    "
          puts "    [   ]    "
          puts "  [ @] [@ ]  "
          puts "    [   ]    "
          puts "  [  ] [  ]  "
          puts "    [   ]    "
          puts "  [       ]  "

          conditions = [ "in square", "out square" ]

          current_condition == conditions.sample

          if    current_condition == "in square"
            $calculate_steps = $calculate_steps + 1
          elsif current_condition == "out square"
            HopscotchDesert::Player.lose_turn
          end
        elsif $calculate_steps == 6
          puts "    [   ]    "
          puts "    [   ]    "
          puts "    [   ]    "
          puts "  [  ] [  ]  "
          puts "    [   ]    "
          puts "  [ @] [@ ]  "
          puts "    [   ]    "
          puts "  [       ]  "

          conditions = [ "in square", "out square" ]

          current_condition == conditions.sample

          if    current_condition == "in square"
            $calculate_steps = $calculate_steps + 1
          elsif current_condition == "out square"
            HopscotchDesert::Player.lose_turn
          end
        elsif $calculate_steps == 9
          puts "    [   ]    "
          puts "    [   ]    "
          puts "    [   ]    "
          puts "  [  ] [  ]  "
          puts "    [   ]    "
          puts "  [  ] [  ]  "
          puts "    [   ]    "
          puts "  [ @   @ ]  "

          conditions = [ "in square", "out square" ]

          current_condition == conditions.sample

          if    current_condition == "in square"
            $calculate_steps = $calculate_steps + 1
          elsif current_condition == "out square"
            HopscotchDesert::Player.lose_turn
          end
        end
      end
    end

    def self.hop_tiles
      $calculate_steps = 0

      loop do
        if $calculate_steps == 0
          puts "    [ @ ]    "
          puts "    [   ]    "
          puts "    [   ]    "
          puts "  [  ] [  ]  "
          puts "    [   ]    "
          puts "  [  ] [  ]  "
          puts "    [   ]    "
          puts "  [       ]  "

          conditions = [ "in square", "out square" ]

          current_condition == conditions.sample

          if    current_condition == "in square"
            $calculate_steps = $calculate_steps + 1
          elsif current_condition == "out square"
            HopscotchDesert::Player.lose_turn
          end
        elsif $calculate_steps == 1
          puts "    [   ]    "
          puts "    [ @ ]    "
          puts "    [   ]    "
          puts "  [  ] [  ]  "
          puts "    [   ]    "
          puts "  [  ] [  ]  "
          puts "    [   ]    "
          puts "  [       ]  "

          conditions = [ "in square", "out square" ]

          current_condition == conditions.sample

          if    current_condition == "in square"
            $calculate_steps = $calculate_steps + 1
          elsif current_condition == "out square"
            HopscotchDesert::Player.lose_turn
          end
        elsif $calculate_ste=s == 2
          puts "    [   ]    "
          puts "    [   ]    "
          puts "    [ @ ]    "
          puts "  [  ] [  ]  "
          puts "    [   ]    "
          puts "  [  ] [  ]  "
          puts "    [   ]    "
          puts "  [       ]  "

          conditions = [ "in square", "out square" ]

          current_condition == conditions.sample

          if    current_condition == "in square"
            $calculate_steps = $calculate_steps + 2
          elsif current_condition == "out square"
            HopscotchDesert::Player.lose_turn
          end
        elsif $calculate_steps == 5
          puts "    [   ]    "
          puts "    [   ]    "
          puts "    [   ]    "
          puts "  [  ] [  ]  "
          puts "    [ @ ]    "
          puts "  [  ] [  ]  "
          puts "    [   ]    "
          puts "  [       ]  "

          conditions = [ "in square", "out square" ]

          current_condition == conditions.sample

          if    current_condition == "in square"
            $calculate_steps = $calculate_steps + 1
          elsif current_condition == "out square"
            HopscotchDesert::Player.lose_turn
          end
        elsif $calculate_steps == 8
          puts "    [   ]    "
          puts "    [   ]    "
          puts "    [   ]    "
          puts "  [  ] [  ]  "
          puts "    [   ]    "
          puts "  [  ] [  ]  "
          puts "    [ @ ]    "
          puts "  [       ]  "

          conditions = [ "in square", "out square" ]

          current_condition == conditions.sample

          if    current_condition == "in square"
            $calculate_steps = $calculate_steps + 1
          elsif current_condition == "out square"
            HopscotchDesert::Player.lose_turn
          end
        else
          HopscotchDesert::Player.process_two_steps
        end

        $calculate_steps = $calculate_steps + 1

        sleep(1.5)

        system("clear")
      end
    end

    def self.lose_turn
      if $limbs_lost > 5
        puts ">> You crumbled into dust..."

        abort
        
        ##hangman
      end

      puts ">> Lost lost one of your limbs..."

      sleep(1.5)

      $limbs_lost = $limbs_lost + 1
    end
    
    def self.player_gui
      #####################################################################################
      #                                   Conditions                                      #
      #####################################################################################
      # Checks if you have healer cactus or gunmetal boots. And if out of gunmetal boots  #
      # then allows you to make more gunmetal boots.                                      #
      #####################################################################################
      $next_interval = $gunmetal_boots * 5
      
      ## This determins your current status in natural language.
      HopscotchDesert::Tacticaladviser.monitor_player_hp
      HopscotchDesert::Tacticaladviser.monitor_player_atk
      HopscotchDesert::Tacticaladviser.monitor_player_def
      HopscotchDesert::Tacticaladviser.monitor_player_heal
      HopscotchDesert::Tacticaladviser.monitor_player_san
      HopscotchDesert::Tacticaladviser.monitor_player_tru
      HopscotchDesert::Tacticaladviser.monitor_player_tra
  
      puts "Player HP: #{$player_hp} Limbs Lost: #{$limbs_lost}"
      puts "Gunmetal Boots: #{$gunmetal_boots} Healer Cactus: #{$healer_cactus}"
      puts "Alien Gunmetal: #{$alien_gunmetal} Cactus Passed: #{$cactus_passed}"
      puts "Cactus Placed: #{$trap_cactus_placed} Cactus Obtained: #{$trap_cactus_obtained}"
    end
    
    def self.player_hop
      loop do
        HopscotchDesert::Player.player_gui

        if $player_has_stone == true
          print "Do you wish to toss the stone? << "; toss_stone = gets.chomp

          if    toss_stone == "toss"
            $player_has_stone = false

            possible_landing_zones = [
              "left-side",
              "inside-square",
              "right-side"
            ]

            current_landing_spot = possible_landing_zones.sample

            if current_landing_spot == "left-side"
              HopscotchDesert::Player.lose_turn
            elsif current_landing_spot == "right-side"
              HopscotchDesert::Player.lose_turn
            elsif current_landing_spot == "inside-square"
              HopscotchDesert::Player.hop_tiles
            else
              puts ">> Command not understood."
            end
          else
            puts ">> You have to toss the stone to play hopscotch."

            HopscotchDesert::Player.lose_turn
          end
        else
          HopscotchDesert::Player.lose_turn
        end
        
        tile_state
      end
    end
  end
  
  ## This is your primary weapon in the game.
  class Gribatomaton
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
        #if defined?($otherwise)
          #puts "#{$otherwise_not[0]} is 'THAT'"
          #puts "#{$otherwise_not[1]} is 'WHAT'"
        #end
      end
    end

    def self.proximity_de_medusahoseki(a, b)
      maximum_distance     = b
      distance_probability = a
  
      calculation = maximum_distance - ( maximum_distance * distance_probability )
      calculation = calculation.round
  
      "Distance from Medusahoseki: #{calculation}"
    end

    def self.proximity_de_nemedusahoseki(a, b)
      maximum_distance     = b
      distance_probability = 1 - a
  
      calculation = maximum_distance - ( maximum_distance * distance_probability )
      calculation = calculation.round
  
      "Distance from Nemedusahoseki ( Salamander Riding Goat ): #{calculation}"
    end

    def self.proximity_de_memorie(a)
      year_period = 12
  
      calculation = 12 - ( 12 * a )
      calculation = calculation.round
  
      "this memory was from a prior #{calculation} year period"
    end

    def self.mperiod_sprox(a, b)
      "#{a} over #{b}"
    end

    def self.get_neg2_statistics(a1, a2, b1, b2, c1, c2)
      a = a1, a2
      b = b1, b2
      c = c1, c2

      matrix = [
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
        [[-0.33, -0.33, -0.33],
         [-0.33, -0.33, -0.33],
         [-0.33, -0.33, -0.33]],
     
        [[-0.33, -0.33, -0.33],
         [-0.33, -0.33, -0.33],
         [-0.33, -0.33, -0.33]],
     
        [[-0.33, -0.33, -0.33],
         [-0.33, -0.33, -0.33],
         [-0.33, -0.33, -0.33]],
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

    def self.reasses_uncertainty
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
  
      $current_probability = $current_probability * 0.15
    end

    def self.reconsider_uncertainty
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
  
      $current_probability = $current_probability + 0.15
    end
    
    ## Dynamic reward allocation that in practice is closer to a dynamic uncertainty generator.
    def self.dynamic_reward_un_allocation
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

      if    current_reward_structure == l1_reasses; MGET::Reinforcement.reasses_uncertainty
      elsif current_reward_structure == l2_reasses; 2.times do MGET::Reinforcement.reasses_uncertainty end
      elsif current_reward_structure == l3_reasses; 3.times do MGET::Reinforcement.reasses_uncertainty end
      elsif current_reward_structure == l4_reasses; 4.times do MGET::Reinforcement.reasses_uncertainty end
      else
        MGET::Reinforcement.reasses_uncertainty
      end
    end

    ## A guillotine that somehow makes you more certain and not less.
    def self.dynamic_guillotine_un_allocation
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

      if    current_reward_structure == l1_reasses; MGET::Reinforcement.reconsider_uncertainty
      elsif current_reward_structure == l2_reasses; 2.times do MGET::Reinforcement.reconsider_uncertainty end
      elsif current_reward_structure == l3_reasses; 3.times do MGET::Reinforcement.reconsider_uncertainty end
      elsif current_reward_structure == l4_reasses; 4.times do MGET::Reinforcement.reconsider_uncertainty end
      else
        MGET::Reinforcement.reconsider_uncertainty
      end
    end

    def self.dynamic_mode_switcher
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

      if    current_mode == "deposit"; MGET::Reinforcement.dynamic_reward_un_allocation
      elsif current_mode == "extract"; MGET::Reinforcement.dynamic_guillotine_un_allocation
      else
        MGET::EvaluateTrivia.dynamic_guillotine_un_allocation
      end
    end
    
    def self.spider_actions(spider_maximum, spider_minimum, memory_distance)
      spider = [
        [ :detect_monster,         "detect monster", 0.020663488 ],
        [ :build_web,                   "build web", 0.001125127 ],
        [ :gather_information, "gather_information", 0.005165872 ],
      ]
  
      spider_lure = spider[0][0], spider[0][1], spider[0][2]
      spider_trap = spider[1][0], spider[1][1], spider[1][2]
      spider_stun = spider[2][0], spider[2][1], spider[2][2]
  
      2.times do
        get_statistics(spider_lure[0], spider_lure[1],
                       spider_trap[0], spider_trap[1],
                       spider_stun[0], spider_stun[1])
                   
                       dynamic_reward_allocation
      end

      # Closer to the actual probabilities
      summed_lure_probability = ( spider_lure[2] + $current_probability ) / 2
      summed_stun_probability = ( spider_trap[2] + $current_probability ) / 2
      summed_trap_probability = ( spider_stun[2] + $current_probability ) / 2
  
      ## Lure Evaluation
      slure = sore_float(summed_lure_probability > maid_maximum) do
        puts HopscotchDesert::Gribatomaton.mperiod_sprox(HopscotchDesert::Gribatomaton.proximity_de_medusahoseki(memory_distance, summed_lure_probability), 
                                                         HopscotchDesert::Gribatomaton.proximity_de_memorie(summed_lure_probability))
                                                         
        puts HopscotchDesert::Gribatomaton.mperiod_sprox(HopscotchDesert::Gribatomaton.proximity_de_nemedusahoseki(memory_distance, summed_lure_probability), 
                                                         HopscotchDesert::Gribatomaton.proximity_de_memorie(summed_lure_probability)))
        
        HopscotchDesert::Gribatomaton.teach_active
        HopscotchDesert::Gribatomaton.give_suggestions
      end

      slure = shikashi_float(slure, summed_lure_probability < maid_minimum) do
        puts HopscotchDesert::Gribatomaton.mperiod_sprox(HopscotchDesert::Gribatomaton.proximity_de_medusahoseki(memory_distance, summed_lure_probability), 
                                                         HopscotchDesert::Gribatomaton.proximity_de_memorie(summed_lure_probability))
                                                         
        puts HopscotchDesert::Gribatomaton.mperiod_sprox(HopscotchDesert::Gribatomaton.proximity_de_nemedusahoseki(memory_distance, summed_lure_probability), 
                                                         HopscotchDesert::Gribatomaton.proximity_de_memorie(summed_lure_probability)))

        HopscotchDesert::Gribatomaton.teach_active
        HopscotchDesert::Gribatomaton.give_suggestions
      end

      slure = matawa_float(slure) do
        puts HopscotchDesert::Gribatomaton.mperiod_sprox(HopscotchDesert::Gribatomaton.proximity_de_medusahoseki(memory_distance, summed_lure_probability), 
                                                         HopscotchDesert::Gribatomaton.proximity_de_memorie(summed_lure_probability))
                                                         
        puts HopscotchDesert::Gribatomaton.mperiod_sprox(HopscotchDesert::Gribatomaton.proximity_de_nemedusahoseki(memory_distance, summed_lure_probability), 
                                                         HopscotchDesert::Gribatomaton.proximity_de_memorie(summed_lure_probability)))

        HopscotchDesert::Gribatomaton.teach_active
        HopscotchDesert::Gribatomaton.give_suggestions
      end
  
      ## Stun Evaluation
      sstun = sore_float(summed_stun_probability > maid_maximum) do
        puts HopscotchDesert::Gribatomaton.mperiod_sprox(HopscotchDesert::Gribatomaton.proximity_de_medusahoseki(memory_distance, summed_stun_probability), 
                                                         HopscotchDesert::Gribatomaton.proximity_de_memorie(summed_stun_probability))
                                                         
        puts HopscotchDesert::Gribatomaton.mperiod_sprox(HopscotchDesert::Gribatomaton.proximity_de_nemedusahoseki(memory_distance, summed_stun_probability), 
                                                         HopscotchDesert::Gribatomaton.proximity_de_memorie(summed_stun_probability)))

        HopscotchDesert::Gribatomaton.teach_active
        HopscotchDesert::Gribatomaton.give_suggestions
      end

      sstun = shikashi_float(sstun, summed_stun_probability < maid_minimum) do
        puts HopscotchDesert::Gribatomaton.mperiod_sprox(HopscotchDesert::Gribatomaton.proximity_de_medusahoseki(memory_distance, summed_stun_probability), 
                                                         HopscotchDesert::Gribatomaton.proximity_de_memorie(summed_stun_probability))
                                                         
        puts HopscotchDesert::Gribatomaton.mperiod_sprox(HopscotchDesert::Gribatomaton.proximity_de_nemedusahoseki(memory_distance, summed_stun_probability), 
                                                         HopscotchDesert::Gribatomaton.proximity_de_memorie(summed_stun_probability)))

        HopscotchDesert::Gribatomaton.teach_active
        HopscotchDesert::Gribatomaton.give_suggestions
      end

      sstun = matawa_float(sstun) do
        puts HopscotchDesert::Gribatomaton.mperiod_sprox(HopscotchDesert::Gribatomaton.proximity_de_medusahoseki(memory_distance, summed_stun_probability), 
                                                         HopscotchDesert::Gribatomaton.proximity_de_memorie(summed_stun_probability))
                                                         
        puts HopscotchDesert::Gribatomaton.mperiod_sprox(HopscotchDesert::Gribatomaton.proximity_de_nemedusahoseki(memory_distance, summed_stun_probability), 
                                                         HopscotchDesert::Gribatomaton.proximity_de_memorie(summed_stun_probability)))

        HopscotchDesert::Gribatomaton.teach_active
        HopscotchDesert::Gribatomaton.give_suggestions
      end
  
      ## Stun Evaluation
      strap = sore_float(summed_trap_probability > maid_maximum) do
        puts HopscotchDesert::Gribatomaton.mperiod_sprox(HopscotchDesert::Gribatomaton.proximity_de_medusahoseki(memory_distance, summed_stun_probability), 
                                                         HopscotchDesert::Gribatomaton.proximity_de_memorie(summed_trap_probability))
                                                         
        puts HopscotchDesert::Gribatomaton.mperiod_sprox(HopscotchDesert::Gribatomaton.proximity_de_nemedusahoseki(memory_distance, summed_stun_probability), 
                                                         HopscotchDesert::Gribatomaton.proximity_de_memorie(summed_trap_probability)))

        HopscotchDesert::Gribatomaton.teach_active
        HopscotchDesert::Gribatomaton.give_suggestions
      end

      strap = shikashi_float(strap, summed_trap_probability < maid_minimum) do
        puts HopscotchDesert::Gribatomaton.mperiod_sprox(HopscotchDesert::Gribatomaton.proximity_de_medusahoseki(memory_distance, summed_stun_probability), 
                                                         HopscotchDesert::Gribatomaton.proximity_de_memorie(summed_trap_probability))
                                                         
        puts HopscotchDesert::Gribatomaton.mperiod_sprox(HopscotchDesert::Gribatomaton.proximity_de_nemedusahoseki(memory_distance, summed_stun_probability), 
                                                         HopscotchDesert::Gribatomaton.proximity_de_memorie(summed_trap_probability)))

        HopscotchDesert::Gribatomaton.teach_active
        HopscotchDesert::Gribatomaton.give_suggestions
      end

      strap = matawa_float(strap) do
        puts HopscotchDesert::Gribatomaton.mperiod_sprox(HopscotchDesert::Gribatomaton.proximity_de_medusahoseki(memory_distance, summed_stun_probability), 
                                                         HopscotchDesert::Gribatomaton.proximity_de_memorie(summed_trap_probability))
                                                         
        puts HopscotchDesert::Gribatomaton.mperiod_sprox(HopscotchDesert::Gribatomaton.proximity_de_nemedusahoseki(memory_distance, summed_stun_probability), 
                                                         HopscotchDesert::Gribatomaton.proximity_de_memorie(summed_trap_probability)))

        HopscotchDesert::Gribatomaton.teach_active
        HopscotchDesert::Gribatomaton.give_suggestions
      end
    end
    
    def self.build_web
      a = "plure"
      b = "pstun"
      c = "ptrap"

      d = "build_web"
      e = "gather_information"
      f = "detect_monster"

      g = "elure"
      h = "estun"
      i = "etrap"

      lure = :player_lure, a
      stun = :player_stun, b
      trap = :player_trap, c

      scout  = :build_web,          d
      gather = :gather_information, e
      detect = :detect_monster,     f

      elure = :maid_lure, g
      estun = :maid_stun, h
      etrap = :maid_trap, i

      human_behaviours = [
        [[ lure[0], lure[0], lure[0] ], [ lure[0], lure[0], stun[0] ], [ lure[0], lure[0], trap[0] ]],
        [[ stun[0], stun[0], lure[0] ], [ stun[0], stun[0], stun[0] ], [ stun[0], stun[0], trap[0] ]],
        [[ trap[0], trap[0], lure[0] ], [ trap[0], trap[0], stun[0] ], [ trap[0], trap[0], trap[0] ]],
      ], [
        [[ lure[1], lure[1], lure[1] ], [ lure[1], lure[1], stun[1] ], [ lure[1], lure[1], trap[1] ]],
        [[ stun[1], stun[1], lure[1] ], [ stun[1], stun[1], stun[1] ], [ stun[1], stun[1], trap[1] ]],
        [[ trap[1], trap[1], lure[1] ], [ trap[1], trap[1], stun[1] ], [ trap[1], trap[1], trap[1] ]],
      ]
  
      pet_behaviours = [
        [[  scout[0],  scout[0], scout[0] ], [  scout[0],  scout[0], gather[0] ], [  scout[0],  scout[0], detect[0] ]],
        [[ gather[0], gather[0], scout[0] ], [ gather[0], gather[0], gather[0] ], [ gather[0], gather[0], detect[0] ]],
        [[ detect[0], detect[0], scout[0] ], [ detect[0], detect[0], gather[0] ], [ detect[0], detect[0], detect[0] ]],
      ], [
        [[  scout[1],  scout[1], scout[1] ], [  scout[1],  scout[1], gather[1] ], [  scout[1],  scout[1], detect[1] ]],
        [[ gather[1], gather[1], scout[1] ], [ gather[1], gather[1], gather[1] ], [ gather[1], gather[1], detect[1] ]],
        [[ detect[1], detect[1], scout[1] ], [ detect[1], detect[1], gather[1] ], [ detect[1], detect[1], detect[1] ]],
      ]
  
      maid_behaviours = [
        [[ elure[0], elure[0], elure[0] ], [ elure[0], elure[0], estun[0] ], [ elure[0], elure[0], etrap[0] ]],
        [[ estun[0], estun[0], elure[0] ], [ estun[0], estun[0], estun[0] ], [ estun[0], estun[0], etrap[0] ]],
        [[ etrap[0], etrap[0], elure[0] ], [ etrap[0], etrap[0], estun[0] ], [ etrap[0], etrap[0], etrap[0] ]],
      ], [
        [[ elure[1], elure[1], elure[1] ], [ elure[1], elure[1], estun[1] ], [ elure[1], elure[1], etrap[1] ]],
        [[ estun[1], estun[1], elure[1] ], [ estun[1], estun[1], estun[1] ], [ estun[1], estun[1], etrap[1] ]],
        [[ etrap[1], etrap[1], elure[1] ], [ etrap[1], etrap[1], estun[1] ], [ etrap[1], etrap[1], etrap[1] ]],
      ]
  
      human_symbols      = human_behaviours[0]
      human_descriptions = human_behaviours[1]
      
      pet_symbols        = pet_behaviours[0]
      pet_descriptions   = pet_behaviours[1]
      
      maid_symbols        = maid_behaviours[0]
      maid_descriptions   = maid_behaviours[1]
  
      row_options = [0, 1, 2]
      col_options = [0, 1, 2]
      arr_options = [0, 1, 2]
  
      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample
  
      current_human_symbol      = human_symbols[cur_row][cur_col][cur_arr]
      current_human_description = human_descriptions[cur_row][cur_col][cur_arr]
  
      row_options = [0, 1, 2]
      col_options = [0, 1, 2]
      arr_options = [0, 1, 2]
  
      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample
  
      current_pet_symbol      = pet_symbols[cur_row][cur_col][cur_arr]
      current_pet_description = pet_descriptions[cur_row][cur_col][cur_arr]

      row_options = [0, 1, 2]
      col_options = [0, 1, 2]
      arr_options = [0, 1, 2]
  
      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample
  
      current_maid_symbol      = maid_symbols[cur_row][cur_col][cur_arr]
      current_maid_description = maid_descriptions[cur_row][cur_col][cur_arr]
   
      2.times do
        HopscotchDesert::Gribatomaton.get_neg2_statistics(current_human_symbol, current_human_description,
                                                          current_pet_symbol,     current_pet_description,
                                                          current_maid_symbol,   current_maid_description)
                    
        HopscotchDesert::Gribatomaton.dynamic_mode_switcher
      end
    end
    
    def self.interception_rate(higher_probability, interception_rate, total_attempts)
      a = higher_probability
      b = 1-higher_probability
  
      c = total_attempts * ( b * interception_rate )
      c = c.round
  
      puts "The amount of total interception attempts is #{c}."
    end

    def self.determine_interception
      other_information = [
        [ :intercepted,      "The intercepted rate is", 0.000001123,           0.005929605 ],
        [ :hot_weather,   "The hot weather actions is", 0.1655969190000000000, 0.87120000000000010 ],
        [ :cold_weather, "The cold weather actions is", 0.696228502,           0.047436840 ],
      ]

      interception      = [other_information[0][0], other_information[0][2] + other_information[0][3]]
      hot_weather       = [other_information[1][0], other_information[1][2] + other_information[1][3]]
      cold_weather      = [other_information[2][0], other_information[2][2] + other_information[2][3]]

      intercepted_hot  = interception[1] + hot_weather[1]
      intercepted_cold = interception[1] + cold_weather[1]

      puts "The #{interception[0]} is #{interception[1]}"
      puts "The #{hot_weather[0]} is #{hot_weather[1]}"
      puts "The #{cold_weather[0]} is #{cold_weather[1]}"

      puts "The interception rate in hot weather is: #{intercepted_hot} probability."
      puts "The interception rate in cold weather is: #{intercepted_cold} probability."
      puts "The interception mean is #{(intercepted_hot + intercepted_cold) / 2} probability"

      print "STANDARD INTERCEPTION: "
      interception_rate(1-interception[1], 0.16, $previous_encounters)

      print "HOT WEATHER INTERCEPTION: "
      interception_rate(1-intercepted_hot, 0.16, $previous_encounters)
      
      print "COLD WEATHER INTERCEPTION: "
      interception_rate(1-intercepted_cold, 0.16, $previous_encounters)
    end
    
    def self.teach_active
      require "NeoPathfinding"
    
      previous_active_behaviour  = $previous_active_behaviour
      previous_passive_behaviour = $previous_passive_behaviour
      previous_social_behaviour  = $previous_social_behaviour
      
      ouvert("data/gribatomaton/previous_active_actions.txt",   previous_active_behaviour,
             "data/gribatomaton/previous_passive_actions.txt", previous_passive_behaviour,
             "data/gribatomaton/previous_social_actions.txt",   previous_social_behaviour)
    end
    
    def self.give_suggestions
      a = File.readlines("data/gribatomaton/previous_active_actions.txt").sample.to_s
      b = File.readlines("data/gribatomaton/previous_passive_actions.txt").sample.to_s
      c = File.readlines("data/gribatomaton/previous_social_actions.txt").sample.to_s
      
      matrix = [
        [[a, a, a], [a, a, b], [a, a, c]],
        [[b, b, a], [b, b, b], [b, b, c]],
        [[c, c, a], [c, c, b], [c, c, c]],
      ]
      
      ## Behaviour One
      row_options = [0, 1, 2]
      col_options = [0, 1, 2]
      arr_options = [0, 1, 2]
      
      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample
      
      first_action = matrix[cur_row][cur_col][cur_arr]
      
      ## Behaviour Two
      row_options = [0, 1, 2]
      col_options = [0, 1, 2]
      arr_options = [0, 1, 2]
      
      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample
      
      second_action = matrix[cur_row][cur_col][cur_arr]

      ## Behaviour Tre
      row_options = [0, 1, 2]
      col_options = [0, 1, 2]
      arr_options = [0, 1, 2]
      
      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample
      
      third_action = matrix[cur_row][cur_col][cur_arr]
      
      2.times do
        HopscotchDesert::Gribatomaton.get_neg2_statistics(:first_action,   first_action,
                                                          :second_action, second_action,
                                                          :third_action,   third_action)
                   
        HopscotchDesert::Gribatomaton.dynamic_mode_switcher
      end
      
      puts "Gribatomaton >> Hey, I know you #{$current_definition}"
    end

    ## Probabilistic Pursuit
    def self.pursuit_a(a, b)
      ## Determining user data and user choice.
      value = File.read("_input/#{a}/#{a}_choice.txt").to_s.to_i

      user_data   = File.readlines("_data/#{a}/candidates.txt").shuffle
      user_choice = user_data[value]

      ## Processing AI focused data
      ai_choice            = File.read("_data/ai/ai_choice.txt").to_s.to_i
      ai_initial_candidate = user_data[ai_choice]
      ai_search_limit      = user_data.size.to_i

      ## Create AI data from user data.
      ai_search_limit.times do
        if ai_choice == user_choice
          puts "The specific candidate was found. Terminating selection..."

          ai_data      = user_data[ai_choice]

          File.open("_data/ai/candidates.txt", "w") { |f|
            f.puts ai_data
          }
        else
          puts "The specific candidate is not found..."
        end
      end

      ## AI processing data.
      ai_choice            = File.read("_data/ai/ai_choice.txt").to_s.to_i
      ai_data              = File.readlines("_data/ai/candidates.txt")#.shuffle
      ai_search_limit      = ai_data.size.to_i
      ai_next_candidate    = ai_data[ai_choice]

      ai_search_limit.times do
        if ai_next_candidate == user_choice
          ai_final_candidate = ai_next_candidate
    
          user_name = $user_name
    
          if ai_final_candidate == user_name
            puts "Candidate found, terminating selection #{b}..."; sleep(1)

            $player_hp = ( $player_hp * 0.85 ).round

            puts "Enemy AI damaged the player... "
          else
            puts "Candidate found, terminating selection #{b}..."; sleep(1)

            if $gribatomaton_hp < 1
              $player_hp = ( $player_hp * 0.85 ).round

              puts "Enemy AI damaged the player... "
            else
              $gribatomaton_hp = ( $gribatomaton_hp * 0.85 ).round

              puts "Enemy AI damaged the gribatomaton... "
            end
          end

          ## system("#{ai_final_candidate}")
    
          #open("_results/output.md", "a") { |f|
          #  f.puts "By process of elimination, the bot chose: #{ai_final_candidate}"
          #  f.puts "#{ai_final_candidate}"
          #}
        else
          puts "Candidate is not yet found..."

          ai_choice            = File.read("_data/ai/ai_choice.txt").to_s.to_i
          ai_data              = File.readlines("_data/ai/candidates.txt")
          ai_search_limit      = ai_data.size.to_i
          ai_next_candidate    = ai_data[ai_choice]

          ai_data      = user_data[ai_choice]

          File.open("_data/ai/candidates.txt", "w") { |f|
            f.puts ai_data
          }
        end
      end
    end
    
    def self.learn_enemy_patterns
      $user_name = "Sarah"

      enemy = "Ancient Guardian"

      puts "[ Player HP: #{$player_hp} ] [ Gribatomaton HP: #{$gribatomaton_hp} ]"

      2.times do
        get_statistics(:player,          "Pursue the player",
                       :gribatomaton,  "Pursue Gribatomaton",
                       :obstacles,         "Pursue Obstacle")
                 
                       dynamic_reward_allocation
                 
                       sore("neko", "kuro")
                       shikashi("neko", "blanco")
                       matawa("neko", "kuro", "blanco", "aku")
                 
        ## Pursuit Of Player
        player = sore_float($current_probability > 0.8) do
          puts mperiod_sprox(proximity_de_medusahoseki(150, $current_probability), proximity_de_memorie($current_probability))
          puts mperiod_sprox(proximity_de_nemedusahoseki(150, $current_probability), proximity_de_memorie($current_probability))
        
          pursuit_a("player", $user_name)
        end

        player = shikashi_float(player, $current_probability < 0.2) do
          puts mperiod_sprox(proximity_de_medusahoseki(150, $current_probability), proximity_de_memorie($current_probability))
          puts mperiod_sprox(proximity_de_nemedusahoseki(150, $current_probability), proximity_de_memorie($current_probability))

          puts "#{enemy} did not manage to pursue the player."
        end

        player = matawa_float(player) do
          puts mperiod_sprox(proximity_de_medusahoseki(150, $current_probability), proximity_de_memorie($current_probability))
          puts mperiod_sprox(proximity_de_nemedusahoseki(150, $current_probability), proximity_de_memorie($current_probability))

          pursuit_probability = [
            [[true,  true], [true,  false]],
            [[false, true], [false, false]],
          ]
          
          row_options = [0, 1]
          col_options = [0, 1]
          arr_options = [0, 1]
        
          cur_row = row_options.sample
          cur_col = col_options.sample
          cur_arr = arr_options.sample

          current_pursuit = pursuit_probability[cur_row][cur_col][cur_arr]
                   
          if    current_pursuit == true
            pursuit_a("gribatomaton", $user_name)
          elsif current_pursuit == false
            puts "#{enemy} did not manage to pursue them"
          else
            puts "#{enemy} did not manage to pursue them"
          end
        end
  
        ## Pursuit Of Gribatomaton
        gribatomaton = sore_float($current_probability > 0.8) do
          puts mperiod_sprox(proximity_de_medusahoseki(150, $current_probability), proximity_de_memorie($current_probability))
          puts mperiod_sprox(proximity_de_nemedusahoseki(150, $current_probability), proximity_de_memorie($current_probability))
        
          pursuit_a("gribatomaton", $user_name)
        end

        gribatomaton = shikashi_float(gribatomaton, $current_probability < 0.2) do
          puts mperiod_sprox(proximity_de_medusahoseki(150, $current_probability), proximity_de_memorie($current_probability))
          puts mperiod_sprox(proximity_de_nemedusahoseki(150, $current_probability), proximity_de_memorie($current_probability))

          puts "#{enemy} did not manage to pursue the gribatomaton."
        end

        gribatomaton = matawa_float(gribatomaton) do
          puts mperiod_sprox(proximity_de_medusahoseki(150, $current_probability), proximity_de_memorie($current_probability))
          puts mperiod_sprox(proximity_de_nemedusahoseki(150, $current_probability), proximity_de_memorie($current_probability))

          pursuit_probability = [
            [[true,  true], [true,  false]],
            [[false, true], [false, false]],
          ]
         
          row_options = [0, 1]
          col_options = [0, 1]
          arr_options = [0, 1]

          cur_row = row_options.sample
          cur_col = col_options.sample
          cur_arr = arr_options.sample

          current_pursuit = pursuit_probability[cur_row][cur_col][cur_arr]
            
          if    current_pursuit == true
            pursuit_a("gribatomaton", $user_name)
          elsif current_pursuit == false
            puts "#{enemy} did not manage to pursue gribatomaton."
          else
            puts "#{enemy} did not manage to pursue gribatomaton."
          end
        end
  
        ## Pursuit Of Self Interest
        enemy = sore_float($current_probability > 0.8) do
          puts mperiod_sprox(proximity_de_medusahoseki(150, $current_probability), proximity_de_memorie($current_probability))
          puts mperiod_sprox(proximity_de_nemedusahoseki(150, $current_probability), proximity_de_memorie($current_probability))
        
          pursuit_a("enemy", $user_name)
        end

        enemy = shikashi_float(enemy, $current_probability < 0.2) do
          puts mperiod_sprox(proximity_de_medusahoseki(150, $current_probability), proximity_de_memorie($current_probability))
          puts mperiod_sprox(proximity_de_nemedusahoseki(150, $current_probability), proximity_de_memorie($current_probability))

          puts "#{enemy} did not manage to pursue them"
        end

        enemy = matawa_float(enemy) do
          puts mperiod_sprox(proximity_de_medusahoseki(150, $current_probability), proximity_de_memorie($current_probability))
          puts mperiod_sprox(proximity_de_nemedusahoseki(150, $current_probability), proximity_de_memorie($current_probability))

          pursuit_probability = [
            [[true,  true], [true,  false]],
            [[false, true], [false, false]],
          ]
          
          row_options = [0, 1]
          col_options = [0, 1]
          arr_options = [0, 1]

          cur_row = row_options.sample
          cur_col = col_options.sample
          cur_arr = arr_options.sample

          current_pursuit = pursuit_probability[cur_row][cur_col][cur_arr]

          if current_pursuit == true
            build_web
          elsif current_pursuit == false
            puts "#{enemy} did not manage to pursue themself."
          else
            puts "#{enemy} did not manage to pursue themself."
          end
        end
  
        #puts "[ Player HP: #{$player_hp} ] [ Gribatomaton HP: #{$gribatomaton_hp} ]"
      end
    end
  end
  
  class Enemy
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
        #if defined?($otherwise)
          #puts "#{$otherwise_not[0]} is 'THAT'"
          #puts "#{$otherwise_not[1]} is 'WHAT'"
        #end
      end
    end

    def self.proximity_de_medusahoseki(a, b)
      maximum_distance     = b
      distance_probability = a
  
      calculation = maximum_distance - ( maximum_distance * distance_probability )
      calculation = calculation.round
  
      "Distance from Medusahoseki: #{calculation}"
    end

    def self.proximity_de_nemedusahoseki(a, b)
      maximum_distance     = b
      distance_probability = 1 - a
  
      calculation = maximum_distance - ( maximum_distance * distance_probability )
      calculation = calculation.round
  
      "Distance from Nemedusahoseki ( Salamander Riding Goat ): #{calculation}"
    end

    def self.proximity_de_memorie(a)
      year_period = 12
  
      calculation = 12 - ( 12 * a )
      calculation = calculation.round
  
      "this memory was from a prior #{calculation} year period"
    end

    def self.mperiod_sprox(a, b)
      "#{a} over #{b}"
    end

    def self.enemy_stats
      starting_hp = [
        [[3, 3, 3], [3, 3, 5], [3, 3, 7]],
        [[5, 5, 3], [5, 5, 5], [5, 5, 7]],
        [[7, 7, 3], [7, 7, 5], [7, 7, 7]],
      ]

      row_options = [0, 1, 2]
      col_options = [0, 1, 2]
      arr_options = [0, 1, 2]
  
      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      handicap_hp = starting_hp[cur_row][cur_col][cur_arr]

      $enemy_hp  = 10 - handicap_hp
    end
    
    def self.five_elements
      possible_elements = File.readlines("lib/monsternames/elements.txt")

      $chosen_element = possible_elements.sample.strip.to_s
    end

    def self.adjectives
      possible_adjectives = File.readlines("lib/monsternames/gendered_adverb.txt")

      $chosen_adjective = possible_adjectives.sample.strip.to_s 
    end
    
    def self.assign_enemy_name
      $current_monster_name = $chosen_element + " " + $chosen_adjective
    end
    
    ###################################################################################
    #             Turn Based Operations For Stealing, Stabbing, And Shooting          #
    ###################################################################################
    def self.steal_operations
      chances_of_acquisition = ["Success", "Failure"]

      aquisition_success = chances_of_acquisition.sample

      if    aquisition_success == "Success"
        $jpop_albums = $jpop_albums - 1
      elsif aquisition_success == "Failure"
        $jpop_albums = $jpop_albums + 1
      end
    end

    def self.stab_operations
      chances_of_being_stabbed = ["Success", "Failure"]

      stab_success = chances_of_being_stabbed.sample

      if    stab_success == "Success"
        $player_hp = $player_hp - 1
      elsif stab_success == "Failure"
        $enemy_hp = $enemy_hp - 1
      end
    end

    def self.shoot_operations
      chances_of_assassination = ["Success", "Failure"]

      assassination_success = chances_of_assassination.sample

      if    assassination_success == "Success"
        $player_hp = $player_hp - 1
      elsif assassination_success == "Failure"
        $enemy_hp = $enemy_hp - 1
      end
    end
    
    def self.maid_actions(maid_maximum, maid_minimum, memory_distance)
      require "NeoPathfinding"

      maid = [
        [ :maid_lure, "enemy lure", 0.01033174400000000 ],
        [ :maid_trap, "enemy trap", 0.00000036300000000 ],
        [ :maid_stun, "enemy stun", 0.43560000000000004 ],
      ]

      maid_lure = maid[0][0], maid[0][1], maid[0][2]
      maid_trap = maid[1][0], maid[1][1], maid[1][2]
      maid_stun = maid[2][0], maid[2][1], maid[2][2]
  
      2.times do
        get_statistics(maid_lure[0], maid_lure[1],
                       maid_stun[0], maid_stun[1],
                       maid_trap[0], maid_stun[1])
  
                       dynamic_reward_allocation
      end
  
      # Closer to the actual probabilities
      summed_lure_probability = ( maid_lure[2] + $current_probability ) / 2
      summed_stun_probability = ( maid_stun[2] + $current_probability ) / 2
      summed_trap_probability = ( maid_trap[2] + $current_probability ) / 2
  
      ## Lure Evaluation
      mlure = sore_float(summed_lure_probability > maid_maximum) do
        puts mperiod_sprox(proximity_de_medusahoseki(memory_distance, $current_probability), proximity_de_memorie($current_probability))
        puts mperiod_sprox(proximity_de_nemedusahoseki(memory_distance, $current_probability), proximity_de_memorie($current_probability))
        
        HopscotchDesert::Player.steal_operations
      end

      mlure = shikashi_float(mlure, summed_lure_probability < maid_minimum) do
        puts mperiod_sprox(proximity_de_medusahoseki(memory_distance, $current_probability), proximity_de_memorie($current_probability))
        puts mperiod_sprox(proximity_de_nemedusahoseki(memory_distance, $current_probability), proximity_de_memorie($current_probability))
        
        HopscotchDesert::Player.steal_operations
      end

      mlure = matawa_float(mlure) do
        puts mperiod_sprox(proximity_de_medusahoseki(memory_distance, $current_probability), proximity_de_memorie($current_probability))
        puts mperiod_sprox(proximity_de_nemedusahoseki(memory_distance, $current_probability), proximity_de_memorie($current_probability))
        
        HopscotchDesert::Player.steal_operations
      end
  
      ## Stun Evaluation
      mstun = sore_float(summed_stun_probability > maid_maximum) do
        puts mperiod_sprox(proximity_de_medusahoseki(memory_distance, $current_probability), proximity_de_memorie($current_probability))
        puts mperiod_sprox(proximity_de_nemedusahoseki(memory_distance, $current_probability), proximity_de_memorie($current_probability))
        
        HopscotchDesert::Player.stab_operations
      end

      mstun = shikashi_float(maid_stun, summed_stun_probability < maid_minimum) do
        puts mperiod_sprox(proximity_de_medusahoseki(memory_distance, $current_probability), proximity_de_memorie($current_probability))
        puts mperiod_sprox(proximity_de_nemedusahoseki(memory_distance, $current_probability), proximity_de_memorie($current_probability))
        
        HopscotchDesert::Player.stab_operations
      end

      mstun = matawa_float(mstun) do
        puts mperiod_sprox(proximity_de_medusahoseki(memory_distance, $current_probability), proximity_de_memorie($current_probability))
        puts mperiod_sprox(proximity_de_nemedusahoseki(memory_distance, $current_probability), proximity_de_memorie($current_probability))
        
        HopscotchDesert::Player.stab_operations
      end
  
      ## Stun Evaluation
      mtrap = sore_float(summed_trap_probability > maid_maximum) do
        puts mperiod_sprox(proximity_de_medusahoseki(memory_distance, $current_probability), proximity_de_memorie($current_probability))
        puts mperiod_sprox(proximity_de_nemedusahoseki(memory_distance, $current_probability), proximity_de_memorie($current_probability))
        
        HopscotchDesert::Player.shoot_operations
      end

      mtrap = shikashi_float(mtrap, summed_trap_probability < maid_minimum) do
        puts mperiod_sprox(proximity_de_medusahoseki(memory_distance, $current_probability), proximity_de_memorie($current_probability))
        puts mperiod_sprox(proximity_de_nemedusahoseki(memory_distance, $current_probability), proximity_de_memorie($current_probability))
        
        HopscotchDesert::Player.shoot_operations
      end

      mtrap = matawa_float(mtrap) do
        puts mperiod_sprox(proximity_de_medusahoseki(memory_distance, $current_probability), proximity_de_memorie($current_probability))
        puts mperiod_sprox(proximity_de_nemedusahoseki(memory_distance, $current_probability), proximity_de_memorie($current_probability))
        
        HopscotchDesert::Player.shoot_operations
      end
      
      sleep(1.5)
      
      HopscotchDesert::Player.player_gui
    end
    
    def self.enemy_behaviours
      s1 = "Shoot"
      s2 = "Stab"
      s3 = "Steal"
      au = "Autodeath"

      shoot_or_stab = [
        [[s1, s1, s1, s1],
         [s1, s1, s1, s2],
         [s1, s1, s1, s3],
         [s1, s1, s1, au]],
     
        [[s2, s2, s2, s1],
         [s2, s2, s2, s2],
         [s2, s2, s2, s3],
         [s2, s2, s2, au]],

        [[s3, s3, s3, s1],
         [s3, s3, s3, s2],
         [s3, s3, s3, s3],
         [s3, s3, s3, au]],

        [[au, au, au, s1],
         [au, au, au, s2],
         [au, au, au, s3],
         [au, au, au, au]],
      ]
 
      row_options = [0, 1, 2, 3]
      col_options = [0, 1, 2, 3]
      arr_options = [0, 1, 2, 3]
  
      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      action = shoot_or_stab[cur_row][cur_col][cur_arr]

      if action == "Shoot"
        HopscotchDesert::Player.shoot_operations
      elsif action == "Steal"
        HopscotchDesert::Player.shoot_operationssteal_operations
      elsif action == "Stab"
        HopscotchDesert::Player.shoot_operationsstab_operations
      else
        puts "The enemy failed to steal, shoot, or stab you..."; sleep(1.5)
    
        puts "You shot the enemy...."; sleep(1.5)
        $enemy_hp = 0
        
        HopscotchDesert::Player.player_gui
      end
    end 
  end
end

# Folk musicians are of the lunar calender.
module Sanfonashamizanos
  class Sanfona
  
    ## The Major Scales
    def self.cmajor
    end
    
    def self.dmajor
    end
    
    def self.emajor
    end
    
    def self.fmajor
    end
    
    def self.gmajor
    end
    
    def self.amajor
    end
    
    def self.bmajor
    end

    ## The Minor Scales
    def self.cminor
    end
    
    def self.dminor
    end
    
    def self.eminor
    end
    
    def self.fminor
    end
    
    def self.gminor
    end
    
    def self.aminor
    end
    
    def self.bminor
    end

    ## The Locrian Scales
    def self.clocrian
    end

    def self.dlocrian
    end

    def self.elocrian
    end

    def self.flocrian
    end

    def self.glocrian
    end

    def self.alocrian
    end

    def self.blocrian
    end
  end

  class Shamizen
  
    ## The Major Scales
    def self.cmajor
    end
    
    def self.dmajor
    end
    
    def self.emajor
    end
    
    def self.fmajor
    end
    
    def self.gmajor
    end
    
    def self.amajor
    end
    
    def self.bmajor
    end

    ## The Minor Scales
    def self.cminor
    end
    
    def self.dminor
    end
    
    def self.eminor
    end
    
    def self.fminor
    end
    
    def self.gminor
    end
    
    def self.aminor
    end
    
    def self.bminor
    end

    ## The Locrian Scales
    def self.clocrian
    end

    def self.dlocrian
    end

    def self.elocrian
    end

    def self.flocrian
    end

    def self.glocrian
    end

    def self.alocrian
    end

    def self.blocrian
    end
  end
end

## Archival For Historical Research Purposes
module PlayerModes
  class SpiderLevelUp
    ###################################################################################
    #                            Upgrades For Pet Spider                              #
    ###################################################################################
    def self.level_one_spider
      $spider_hp   = File.read("pet_stats/spider_hp.txt").strip.to_s
      $spider_atk  = File.read("pet_stats/spider_atk.txt").strip.to_s
      $spider_heal = File.read("pet_stats/spider_heal.txt").strip.to_s
    end

    def self.level_two_spider
      $spider_hp   = File.read("pet_stats/spider_hp.txt").strip.to_s
      $spider_atk  = File.read("pet_stats/spider_atk.txt").strip.to_s
      $spider_heal = File.read("pet_stats/spider_heal.txt").strip.to_s

      File.open("pet_stats/spider_hp.txt", "w") { |f|
        $spider_hp = $spider_hp + 3

        f.puts $spider_hp
      }

      File.open("pet_stats/spider_atk.txt", "w") { |f|
        $spider_atk = $spider_atk + 3

        f.puts $spider_atk
      }

      File.open("pet_stats/spider_heal.txt", "w") { |f|
        $spider_heal = $spider_heal + 3

        f.puts $spider_heal
      }
    end

    def self.level_three_spider
      $spider_hp   = File.read("pet_stats/spider_hp.txt").strip.to_s
      $spider_atk  = File.read("pet_stats/spider_atk.txt").strip.to_s
      $spider_heal = File.read("pet_stats/spider_heal.txt").strip.to_s

      File.open("pet_stats/spider_hp.txt", "w") { |f|
        $spider_hp = $spider_hp + 5

        f.puts $spider_hp
      }

      File.open("pet_stats/spider_atk.txt", "w") { |f|
        $spider_atk = $spider_atk + 5

        f.puts $spider_atk
      }

      File.open("pet_stats/spider_heal.txt", "w") { |f|
        $spider_heal = $spider_heal + 5

        f.puts $spider_heal
      }
    end

    def self.level_four_spider
      $spider_hp   = File.read("pet_stats/spider_hp.txt").strip.to_s
      $spider_atk  = File.read("pet_stats/spider_atk.txt").strip.to_s
      $spider_heal = File.read("pet_stats/spider_heal.txt").strip.to_s

      File.open("pet_stats/spider_hp.txt", "w") { |f|
        $spider_hp = $spider_hp + 7

        f.puts $spider_hp
      }

      File.open("pet_stats/spider_atk.txt", "w") { |f|
        $spider_atk = $spider_atk + 7

        f.puts $spider_atk
      }

      File.open("pet_stats/spider_heal.txt", "w") { |f|
        $spider_heal = $spider_heal + 7

        f.puts $spider_heal
      }
    end

    def self.level_five_spider
      $spider_hp   = File.read("pet_stats/spider_hp.txt").strip.to_s
      $spider_atk  = File.read("pet_stats/spider_atk.txt").strip.to_s
      $spider_heal = File.read("pet_stats/spider_heal.txt").strip.to_s

      File.open("pet_stats/spider_hp.txt", "w") { |f|
        $spider_hp = $spider_hp + 9

        f.puts $spider_hp
      }

      File.open("pet_stats/spider_atk.txt", "w") { |f|
        $spider_atk = $spider_atk + 9

        f.puts $spider_atk
      }

      File.open("pet_stats/spider_heal.txt", "w") { |f|
        $spider_heal = $spider_heal + 9

        f.puts $spider_heal
      }
    end

    def self.level_six_spider
      $spider_hp   = File.read("pet_stats/spider_hp.txt").strip.to_s
      $spider_atk  = File.read("pet_stats/spider_atk.txt").strip.to_s
      $spider_heal = File.read("pet_stats/spider_heal.txt").strip.to_s

      File.open("pet_stats/spider_hp.txt", "w") { |f|
        $spider_hp = $spider_hp + 11

        f.puts $spider_hp
      }

      File.open("pet_stats/spider_atk.txt", "w") { |f|
        $spider_atk = $spider_atk + 11

        f.puts $spider_atk
      }

      File.open("pet_stats/spider_heal.txt", "w") { |f|
        $spider_heal = $spider_heal + 11

        f.puts $spider_heal
      }
    end

    def self.level_seven_spider
      $spider_hp   = File.read("pet_stats/spider_hp.txt").strip.to_s
      $spider_atk  = File.read("pet_stats/spider_atk.txt").strip.to_s
      $spider_heal = File.read("pet_stats/spider_heal.txt").strip.to_s

      File.open("pet_stats/spider_hp.txt", "w") { |f|
        $spider_hp = $spider_hp + 13

        f.puts $spider_hp
      }

      File.open("pet_stats/spider_atk.txt", "w") { |f|
        $spider_atk = $spider_atk + 13

        f.puts $spider_atk
      }

      File.open("pet_stats/spider_heal.txt", "w") { |f|
        $spider_heal = $spider_heal + 13

        f.puts $spider_heal
      }
    end

    #####################################################################################################
    #                                Main Pet Spider Functionality                                      #
    #####################################################################################################
    def self.enemy_spotted
      # Determines if your pet spider pig has seen the enemy.
      enemy_event         = File.readlines("enemies/enemies_spotted/spot_enemy.txt")
      enemy_event_toggle = File.read("enemies/enemies_toggle/toggle_enemies.txt").strip.to_i
      enemy_spotted       = enemy_event[enemy_event_toggle]

      if enemy_spotted == true
        $enemy_hp = $enemy_hp - $spider_atk

        puts ">> Your pet spider pig spotted #{enemy_spotted}, and was attacked by your pet spider pig..."
      else
        puts ">> Your pet spider pig hasn't spotted the enemy..."
      end
    end

    # A list of all possible nevigations, behaviours, and noises.
    #def self.navigation
    #  navigation_x = File.readlines("lifeform/aspects/navigation_x.txt")
    #  navigation_y = File.readlines("lifeform/aspects/navigation_y.txt")
    #
    #  navigational_ai = File.read("ainput/navigation/input.txt")
    #
    #  if navigation_x[navigational_ai_x] == player_x and navigation_y[navigational_ai_y] == player_y
    #    puts ">> Your pet spider pig moved in the direction of your player for ear scratches."
    #
    #    enemy_spotted
    #  else
    #    puts ">> Your pet spider pig stays where its at sitting on its eight legs..."
    #  end
    #end

    def self.behaviours
      behaviours    = File.readlines("lifeform/aspects/behaviours.txt")
      behaviours_ai = File.read("ainput/behaviours/input.txt").strip.to_i

      current_behavours = behaviours[behaviours_ai]

      if    current_behaviours ==      "Spins spidersilk..."
        puts ">> Your pet spider pig spins some spidersilk..."
      elsif current_behaviours ==       "Bites the player..."
        puts ">> Your pet spider bites the player affectionately..."

        sleep(1.5)

        system("ruby rockpaperzombie.rb")
      end
    end

    def self.pet_noises
      noises          = File.readlines("lifeform/aspects/noises.txt")
      noises_ai       = File.read("ainput/noises/input.txt").strip.to_i
      current_noises  = noises[noises_ai]

      elsif current_noises ==  "Hisses like a spider..."
        puts ">> Your pet spider pig hisses like a spider..."
      elsif current_noises == "Oinks like a baby pig..."
        puts ">> Your pet spider pig oinks like a baby pig..."
      end
    end

    def self.spider_damage_formula
      #Switch to routine determine damage rate.
      healing_accuracy = {
        "enemy"        => "gribatomaton",
        "gribatomaton" =>       "player",
        "player"       =>        "enemy",
      }

      @cchoice_healing_options = [  "enemy", "gribatomaton", "player" ]

      @landed_choice = @cchoice_healing_options.sample

      if    @cchoice_chosen_healing ==        "enemy"; # Enemy damages the spider.
        # Enemy launches its counter attack.
      elsif @cchoice_chosen_healing == "gribatomaton"; # Spider damages the enemy.
        # Spider successfully damages the enemy.
      elsif @cchoice_chosen_healing ==       "player"; # Enemy damages the plauer.
        # Player counter attacks the enemy.
      end
    end

    def self.enemy_damage_formula
      #Switch to routine determine damage rate.

      @cchoice_healing_options = [  "enemy", "gribatomaton", "player" ]

      @landed_choice = @cchoice_healing_options.sample

      if    @cchoice_chosen_healing ==        "enemy"; # Enemy is damaged by the spider.
        # Counterattack for spider.
      elsif @cchoice_chosen_healing == "gribatomaton"; # Spider is damaged the enemy.
        # Enemey successfully damages the spider.
      elsif @cchoice_chosen_healing ==       "player"; # Enemy is damaged by the player...
        # Counterattack by the player.
      end
    end

    def self.spider_pig_farmer
      monster_form = {
        "spider" =>    "pig",
        "pig"    => "farmer",
        "farmer" => "spider",
      }

      print "[ Spider, Pig, Farmer ] >> "
      @spider_choices = ["spider", "pig", "farmer"]
      @choice = @spider_choices.sample

      @cchoices = ["spider", "pig", "farmer"]
      @cchoice  = @cchoices.sample

      if    monster_form[@cchoice] == @choice
        puts "Spider managed to prevent enemy from harming the player."

        spider_damage_formula
      elsif monster_form[@choice]  == @choice # Spider prevents attacking of player altogether.
        puts "Spider managed to prevent enemy from harming the player."

        sleep(1.5)
      elsif @choice == @cchoice
        enemy_damage_formula
      else
        puts "Process was not understood..."
      end
    end
  end

  class FinalWishes
    def self.reset_standard_hp_restoration
      puts "The curse of being a zombie has been lifted. You can not die like any other mortal."

      $reset_hp = $true_reset_hp
    end

    def self.cremation
      puts "You've self cremated."

      sleep(1.5)

      puts "You've opted to self cremate. Restarting the map."

      $player_hp = $reset_hp

      puts "Now returning to human form..."

      system("ruby rockpaper.rb")
    end

    def self.consumption
      puts "You've eaten parts of your own corpse."

      sleep(1.5)

      $reset_hp  = $reset_hp - 1
      $player_hp = $reset_hp

      print "Your HP was replinished but "

      puts " you lost 3 hit points from consuming your own body."

      File.open("lib/player_stats/zombie_player_hp.txt", "w") { |f|
        $player_hp = $player_hp + 3

        f.puts $player_hp -20
      }

      File.open("lib/player_stats/reset_hp.txt", "w") { |f|
        $reset_hp = $reset_hp - 3

        f.puts $reset_hp
      }

      system("ruby rock_paper_zombie.rb")
    end

    def self.final_wishes
      print "Do you wish to self-cremate or continue this battle? ( cremate / consumption ) << "

      choose_your_fate = gets.chomp

      if    choose_your_fate == "cremate"
        YumemoreFramework::ZombieMode.cremation
      elsif choose_your_fate == "consumption"
        YumemoreFramework::ZombieMode.consumption
      else
        puts ">> Last wishes not understoood, defaulting to self-cremation."
      end
    end
  end

  class BezerkerMode
    ###############################################################################################
    #                                   AI Decision Making                                        #
    ###############################################################################################
    def self.ai_decision
      cchoice = @choice

      ## Determining user data and user choice.
      value = File.read("lib/input/user/user_choice.txt").to_s.to_i

      user_data   = File.readlines("lib/data/user/candidates.txt")
      user_choice = user_data[value]

      ## Processing AI focused data
      ai_choice            = File.read("lib/data/ai/ai_choice.txt").to_s.to_i
      ai_initial_candidate = user_data[ai_choice]
      ai_search_limit      = user_data.size.to_i

      ## Create AI data from user data.
      ai_search_limit.times do
        if ai_choice == user_choice
          #puts "\e[38;2;187;127;118m  The specific candidate was found. Terminating selection..."

          ai_data      = user_data.slice!(ai_choice)

          open("lib/data/ai/candidates.txt", "w") { |f|
            f.puts ai_data
          }
        else
          puts "\e[38;2;187;127;118mL'ennemi découvre que vous n'avez pas fait ce choix...\e[0m"
        end

        sleep(1.5)
      end

      ## AI processing data.
      ai_choice            = File.read("lib/data/ai/ai_choice.txt").to_s.to_i
      ai_data              = File.readlines("lib/data/ai/candidates.txt")
      ai_search_limit      = ai_data.size.to_i
      ai_next_candidate    = ai_data[ai_choice]

      ai_search_limit.times do
        if ai_next_candidate == user_choice
          ai_final_candidate = ai_next_candidate
    
          puts "\e[38;2;187;127;118mCandidate found, processing input...\e[0m"; sleep(1)

          # Breaks the loop if an appropriate candidate is found.

          sleep(1.5)

          conditions = ["Sword", "Stone", "Tarp"]

          decision_made = conditions.sample

          puts "\e[38;2;187;127;118mBy process of elimination, the bot chose: #{ai_data}\e[0m"

          @cchoice = "#{ai_data}"

          puts $cchoice

          break
        else
          ai_choice            = File.read("lib/data/ai/ai_choice.txt").to_s.to_i
          ai_data              = File.readlines("lib/data/ai/candidates.txt")
          ai_search_limit      = ai_data.size.to_i
          ai_next_candidate    = ai_data[ai_choice]

          ai_data      = user_data.slice!(ai_choice).strip

          puts "\e[38;2;187;127;118mEnemy found the option #{ai_data}\e[0m"

          enemy_decision = ["choose", "skip"]

          decision_made = enemy_decision.sample

          if decision_made == "choose"
            puts "\e[38;2;187;127;118mThe enemy chose: #{ai_data}, but found it causes a stalemate. Makes a new decision\e[0m"

            @cchoice = "#{ai_data}"

            enemy_decision = ["Epee", "Ishi", "Bache"]

            decision_made = enemy_decision.sample

            if    decision_made == "Sword"
              @cchoice = "Epee"
            elsif decision_made == "Stone"
              @cchoice = "Ishi"
            elsif decision_made ==  "Tarp"
              @cchoice = "Bache"
            end

            break
          else
            puts "\e[38;2;187;127;118mEnemy weighed the option of choosing #{ai_data}, but decided to skip its turn.\e[0m"

            break
          end

          sleep(1.5)
 
          open("lib/data/ai/candidates.txt", "w") { |f|
            f.puts ai_data
          }
        end
      end
    end

    #############################################################################################
    # Standard methods for player autonomy in the game.                                         #
    #############################################################################################
    def self.full_player_control
      #player_heal = $healing_rate

      # Loop for full player control

      # Least damaging, yet most efficient healing and other maintence.

      conditions = {
        "Epee"  => "Ishi",
        "Ishi"  => "Bache",
        "Bache" => "Epee",
      }

      bezerker_chance = ["autonomy", "autonomy", "autonomy", "autonomy"]

      chance_of_bezerker = bezerker_chance.sample

      if chance_of_bezerker == "autonomy"
        print "Player Choice >> "; @choice = gets.chomp
      else
        puts "Player lost control of the MC..."

        sleep(1.5)

        @choice = File.readlines("lib/data/ai/player_patterns/observed_player_actions.txt").sample.strip.to_s
      end

      @cchoice  = File.readlines("lib/data/ai/enemy_patterns/observed_enemy_actions.txt").sample.strip.to_s

      puts "The enemy chose: #{@cchoice}"

      if    @choice == "Epee"
        File.open("lib/input/user/user_choice.txt", "w") { |f|
          f.puts "0"
        }

        # Records a history of player actions.
        File.open("lib/data/user/chosen_action.txt", "a") { |f|
          f.puts "0"
        }

        # Allows enemey to learn about player patterns.
        File.open("lib/data/ai/player_patterns/observed_player_actions.txt", "a") { |f|
          f.puts "Epee"
        }
      elsif @choice == "Ishi"
        File.open("lib/input/user/user_choice.txt", "w") { |f|
          f.puts "1"
        }

        # Records a history of player actions.
        File.open("lib/data/user/chosen_action.txt", "a") { |f|
          f.puts "1"
        }

        # Allows enemey to learn about player patterns.
        File.open("lib/data/ai/player_patterns/observed_player_actions.txt", "a") { |f|
          f.puts "Ishi"
        }
      elsif @choice == "Bache"
        File.open("lib/input/user/user_choice.txt", "w") { |f|
          f.puts "2"
        }

        # Records a history of player actions.
        File.open("lib/data/user/chosen_action.txt", "a") { |f|
          f.puts "2"
        }

        # Allows enemey to learn about player patterns.
        File.open("lib/data/ai/player_patterns/observed_player_actions.txt", "a") { |f|
          f.puts "Bache"
        }
      elsif @choice == "Sleep"
        File.open("lib/input/user/user_choice.txt", "w") { |f|
          f.puts "2"
        }

        # Records a history of player actions. This one defaults to bache even though its a distinct action.
        open("lib/data/user/chosen_action.txt", "a") { |f|
          f.puts "2"
        }

        # Allows enemey to learn about player patterns.
        File.open("lib/data/ai/player_patterns/observed_player_actions.txt", "a") { |f|
          f.puts "Bache"
        }
      end

      puts " "
      sleep(1.5)

      # Experiment with using an enemy that learns from player's decisions.'
      YumemoireFramework::BezerkerMode.ai_decision

      if conditions[@choice] == @cchoice
        puts "You were struck by the enemy!"

        $player_struck = $player_struck + 1

        # The amount of damage player gets is based on the enemies attack power.
        #$player_hp = $player_hp - $enemy_atk
        enemy_damage_rate
      elsif @cchoice == @choice
        puts "You reach a stalemate."

        $stalemates = $stalemates + 1
      elsif conditions[@cchoice] == @choice
        puts "You struck the enemy!"

        $enemy_struck = $enemy_struck + 1

        # The amount of damage enemy recieves is based on the player's attack power.
        #$enemy_hp = $enemy_hp - $player_atk
        player_damage_rate
      elsif @choice == "Sleep"
        puts "\e[38;2;187;127;118mYou've opted to stay at an inn...'\e[0m"

        sleep(1.5)

        stay_at_inn
      else
        puts "\e[38;2;187;127;118m#{@choice} is not a valid option\e[0m"
      end

      observe_enemy
      observe_player

      sleep(1.5)

      $current_day = $current_day + 1
    end

    def self.mostly_player_control
      #player_heal = $healing_rate

      # Loop for mostly player control

      # More powerful than full player control, but less efficient maintanence tasks.

      conditions = {
        "Epee"  => "Ishi",
        "Ishi"  => "Bache",
        "Bache" => "Epee",
      }

      bezerker_chance = ["autonomy", "autonomy", "autonomy", "bezerker"]

      chance_of_bezerker = bezerker_chance.sample

      if chance_of_bezerker == "autonomy"
        print "Player Choice >> "; @choice = gets.chomp
      else
        puts "Player lost control of the MC..."

        sleep(1.5)

        @choice = File.readlines("lib/data/ai/player_patterns/observed_player_actions.txt").sample.strip.to_s
      end

      @cchoice  = File.readlines("lib/data/ai/enemy_patterns/observed_enemy_actions.txt").sample.strip.to_s

      puts "The enemy chose: #{@cchoice}"

      if    @choice == "Epee"
        File.open("lib/input/user/user_choice.txt", "w") { |f|
          f.puts "0"
        }

        # Records a history of player actions.
        File.open("lib/data/user/chosen_action.txt", "a") { |f|
          f.puts "0"
        }

        # Allows enemey to learn about player patterns.
        File.open("lib/data/ai/player_patterns/observed_player_actions.txt", "a") { |f|
          f.puts "Epee"
        }
      elsif @choice == "Ishi"
        File.open("lib/input/user/user_choice.txt", "w") { |f|
          f.puts "1"
        }

        # Records a history of player actions.
        File.open("lib/data/user/chosen_action.txt", "a") { |f|
          f.puts "1"
        }

        # Allows enemey to learn about player patterns.
        File.open("lib/data/ai/player_patterns/observed_player_actions.txt", "a") { |f|
          f.puts "Ishi"
        }
      elsif @choice == "Bache"
        File.open("lib/input/user/user_choice.txt", "w") { |f|
          f.puts "2"
        }

        # Records a history of player actions.
        File.open("lib/data/user/chosen_action.txt", "a") { |f|
          f.puts "2"
        }

        # Allows enemey to learn about player patterns.
        File.open("lib/data/ai/player_patterns/observed_player_actions.txt", "a") { |f|
          f.puts "Bache"
        }
      elsif @choice == "Sleep"
        File.open("lib/input/user/user_choice.txt", "w") { |f|
          f.puts "2"
        }

        # Records a history of player actions. This one defaults to bache even though its a distinct action.
        File.open("lib/data/user/chosen_action.txt", "a") { |f|
          f.puts "2"
        }

        # Allows enemey to learn about player patterns.
        File.open("lib/data/ai/player_patterns/observed_player_actions.txt", "a") { |f|
          f.puts "Bache"
        }
      end

      puts " "
      sleep(1.5)

      # Experiment with using an enemy that learns from player's decisions.'
      YumemoireFramework::BezerkerMode.ai_decision

      if conditions[@choice] == @cchoice
        puts "You were struck by the enemy!"

        $player_struck = $player_struck + 1

        # The amount of damage player gets is based on the enemies attack power.
        #$player_hp = $player_hp - $enemy_atk
        YumemoireFramework::DamageFormulas.enemy_damage_rate
      elsif @cchoice == @choice
        puts "You reach a stalemate."

        $stalemates = $stalemates + 1
      elsif conditions[@cchoice] == @choice
        puts "You struck the enemy!"

        $enemy_struck = $enemy_struck + 1

        # The amount of damage enemy recieves is based on the player's attack power.
        #$enemy_hp = $enemy_hp - $player_atk
        YumemoireFramework::DamageFormulas.player_damage_rate
      elsif @choice == "Sleep"
        puts "\e[38;2;187;127;118mYou've opted to stay at an inn...'\e[0m"

        sleep(1.5)

        stay_at_inn
      else
        puts "\e[38;2;187;127;118m#{@choice} is not a valid option\e[0m"
      end

      observe_enemy
      observe_player

      sleep(1.5)

      $current_day = $current_day + 1
    end

    ### This section flips between automatic player and player autonomy.
    def self.mostly_automated_player
      #player_heal = $healing_rate

      # Loop for mostly automated player.

      # The most powerful attacks for player character, but least efficient maintance tasks.

      conditions = {
        "Epee"  => "Ishi",
        "Ishi"  => "Bache",
        "Bache" => "Epee",
      }

      bezerker_chance = ["autonomy", "bezerker", "bezerker", "bezerker"]

      chance_of_bezerker = bezerker_chance.sample

      if chance_of_bezerker == "autonomy"
        print "Player Choice >> "; @choice = gets.chomp
      else
        puts "Player lost control of the MC..."

        sleep(1.5)

        @choice = File.readlines("lib/data/ai/player_patterns/observed_player_actions.txt").sample.strip.to_s
      end

      @cchoice  = File.readlines("lib/data/ai/enemy_patterns/observed_enemy_actions.txt").sample.strip.to_s

      puts "The enemy chose: #{@cchoice}"

      if    @choice == "Epee"
        File.open("lib/input/user/user_choice.txt", "w") { |f|
          f.puts "0"
        }

        # Records a history of player actions.
        File.open("lib/data/user/chosen_action.txt", "a") { |f|
          f.puts "0"
        }

        # Allows enemey to learn about player patterns.
        File.open("lib/data/ai/player_patterns/observed_player_actions.txt", "a") { |f|
          f.puts "Epee"
        }
      elsif @choice == "Ishi"
        File.open("lib/input/user/user_choice.txt", "w") { |f|
          f.puts "1"
        }

        # Records a history of player actions.
        File.open("lib/data/user/chosen_action.txt", "a") { |f|
          f.puts "1"
        }

        # Allows enemey to learn about player patterns.
        File.open("lib/data/ai/player_patterns/observed_player_actions.txt", "a") { |f|
          f.puts "Ishi"
        }
      elsif @choice == "Bache"
        File.open("lib/input/user/user_choice.txt", "w") { |f|
          f.puts "2"
        }

        # Records a history of player actions.
        File.open("lib/data/user/chosen_action.txt", "a") { |f|
          f.puts "2"
        }

        # Allows enemey to learn about player patterns.
        File.open("lib/data/ai/player_patterns/observed_player_actions.txt", "a") { |f|
          f.puts "Bache"
        }
      elsif @choice == "Sleep"
        File.open("lib/input/user/user_choice.txt", "w") { |f|
          f.puts "2"
        }

        # Records a history of player actions. This one defaults to bache even though its a distinct action.
        File.open("lib/data/user/chosen_action.txt", "a") { |f|
          f.puts "2"
        }

        # Allows enemy to learn about player patterns.
        File.open("lib/data/ai/player_patterns/observed_player_actions.txt", "a") { |f|
          f.puts "Bache"
        }
      end

      puts " "
      sleep(1.5)

      # Experiment with using an enemy that learns from player's decisions.'
      YumemoireFramework::BezerkerMode.ai_decision

      if conditions[@choice] == @cchoice
        puts "You were struck by the enemy!"

        $player_struck = $player_struck + 1

        # The amount of damage player gets is based on the enemies attack power.
        #$player_hp = $player_hp - $enemy_atk
        YumemoireFramework::DamageFormulas.enemy_damage_rate
      elsif @cchoice == @choice
        puts "You reach a stalemate."

        $stalemates = $stalemates + 1
      elsif conditions[@cchoice] == @choice
        puts "You struck the enemy!"

        $enemy_struck = $enemy_struck + 1

        # The amount of damage enemy recieves is based on the player's attack power.
        #$enemy_hp = $enemy_hp - $player_atk
        YumemoireFramework::DamageFormulas.player_damage_rate
      elsif @choice == "Sleep"
        puts "\e[38;2;187;127;118mYou've opted to stay at an inn...'\e[0m"

        sleep(1.5)

        stay_at_inn
      else
        puts "\e[38;2;187;127;118m#{@choice} is not a valid option\e[0m"
      end

      observe_enemy
      observe_player

      sleep(1.5)

      $current_day = $current_day + 1
    end

    def self.fully_automated_player
      # Loop for fully automated player characters.

      # Your attacks are more powerful, but you're not as efficient at maintanence.

      guess_player_movement
      guess_enemy_movement

      conditions = {
        "Epee"  => "Ishi",
        "Ishi"  => "Bache",
        "Bache" => "Epee",
      }

      bezerker_chance = ["bezerker", "bezerker", "bezerker", "bezerker"]

      chance_of_bezerker = bezerker_chance.sample

      if chance_of_bazerker == "autonomy"
        print "Player Choice >> "; @choice = gets.chomp
      else
        puts "Player lost control of the MC..."

        sleep(1.5)

        @choice = File.readlines("lib/data/ai/player_patterns/observed_player_actions.txt").sample.strip.to_s
      end

      @cchoice  = File.readlines("lib/data/ai/enemy_patterns/observed_enemy_actions.txt").sample.strip.to_s

      puts "The enemy chose: #{@choice}"

      if    @choice == "Epee"
        File.open("lib/input/user/user_choice.txt", "w") { |f|
          f.puts "0"
        }

        # Records a history of player actions.
        File.open("lib/data/user/chosen_action.txt", "a") { |f|
          f.puts "0"
        }
      elsif @choice == "Ishi"
        File.open("lib/input/user/user_choice.txt", "w") { |f|
          f.puts "1"
        }

        # Records a history of player actions.
        File.open("lib/data/user/chosen_action.txt", "a") { |f|
          f.puts "1"
        }
      elsif @choice == "Bache"
        File.open("lib/input/user/user_choice.txt", "w") { |f|
          f.puts "2"
        }

        # Records a history of player actions.
        File.open("lib/data/user/chosen_action.txt", "a") { |f|
          f.puts "2"
        }
      elsif @choice == "Sleep"
        File.open("lib/input/user/user_choice.txt", "w") { |f|
          f.puts "2"
        }

        # Records a history of player actions. This one defaults to bache even though its a distinct action.
        File.open("lib/data/user/chosen_action.txt", "a") { |f|
          f.puts "2"
        }
      end

      puts " "
      sleep(1.5)

      # Experiment with using an enemy that learns from player's decisions.'
      YumemoireFramework::BezerkerMode.ai_decision

      if conditions[@choice] == @cchoice
        puts "You were struck by the enemy!"

        $player_struck = $player_struck + 1

        # The amount of damage player gets is based on the enemies attack power.
        #$player_hp = $player_hp - $enemy_atk
        YumemoireFramework::DamageFormulas.enemy_damage_rate
      elsif @cchoice == @choice
        puts "You reach a stalemate."

        $stalemates = $stalemates + 1
      elsif conditions[@cchoice] == @choice
        puts "You struck the enemy!"

        $enemy_struck = $enemy_struck + 1

        # The amount of damage enemy recieves is based on the player's attack power.
        #$enemy_hp = $enemy_hp - $player_atk
        YumemoireFramework::DamageFormulas.player_damage_rate
      elsif @choice == "Sleep"
        puts "\e[38;2;187;127;118mYou've opted to stay at an inn...'\e[0m"

        sleep(1.5)

        stay_at_inn
      else
        puts "\e[38;2;187;127;118m#{@choice} is not a valid option\e[0m"
      end

      #$current_day = $current_day + 1

      sleep(1.5)

      $current_day = $current_day + 1
    end

    def self.pdm_metric
      ####################################################################################################
      #                                  Game Loop Chooser Coming Soon                                   #
      ####################################################################################################
      pdm = $personal_demon_metric # File.read("lib/data/user/personal_demon_metric.txt").strip.to_i

      gets.chomp

      loop do
        if pdm > 100
          pdm = 0

          File.open("lib/data/user/personal_demon_metric.txt", "w") { |f|
            f.puts pdm
          }
        end

        system("clear")

        if $current_day < $lunar_ticks
          this_day = 29

          puts "\e[38;2;187;127;118mLa prochaine phase lunaire est en cours: #{this_day - $current_day} days...\e[0m"
        else
          lunar_cycle

          # Reset lunar ticks to twenty days away.
          $current_day = 1
        end

        puts "\e[38;2;187;127;118m[ Currency is #{$player_franc} Francs And #{$player_yen} Yen ]\e[0m"

        if $wooden_shoes == true
          puts "[ Clog Studiness: #{$clog_sturdiness} ]"
        else
          puts "[ Clog Studiness: Inactive ]"
        end

        puts "\e[38;2;187;127;118m\n[ Stalemates: #{$stalemates} ] [ Player Strikes: #{$player_struck} ] [ Enemy Strikes: #{$enemy_struck} ]\e[0m"
        puts "\e[38;2;187;127;118m  [ #{$player_lunario} Lunario ( You wont need this for most game functions. ) ]"

        puts "Personal Demon Metric: #{pdm}"

        puts "\e[38;2;187;127;118m\n\e[0m"
        puts "\e[38;2;187;127;118mSouer De Chaos ( Ana Nuveyatusuki ) HP: #{$player_hp} \e[0m"
        puts "\e[38;2;187;127;118mSouer De Commande ( Ana Nuveyatusuki ) HP: #{$enemy_hp}\e[0m"
        puts "\e[38;2;187;127;118m\n\e[0m"

        if pdm == 0
          #$healing_rate = 8

          File.open("lib/data/user/personal_demon_metric.txt", "w") { |f|
            pdm = pdm + 25

            f.puts pdm
          }

          YumemoireFramework::BezerkerMode.full_player_control
        elsif pdm >= 25
          #$healing_rate = 6

          File.open("lib/data/user/personal_demon_metric.txt", "w") { |f|
            pdm = pdm + 25

            f.puts pdm
          }

          YumemoireFramework::BezerkerMode.mostly_player_control
        elsif pdm >= 50
          #$healing_rate = 6

          File.open("lib/data/user/personal_demon_metric.txt", "w") { |f|
            pdm = pdm + 25

            f.puts pdm
          }

          YumemoireFramework::BezerkerMode.mostly_player_control
        elsif pdm >= 75
          #$healing_rate = 4

          File.open("lib/data/user/personal_demon_metric.txt", "w") { |f|
            pdm = pdm + 25

            f.puts pdm
          }

          YumemoireFramework::BezerkerMode.mostly_automated_player
        elsif pdm >= 100
          #$healing_rate = 2

          YumemoireFramework::BezerkerMode.fully_automated_player # With full personal demon metric meaning automated beserker like mode.
        end

      end
    end
  end
  
  class HumanMode
    ###############################################################################################
    #                                   AI Decision Making                                        #
    ###############################################################################################
    def self.ai_decision
      cchoice = @choice

      ## Determining user data and user choice.
      value = File.read("lib/input/user/user_choice.txt").to_s.to_i

      user_data   = File.readlines("lib/data/user/candidates.txt")
      user_choice = user_data[value]

      ## Processing AI focused data
      ai_choice            = File.read("lib/data/ai/ai_choice.txt").to_s.to_i
      ai_initial_candidate = user_data[ai_choice]
      ai_search_limit      = user_data.size.to_i

      ## Create AI data from user data.
      ai_search_limit.times do
        if ai_choice == user_choice
          #puts "\e[38;2;187;127;118m  The specific candidate was found. Terminating selection..."

          ai_data      = user_data.slice!(ai_choice)

          open("lib/data/ai/candidates.txt", "w") { |f|
            f.puts ai_data
          }
        else
          puts "\e[38;2;187;127;118mL'ennemi découvre que vous n'avez pas fait ce choix...\e[0m"
        end

        sleep(1.5)
      end

      ## AI processing data.
      ai_choice            = File.read("lib/data/ai/ai_choice.txt").to_s.to_i
      ai_data              = File.readlines("lib/data/ai/candidates.txt")
      ai_search_limit      = ai_data.size.to_i
      ai_next_candidate    = ai_data[ai_choice]

      ai_search_limit.times do
        if ai_next_candidate == user_choice
          ai_final_candidate = ai_next_candidate
    
          puts "\e[38;2;187;127;118mCandidate found, processing input...\e[0m"; sleep(1)

          # Breaks the loop if an appropriate candidate is found.

          sleep(1.5)

          conditions = ["Sword", "Stone", "Tarp"]

          decision_made = conditions.sample

          puts "\e[38;2;187;127;118mBy process of elimination, the bot chose: #{ai_data}\e[0m"

          @cchoice = "#{ai_data}"

          puts $cchoice

          break
        else
          ai_choice            = File.read("lib/data/ai/ai_choice.txt").to_s.to_i
          ai_data              = File.readlines("lib/data/ai/candidates.txt")
          ai_search_limit      = ai_data.size.to_i
          ai_next_candidate    = ai_data[ai_choice]

          ai_data      = user_data.slice!(ai_choice).strip

          puts "\e[38;2;187;127;118mEnemy found the option #{ai_data}\e[0m"

          enemy_decision = ["choose", "skip"]

          decision_made = enemy_decision.sample

          if decision_made == "choose"
            puts "\e[38;2;187;127;118mThe enemy chose: #{ai_data}, but found it causes a stalemate. Makes a new decision\e[0m"

            @cchoice = "#{ai_data}"

            enemy_decision = ["Epee", "Ishi", "Bache"]

            decision_made = enemy_decision.sample

            if    decision_made == "Sword"
              @cchoice = "Epee"
            elsif decision_made == "Stone"
              @cchoice = "Ishi"
            elsif decision_made ==  "Tarp"
              @cchoice = "Bache"
            end

            break
          else
            puts "\e[38;2;187;127;118mEnemy weighed the option of choosing #{ai_data}, but decided to skip its turn.\e[0m"

            break
          end

          sleep(1.5)
 
          open("lib/data/ai/candidates.txt", "w") { |f|
            f.puts ai_data
          }
        end
      end
    end

    def self.parser
      loop do

        system("clear")

        if $current_day < $lunar_ticks
          this_day = 29

          puts "\e[38;2;187;127;118mLa prochaine phase lunaire est en cours: #{this_day - $current_day} days...\e[0m"
        else
          lunar_cycle

          # Reset lunar ticks to twenty days away.
          $current_day = 1
        end

        menu = File.read("lib/images/menus/main.txt")

        puts menu

        puts "\e[38;2;187;127;118m[ Currency is #{$player_franc} Francs And #{$player_yen} Yen ]\e[0m"

        puts "\e[38;2;187;127;118m\n[ Stalemates: #{$stalemates} ] [ Player Strikes: #{$player_struck} ] [ Enemy Strikes: #{$enemy_struck} ]\e[0m"
        puts "\e[38;2;187;127;118m  [ #{$player_lunario} Lunario ( You wont need this for most game functions. ) ]"

        puts "\e[38;2;187;127;118m\n\e[0m"
        puts "\e[38;2;187;127;118mSouer De Chaos ( Ana Nuveyatusuki ) HP: #{$player_hp} \e[0m"
        puts "\e[38;2;187;127;118m#{$current_monster_name} HP: #{$enemy_hp}\e[0m"
        #puts "\e[38;2;187;127;118mSouer De Commande ( Ana Nuveyatusuki ) HP: #{$enemy_hp}\e[0m"
        puts "\e[38;2;187;127;118m\n\e[0m"

        if $player_hp <= 0
          system("clear")

          puts "\e[38;2;187;127;118mYou've been zombiefied!\e[0m"

          sleep(1.5)

          YumemoireFramework::ZombieMode.parser
        elsif $enemy_hp <= 0
          puts "\e[38;2;187;127;118mYou won\e[0m"

          gets.chomp

          abort
        end

        conditions = {
          "Epee"  =>  "Ishi",
          "Ishi"  => "Bache",
          "Bache" =>  "Epee",
        }

        if $has_spider == true
          puts "\e[38;2;187;127;118mTo heal the player, type: Heal\e[0m"
        else
          puts "\e[38;2;187;127;118mTo heal the player, type: Sleep\e[0m"
        end

        print "\e[38;2;164;145;91m\nEpee, Ishi, or Bache >> \e[0m"
        @choice = gets.chomp.capitalize

        if    @choice == "Epee"
          File.open("lib/input/user/user_choice.txt", "w") { |f|
            f.puts "0"
          }

          # Records a history of player actions.
          File.open("lib/data/user/chosen_action.txt", "a") { |f|
            f.puts "0"
          }
        elsif @choice == "Ishi"
          File.open("lib/input/user/user_choice.txt", "w") { |f|
            f.puts "1"
          }

          # Records a history of player actions.
          File.open("lib/data/user/chosen_action.txt", "a") { |f|
            f.puts "1"
          }
        elsif @choice == "Bache"
          File.open("lib/input/user/user_choice.txt", "w") { |f|
            f.puts "2"
          }

          # Records a history of player actions.
          File.open("lib/data/user/chosen_action.txt", "a") { |f|
            f.puts "2"
          }
        elsif @choice == "Sleep"
          File.open("lib/input/user/user_choice.txt", "w") { |f|
            f.puts "2"
          }

          # Records a history of player actions. This one defaults to bache even though its a distinct action.
          File.open("lib/data/user/chosen_action.txt", "a") { |f|
            f.puts "2"
          }
        elsif @choice == "Heal"
          File.open("lib/input/user/user_choice.txt", "w") { |f|
            f.puts "2"
          }

          # Records a history of player actions. This one defaults to bache even though its a distinct action.
          File.open("lib/data/user/chosen_action.txt", "a") { |f|
            f.puts "2"
          }
        end

        puts " "
        sleep(1.5)

        # Experiment with using an enemy that learns from player's decisions.'
        YumemoireFramework::HumanMode.ai_decision

        if conditions[@choice] == @cchoice
          #puts "\e[38;2;187;127;118m  You were struck by the enemy!"

          $enemy_struck = $enemy_struck + 1

          # The amount of damage player gets is based on the enemies attack power.
          #$player_hp = $player_hp - $enemy_atk
          YumemoireFramework::DamageFormulas.enemy_damage_rate
        elsif @cchoice == @choice
          puts "\e[38;2;187;127;118mYou reach a stalemate.\e[0m"

          $stalemates = $stalemates + 1
        elsif conditions[@cchoice] == @choice
          #puts "\e[38;2;187;127;118m  You struck the enemy!"

          $player_struck = $player_struck + 1

          # The amount of damage enemy recieves is based on the player's attack power.
          #$enemy_hp = $enemy_hp - $player_atk
          YumemoireFramework::DamageFormulas.player_damage_rate
        elsif @choice == "Sleep"
          puts "\e[38;2;187;127;118mYou've opted to stay at an inn...'\e[0m"

          sleep(1.5)

          stay_at_inn
        elsif @choice == "Heal"
          puts "\e[38;2;187;127;118mThink quickly or you wont be able to heal properly....'\e[0m"

          sleep(1.5)

          spider_pig_farmer
        else
          puts "\e[38;2;187;127;118m#{@choice} is not a valid option\e[0m"
        end

        $current_day = $current_day + 1
      end
    end
  end
end
