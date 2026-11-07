module BequestCalender
  class LunarSeason
    ######################################################################################
    #                                    Lunar Calender                                  #
    ######################################################################################
    # This establishes the basic mechanics of the Lunar Calender system that modifies    #
    # the player's base metrics on what the current lunar phase, with it being more      #
    # advised to switch to stealth mechanics during the time they are weakest, then      #
    # using the Gribatomaton for when the lunar phase when Bear Men and Kumabatto poses  #
    # the least challenge to them.                                                       #
    #                                                                                    #
    # It remains to be seen whether this will continue to be relevant as I refine this   #
    # this stealth RPG framework.                                                        #
    ######################################################################################

    def self.global_stats
      # Standard Operations
      $stalemates    = 0 # Keeps track of how many stalemates
      $player_struck = 0 # Keeps track of how many times player hit the enemy.
      $enemy_struck  = 0 # Keeps track of how many times enemy hit the player.

      # Amount of days in a year.
      $current_day = 0
      $lunar_ticks = 30

      ## Current Lunar Phase
      $current_phase = 0

      $player_level = 5
      $enemy_level  = 1

      # Yes or no spider
      $has_pet_spider = false

      #$cleaned           = 0 # Amount your clean up crew cleaned.
      #$contamination     = 0 # Contamination spread.
      #$day_counter       = 0 # Thirty days before the next lunar shift.
      #$zombies           = 0 # How many zombies you bludgeons or strangled.

      $baseline_hp   = 10 * $player_level
      $baseline_atk  =  4 * $player_level
      $baseline_def  =  2 * $player_level
      $baseline_heal =  2 * $player_level
      $baseline_san  = 10 * $player_level
      $baseline_tru  = 10 * $player_level

      $baseline_ehp   = 10 * $enemy_level
      $baseline_eatk  =  4 * $enemy_level
      $baseline_edef  =  2 * $enemy_level
      $baseline_eheal =  2 * $enemy_level

      $player_pos = [ 2, 2 ]
      $player_pos = [ $player_pos[0] + 1, $player_pos[1] + 1 ]
      
      $shoe_durability = 10
      $antidotes       = 10
      $emergency_ax    = 10

      # Is the player poisoned?
      $player_poison = false
    
      # It is presently unknown whether water is acidic.
      $water_acidic  = false
  
      # Does the player have a boat that can resist acid lakes?
      $player_boat   = false
  
      # Available monsters for grinding
      $acid_dragon     = 10 # 10 Acid Dragons
      $sea_gargoyal    = 15 # 15 Sea Gargoyals
      $acid_serpent    = 21 # 21 Acid Serpents
      $traitorous_nuns = 15 # 15 Nuns
    end

    def self.new_moon
      $player_hp     = $baseline_atk  * 0.2
      $player_atk    = $baseline_atk  * 0.2
      $player_def    = $baseline_def  * 0.2
      $player_heal   = $baseline_heal * 0.2
      $player_san    = $baseline_san  * 0.2
      $player_tru    = $baseline_tru  * 0.2

      $enemy_hp   = $baseline_ehp   * 0.8
      $enemy_atk  = $baseline_eatk  * 0.8
      $enemy_def  = $baseline_edef  * 0.8
      $enemy_heal = $baseline_eheal * 0.8

      $lunar_phase = "Le phase lunaire es Nouvelle Luna."
      $enemy_name  = "#{$lunar_phase} #{$fauna_type}"
    end

    def self.waxing_crescent
      $player_hp     = $baseline_atk  * 0.4
      $player_atk    = $baseline_atk  * 0.4
      $player_def    = $baseline_def  * 0.4
      $player_heal   = $baseline_heal * 0.4
      $player_san    = $baseline_san  * 0.4
      $player_tru    = $baseline_tru  * 0.4

      $enemy_hp   = $baseline_ehp   * 0.6
      $enemy_atk  = $baseline_eatk  * 0.6
      $enemy_def  = $baseline_edef  * 0.6
      $enemy_heal = $baseline_eheal * 0.6

      $lunar_phase = "Le phase lunaire es Croissant A La Cire."
      $enemy_name  = "#{$lunar_phase} #{$fauna_type}"
    end

    def self.first_quarter
      $player_hp     = $baseline_atk  * 0.6
      $player_atk    = $baseline_atk  * 0.6
      $player_def    = $baseline_def  * 0.6
      $player_heal   = $baseline_heal * 0.6
      $player_san    = $baseline_san  * 0.6
      $player_tru    = $baseline_tru  * 0.6

      $enemy_hp   = $baseline_ehp   * 0.4
      $enemy_atk  = $baseline_eatk  * 0.4
      $enemy_def  = $baseline_edef  * 0.4
      $enemy_heal = $baseline_eheal * 0.4

      $lunar_phase = "Le phase lunaire es Premier Trimestre."
      $enemy_name  = "#{$lunar_phase} #{$fauna_type}"
    end

    def self.waxing_gibbous
      $player_hp     = $baseline_atk  * 0.8
      $player_atk    = $baseline_atk  * 0.8
      $player_def    = $baseline_def  * 0.8
      $player_heal   = $baseline_heal * 0.8
      $player_san    = $baseline_san  * 0.8
      $player_tru    = $baseline_tru  * 0.8

      $enemy_hp   = $baseline_ehp   * 0.4
      $enemy_atk  = $baseline_eatk  * 0.4
      $enemy_def  = $baseline_edef  * 0.4
      $enemy_heal = $baseline_eheal * 0.4

      $lunar_phase = "Le phase lunaire es Cire De Gibbous."
      $enemy_name  = "#{$lunar_phase} #{$fauna_type}"
    end

    def self.full_moon
      $player_hp     = $baseline_atk  #* 0.2
      $player_atk    = $baseline_atk  #* 0.2
      $player_def    = $baseline_def  #* 0.2
      $player_heal   = $baseline_heal #* 0.2
      $player_san    = $baseline_san  #* 0.2
      $player_tru    = $baseline_tru  #* 0.2
		
      $enemy_hp   = $baseline_ehp   * 0.2
      $enemy_atk  = $baseline_eatk  * 0.2
      $enemy_def  = $baseline_edef  * 0.2
      $enemy_heal = $baseline_eheal * 0.2

      $lunar_phase = "Le phase lunaire es Pleine Lune."
      $enemy_name  = "#{$lunar_phase} #{$fauna_type}"
    end

    def self.waning_gibbous
      $player_hp     = $baseline_atk  * 0.6
      $player_atk    = $baseline_atk  * 0.6
      $player_def    = $baseline_def  * 0.6
      $player_heal   = $baseline_heal * 0.6
      $player_san    = $baseline_san  * 0.6
      $player_tru    = $baseline_tru  * 0.6

      $enemy_hp   = $baseline_ehp   * 0.2
      $enemy_atk  = $baseline_eatk  * 0.2
      $enemy_def  = $baseline_edef  * 0.2
      $enemy_heal = $baseline_eheal * 0.2

      $lunar_phase = "Le phase lunaire es Evetement Gibbous."
      $enemy_name  = "#{$lunar_phase} #{$fauna_type}"
    end

    def self.last_quarter
      $player_hp     = $baseline_atk  * 0.4
      $player_atk    = $baseline_atk  * 0.4
      $player_def    = $baseline_def  * 0.4
      $player_heal   = $baseline_heal * 0.4
      $player_san    = $baseline_san  * 0.4
      $player_tru    = $baseline_tru  * 0.4

      $enemy_hp   = $baseline_ehp   * 0.4
      $enemy_atk  = $baseline_eatk  * 0.4
      $enemy_def  = $baseline_edef  * 0.4
      $enemy_heal = $baseline_eheal * 0.4

      $lunar_phase = "Le phase lunaire es Dernier trimestre."
      $enemy_name  = "#{$lunar_phase} #{$fauna_type}"
    end

    def self.waning_crescent
      $player_hp     = $baseline_atk  * 0.2
      $player_atk    = $baseline_atk  * 0.2
      $player_def    = $baseline_def  * 0.2
      $player_heal   = $baseline_heal * 0.2
      $player_san    = $baseline_san  * 0.2
      $player_tru    = $baseline_tru  * 0.2

      $enemy_hp   = $baseline_ehp   * 0.6
      $enemy_atk  = $baseline_eatk  * 0.6
      $enemy_def  = $baseline_edef  * 0.6
      $enemy_heal = $baseline_eheal * 0.6

      $lunar_phase = "Le phase lunaire es Aurfeur."
      $enemy_name  = "#{$lunar_phase} #{$fauna_type}"
    end
    
    def self.evaluate_metrics
      player_hp   = $player_hp
      player_atk  = $player_atk
      player_def  = $player_def
      player_heal = $player_heal
      player_san  = $player_san
      player_tru  = $player_tru
      
      adaptive_hp_minimum = $player_hp * 0.1250
      adaptive_hp_maximum = $player_hp - 2
      
      adaptive_atk_minimum  = $player_atk * 0.1250
      adaptive_atk_maxmimum = $player_atk - 2

      adaptive_def_minimum  = $player_def * 0.1250
      adaptive_def_maxmimum = $player_def - 2

      adaptive_heal_minimum  = $player_atk * 0.1250
      adaptive_heal_maxmimum = $player_atk - 2

      adaptive_san_minimum  = $player_san * 0.1250
      adaptive_san_maxmimum = $player_san - 2

      adaptive_tru_minimum  = $player_atk * 0.1250
      adaptive_tru_maxmimum = $player_atk - 2

      ## Notify about HP status
      current_hp = cette_int($player_hp < adaptive_hp_minimum) do
        puts "Your hit counter is below a critical threshold."
      end

      current_hp = maisette_int(current_hp, $player_hp > adaptive_hp_maximum) do
        puts "Your hit counter is presently thriving."
      end

      current_hp = sinon_int(current_hp) do
        puts "Look for potions in order to maintain your hit counter."
      end

      ## Notify about ATK status
      current_atk = cette_int($player_atk < adpative_atk_minimum) do
        puts "Your attack counter is below a critical threshold."
      end

      current_atk = maisette_int(current_atk, $player_atk > adaptive_atk_maximum) do
        puts "Your attack counter is presently thriving."
      end

      current_atk = sinon_int(current_hp) do
        puts "Look for better weapons to improve your attack counter."
      end

      ## Notify about DEF status
      current_def = cette_int($player_def < adaptive_def_minimum) do
        puts "Your defence counter is below a critical threshold."
      end

      current_def = maisette_int(current_atk, $player_def > adaptive_def_maximum) do
        puts "Your defence counter is presently thriving."
      end

      current_def = sinon_int(current_hp) do
        puts "Look for better shielding in order to maintain your defence counter."
      end
    end

    def self.lunar_cycle
      lunar_phases = [0, 1, 2, 3, 4, 5, 6, 7]

      # The current lunar phase mod 7
      current_phase  = $current_phase % 7
      #$current_phase = $current_phase + 1 % 7

      if    current_phase == lunar_phases[0]
        puts "\e[38;2;187;127;118mLa phase lunaire actuelle est: New Moon. Réinitialisation des statistiques du joueur...\e[0m"

        sleep(1)

        BequestCalender::LunarSeason.new_moon
        BequestCalender::LunarSeason.evaluate_metrics
      elsif current_phase == lunar_phases[1]
        puts "\e[38;2;187;127;118mLa phase lunaire actuelle est: Waxing Gibbous. Réinitialisation des statistiques du joueur...\e[0m"

        sleep(1)

        BequestCalender::LunarSeason.waxing_crescent
      elsif current_phase == lunar_phases[2]
        puts "\e[38;2;187;127;118mLa phase lunaire actuelle est: Waxing Gibbous. Réinitialisation des statistiques du joueur...\e[0m"

        sleep(1)

        BequestCalender::LunarSeason.first_quarter
      elsif current_phase == lunar_phases[3]
        puts "\e[38;2;187;127;118mLa phase lunaire actuelle est: First Quarter. Réinitialisation des statistiques du joueur...\e[0m"

        sleep(1)

        BequestCalender::LunarSeason.waxing_gibbous
      elsif current_phase == lunar_phases[4]
        puts "\e[38;2;187;127;118mLa phase lunaire actuelle est: Full_moon. Réinitialisation des statistiques du joueur...\e[0m"

        sleep(1)

        BequestCalender::LunarSeason.full_moon
      elsif current_phase == lunar_phases[5]
        puts "\e[38;2;187;127;118mLa phase lunaire actuelle est: Waning Gibbous. Réinitialisation des statistiques du joueur...\e[0m"

        sleep(1)

        BequestCalender::LunarSeason.waning_gibbous
      elsif current_phase == lunar_phases[6]
        puts "\e[38;2;187;127;118mLa phase lunaire actuelle est: Last Quarter. Réinitialisation des statistiques du joueur...\e[0m"

        sleep(1)

        BequestCalender::LunarSeason.last_quarter
      elsif current_phase == lunar_phases[7]
        puts "\e[38;2;187;127;118mLa phase lunaire actuelle est: Waning Crescent. Réinitialisation des statistiques du joueur...\e[0m"

        sleep(1)

        BequestCalender::LunarSeason.waning_crescent
      end

      sleep(1.5)
    end
  end
end