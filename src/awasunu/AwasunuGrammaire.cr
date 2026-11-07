#########################################################################################
#                                   Subjects And Verbs                                  #
#########################################################################################
# The rest of the French grammar that doesn't need to have a specific word class.       #
#########################################################################################
class Subject
  def self.pronoun(specify_pronoun)
    specify_pronoun
  end
end

class Verb
  def self.mange(specify_eaten)
    "un / une mange #{specify_eaten}"
  end

  def self.coupe(specify_chopped)
    "un / une coupe #{specify_chopped}"
  end

  def self.tombe(specify_fallen)
    "un / une tombe #{specify_fallen}"
  end
end

#########################################################################################
#                                  Genders de Francais                                  #
#########################################################################################
# This is where the basic word classes from Francais goes, for classifying everything   #
# in the current language of prestige. There is a few exceptions that either denote     #
# Japanese of origin on are supernatural or cursed in nature.                           #
#########################################################################################
class Le
  macro define_method(name, content)
    def {{name}}
      {{content}}
    end
  end

  #########################################################################################
  #                                     Les Coloures                                      #
  #########################################################################################
  # These color sets are based on RGB and CYMK rather than the full color spectrum. I     #
  # will gradually expand these color names to include the full French color spectrum     #
  # that are covered in the masculine gender.                                             #
  #########################################################################################
  ## Shades
  define_method self.noir_one(black_thing),   "Le #{black_thing} noir"
  define_method self.gris_one(grey_thing),     "Le #{grey_thing} gris"
  define_method self.blanc_one(white_thing), "Le #{white_thing} blanc"

  ## Primary Colours
  define_method self.rouge_one(red_thing),   "Le #{red_thing} rouge"
  define_method self.vert_one(green_thing), "Le #{green_thing} vert"
  define_method self.bleu_one(blue_thing),   "Le #{blue_thing} bleu"

  define_method self.rouge_two(red_thing),   "Le #{red_thing} rouge"
  define_method self.vert_two(green_thing), "Le #{green_thing} vert"
  define_method self.bleu_two(blue_thing),   "Le #{blue_thing} bleu"
  
  ## Secondary Colors
  define_method self.jaune(yellow_thing),       "Le #{yellow_thing} jaune"
  define_method self.magenta(magenta_thing), "Le #{magenta_thing} magenta"
  define_method self.cyan(cyan_thing),             "Le #{cyan_thing} cyan"
  
  ## Other Colors
  define_method self.violette(purple_thing),     "Le #{purple_thing} violette"
  define_method self.citrone(lime_thing),        "Le #{lime_thing} citrone"
  define_method self.orange(orange_thing),       "Le #{orange_thing} orange"
  define_method self.vermillon(vermillon_thing), "Le #{vermillon} vermillon"
  define_method self.ambre(amber_thing),         "Le #{amber_thing} ambre"

  #########################################################################################
  #                                       Le Pets                                         #
  #########################################################################################
  define_method self.chat(cat_adjective),                          "Le chat #{cat_adjective} " # A cat
  define_method self.chien(dog_adjective),                        "Le chien #{dog_adjective} " # A dog
  define_method self.cochon_d_inde(gpig_adjective),      "Le cochon_d'inde #{gpig_adjective} " # A guinea pig
  define_method self.hamster(hamster_adjective),            "Le hamster #{hamster_adjective}" # A hamster
  define_method self.lapin(rabbit_adjective),                  "Le lapin #{rabbit_adjective}" # A rabbit
  define_method self.lezard(lizard_adjective),                "Le lezard #{lizard_adjective}" # A lizard
  define_method self.perroquet(parrot_adjective),          "Le perroquet #{parrot_adjective}" # A parrot
  define_method self.poisson_orange(goldfish_adjective),   "Le poisson #{goldfish_adjective}" # A goldfish

  #############################################################################################
  #                                    Select Farm Animals                                    #
  #############################################################################################
  define_method self.loup(wolf_adjective),                         "Le loup #{wolf_adjective}"
  define_method self.renard(fox_adjective),                          "Le fox #{fox_adjective}"
  define_method self.agneau(lamb_adjective),                     "Le agneau #{lamb_adjective}"
  define_method self.ane(donkey_adjective),                       "Le ane #{donkey_adjective}"
  define_method self.canard(duck_adjective),                     "Le canard #{duck_adjective}"
  define_method self.cheval(horse_adjective),                   "Le cheval #{horse_adjective}"
  define_method self.chevre(goat_adjective),                     "Le chevre #{goat_adjective}"
  define_method self.cochon(pig_adjective),                       "Le cochon #{pig_adjective}"
  define_method self.coq(rooster_adjective),                     "Le coq #{rooster_adjective}"
  define_method self.mouton(sheep_adjective),                   "Le mouton #{sheep_adjective}"
  define_method self.poney(pony_adjective),                       "Le poney #{pony_adjective}"
  define_method self.poussin(chick_adjective),                 "Le poussin #{chick_adjective}"
  define_method self.veau(calf_adjective),                         "Le veau #{celf_adjective}"

  #########################################################################################
  #                               Les Animeux De Le Foret                                 #
  #########################################################################################
  # This is for generating strings for animals into Francais. Note that this may also     #
  # include animals of fantasy and fantistique origin. ( Fantastique is a specific sub    #
  # genre of fantasy fiction. These animals utilize the masculine word class.             #
  #########################################################################################
  define_method self.cerf(deer_adjective),                         "Le cerf #{deer_adjective}"
  define_method self.ours(bear_adjective),                         "Le ours #{bear_adjective}"
  define_method self.raton_laveur(racoon_adjective),     "Le raton laveur #{racoon_adjective}"

  #############################################################################################
  #                                     Dungeon Crawling                                      #
  #############################################################################################
  define_method self.rat(rat_adjective),          "Le rat #{rat_adjective}"
  define_method self.araignee(spider_adjective),  "Le araignee #{spider_adjective}"
  define_method self.gobelin(goblin_adjective),   "Le gobelin #{goblin_adjective}"
  define_method self.squelette(undead_adjective), "Le squelette #{undead_adjective}" # consider inventing a term
  define_method self.limon(sludge_adjective),      "La limon #{sludge_adjective}"

  ## Specifies a quality for a specific one-way dungeon.
  define_method self.donjon_unique(passage_adjective), "Le donjon a sens unique #{passage_adjective}"
  
  #############################################################################################
  #                                      Les Familles                                         #
  #############################################################################################

  #############################################################################################
  #                                 Masculine Class Monsters                                  #
  #############################################################################################
  define_method self.wancien(cthulhu_adjective), "Le wancien #{cthulhu_adjective}"
  
  #############################################################################################
  #                                  Masculine Class Traps                                    #
  #############################################################################################
  define_method self.mien_poison(mine_adjective), "Le mien poison #{mine_adjective}"
  define_method self.pointe_de_le_radeau(raft_adjective), "Pointe De Le Radeau, c'est #{raft_adjective}."

  #############################################################################################
  #                                Food Items For Journeying                                  #
  #############################################################################################
  define_method self.pizza(topingu), "Topingu pour le pizza est #{topingu}."
end

class La
  macro define_method(name, content)
    def {{name}}
      {{content}}
    end
  end

  #########################################################################################
  #                                     Les Coloures                                      #
  #########################################################################################
  # These color sets are based on RGB and CYMK rather than the full color spectrum. I     #
  # will gradually expand these color names to include the full French color spectrum     #
  # that are covered in the masculine gender.                                             #
  #########################################################################################
  define_method self.chartreuse(chartreuse_thing), "La #{chartreuse_thing} chartreuse"

  #############################################################################################
  #                                    Select Farm Animals                                    #
  #############################################################################################
  define_method self.poule(chicken_adjective),         "La poule #{chicken_adjective}"
  define_method self.souris(mouse_adjective),           "La souris #{mouse_adjective}"
  define_method self.vache(cow_adjective),                 "La vache #{cow_adjective}"
  
  #########################################################################################
  #                               Les Animeux De Le Foret                                 #
  #########################################################################################
  # This is for generating strings for animals into Francais. Note that this may also     #
  # include animals of fantasy and fantistique origin. ( Fantastique is a specific sub    #
  # genre of fantasy fiction. These animals utilize the feminine word class.              #
  #########################################################################################
  define_method self.chouette(owl_adjective),           "La chouette #{owl_adjective}"

  #############################################################################################
  #                                     Dungeon Crawling                                      #
  #############################################################################################
  define_method self.chauve_souris(bat_adjective), "La chauve-souris #{bat_adjective}"

  #############################################################################################
  #                                         Unclear                                           #
  #############################################################################################
  # These are for terms where its unclear whether its referring to the ceramic or the thing   #
  # that a ceramic holds.                                                                     #
  #############################################################################################
  define_method self.vase(vase_adjective), "La vase #{vase_adjective}"
end

class Les
  macro define_method(name, content)
    def {{name}}
      {{content}}
    end
  end

  #########################################################################################
  #                                     Les Animeux                                       #
  #########################################################################################
  # This is for generating strings for animals into Francais. Note that this may also     #
  # include animals of fantasy and fantistique origin. ( Fantastique is a specific sub    #
  # genre of fantasy fiction. These animals utilize the plural word class.                #
  #########################################################################################
  define_method self.troupeau(herd_adjective), "Les troupeaus #{herd_adjective}"

  #########################################################################################
  #                                  Execution Methods                                    #
  #########################################################################################
  define_method self.faiseur_de_veuves(widowed_adjective), "Les feaiseur de veuves #{widowed_adjective}"
  
  #########################################################################################
  #                                  Plural Class Gear                                    #
  #########################################################################################
  define_method self.axes_de_urgence(ax_adjective), "Les Axes De Urgence #{ax_adjective}"
  
  define_method self.pizzas(topingos), "Anos topingos pour les pizzas sont #{topingos}."
end

## Les genders de feux pour Nihongo
class Anu
  macro define_method(name, content)
    def {{name}}
      {{content}}
    end
  end

  #########################################################################################
  #                               Pseudo Masculine Class Monsters                         #
  ######################################################################################### 
  define_method self.umigarugu(gargoyal_adjective), "Anu Umigarugo #{gargoyal_adjective}"
end

class Ana
  macro define_method(name, content)
    def {{name}}
      {{content}}
    end
  end

  #########################################################################################
  #                              Pseudo Feminine Class Monsters                           #
  #########################################################################################
  define_method self.girocinopeqa(plate_adjective), "Ana girocinopeqa #{plate_adjective}" # Girochin Plaque
end

class Anos
  macro define_method(name, content)
    def {{name}}
      {{content}}
    end
  end

  #########################################################################################
  #                                  Format Of Narrative                                  #
  #########################################################################################
  # This refers to a four-frame manga like format styled kind 4-koma, but specialized in  #
  # serious and morbid topics in ki-sho-ten-ketsu in a French dialect.                    #
  #########################################################################################
  define_method self.qutarocaderos(format_adjective), "Anos qutarocaderos #{format_adjective}"
  define_method        self.manfra(format_adjective), "Le manfra #{format_adjective}"
  
  #########################################################################################
  #                                  Pseudo Plural Class Gear                             #
  #########################################################################################
  define_method self.kaidokuzaios(antidote_adjective), "Anos Kaidokuzaios #{antidote_adjective}"
end

#############################################################################################
#                                     Hybrid PortManteau                                    #
#############################################################################################
class Te
  macro define_method(name, content)
    def {{name}}
      {{content}}
    end
  end

  ###########################################################################################
  #                       Masculine Class Hybrid Port Manteau Monster                       #
  ###########################################################################################
  define_method self.sepeceterekimige(spectre_adjective),  "Te sepeceterekimige #{spectre_adjective}" # spectre_de_kimigayo
  define_method self.acideserupenete(serpent_adjective),   "Te acideserupenete #{serpent_adjective}" # Acid Serpent
  define_method self.acideduragone(dragon_adjective),      "Te acideduragone #{dragon_adjective}"

  ###########################################################################################
  ##
  ###########################################################################################
end

class Ta
  macro define_method(name, content)
    def {{name}}
      {{content}}
    end
  end

  ###########################################################################################
  #                       Feminine Class Hybrid Port Manteau Monster                       #
  ###########################################################################################
  define_method self.sepecetere_imeperaterica(spectre_adjective), "Ta sepecetere iweperaterica #{spectre_adjective}" # spectre de imperatrice
  define_method self.noneseturasona(nun_adjective),               "Ta noneseturasona #{nun_adjective}"
  define_method self.habucorosa(female_elder_god_adjective),      "Ta habucorosa #{female_elder_god_adjective}"
end

class Deso
  macro define_method(name, content)
    def {{name}}
      {{content}}
    end
  end

  ###########################################################################################
  #                         Hybrid Plural Class Monsters And Traps                          #
  ###########################################################################################
  define_method self.teruposva(teruposva_adjective), "Deso teruposva #{teruposva_adjective}" # troupeau de sale
  define_method self.kokenopo(moss_adjective),             "Deso kokenopo #{moss_adjective}" # Koke No Poison
end
