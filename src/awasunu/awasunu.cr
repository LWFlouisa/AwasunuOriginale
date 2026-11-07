#######################################################################################
#                                      Awasunu                                        #
#######################################################################################
# This handles basic string generation for the scripting language.                    #
#######################################################################################
macro define_method(name, content)
  def {{name}}
    {{content}}
  end
end

define_method viola, system("clear")

define_method ast(label, value), [ label, value ]
define_method       atom(value), ast(value, "#{value}")

define_method   encrire(input), puts input
define_method encrireln(input), print input

## Name of interactive terminal.
define_method documentation(title, description), encrireln("#{title} #{description}")

def sangehommage(prompt)
  print "#{prompt} "; read_line.chomp # gets.not_nil!.chomp
end

def sangehommage_single_input(prompt)
  print "#{prompt} "; gets.not_nil!.chomp.split(" ")
end


def parle_merci(prompt, output)
  print "#{prompt} "; puts output
end

define_method objet(mot_genre, mot_specifique), "#{mot_genre} #{mot_specifique} "
define_method                  subjet(pronoun),                     "#{pronoun} "
define_method                     verb(action),                      "#{action}."

define_method osv(o, s, v), "#{o} #{s} #{v}"
define_method sov(s, o, v), "#{s} #{o} #{v}"

define_method expression(phrase_one, phrase_two), encrire(%Q(["#{phrase_one}", "#{phrase_two}"]\n))

define_method parle_grammaire(v, o, s), encrireln("['#{v}', '#{o}','#{s}']")
define_method nihongotupelo(v, o, s), puts "['#{v}', '#{o}', '#{s}']"

## Grammar
define_method ne(first_noun, second_noun), encrireln("Ne #{first_noun} ou #{second_noun}, ")
define_method            mais(third_noun), encrireln("mais c'est #{third_noun}. ")

define_method         cette(noun, adjective), "Cette #{noun} est #{adjective}."
define_method      maisette(noun, adjective), "Maisette #{noun} est #{adjective}."
define_method  sinon(noun, adj1, adj2, adj3), "Sinon #{noun} n'est #{adj1} ou #{adj2}, mais c'est #{adj3}."

define_method parle(phrase), encrireln(phrase)

def bokette(phrase)
  sleep(1.5)
  
  parle(phrase)
end

def wodesa(*args)
  o1, s1, v1, s2, o2, v2,
  v3, o3, s3, s4, o4, v4 = args

  a = osv(o1, s1, v1)
  b = sov(s2, o2, v2)
  c = vos(v3, o3, s3)
  d = sov(s4, o4, v4)

  %Q(#{a}, #{b}. #{c}, #{d})
end
      
def grammaire_clustre(*args)
  v1, o1, s1, s2, o2, v2,
  o3, s3, v3, s4, o4, v4 = args

  a = vos(v1, o1, s1)
  b = sov(s2, o2, v2)
  c = osv(o3, s3, v3)
  d = sov(s4, o4, v4)

  %Q(#{a}, #{b}. #{c}, #{d})
end

def ouvert(a, b, c, d, e, g)
  File.open(a, "a") { |f|
    f.puts b
  }

  File.open(c, "a") { |f|
    f.puts d
  }

  File.open(e, "a") { |f|
    f.puts g
  }
end

def ouvert_tr(a1, a2,
              b1, b2,
              c1, c2)

  a = [a1, a2]
  b = [b1, b2]
  c = [c1, c2]

  File.open(a[0], "w") { |f|
    f.print a[1]
  }

  File.open(b[0], "w") { |f|
    f.print b[1]
  }

  File.open(c[0], "w") { |f|
    f.print c[1]
  }
end

def ouverdoc(a, b, c, d, e, g)
  document1 = <<-FIRSTDOC
  #{b}
  FIRSTDOC

  document2 = <<-SECONDDOC
  #{d}
  SECONDDOC

  document3 = <<-THIRDDOC
  #{g}
  THIRDDOC

  File.open(a, "a") { |f|
    f.puts document1
  }

  File.open(c, "a") { |f|
    f.puts document2
  }

  File.open(e, "a") { |f|
    f.puts document3
  }
end

def assign_parallel(a, b, c, d, e, f, g, h)
  ## That
  that = cette(a, b)

  ## But That
  but_that = maisette(c, d)

  ## Otherwise
  otherwise = sinon(e, f, g, h)

  ## Exclusive Otherwise
  ouvert("data/cette/cette_inventory.txt",            that,       
         "data/maisette/maisette_inventory.txt",  but_that,
         "data/sinon/sinon_inventory.txt",       otherwise)
end

def corpus_de_livretude(object, subject, verb)
  content = <<-LIVRETRUDE
  word_orders = [
    [[#{verb},   #{object}, #{subjet}],
     [#{objet},  #{subjet},   #{verb}],
     [#{subjet}, #{object}, #{object}]],

    [[#{subjet}, #{object}, #{object}],
     [#{verb},   #{object}, #{subjet}],
     [#{objet},  #{subjet},   #{verb}]],

    [[#{objet},  #{subjet},   #{verb}],
     [#{subjet}, #{object}, #{object}],
     [#{verb},   #{object}, #{subjet}]],
  ]
  
  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  random_word = word_orders[cur_row][cur_col][cur_arr]
  
  print " : "
  puts random_word
  LIVRETRUDE

  File.open("msrc/corpus_de_livretrude.cr", "w") { |f|
    f.puts content
  }
end

def vexpress(*args)
  array_name, v1, o1, s1, s2, o2, v2 = args
  
  File.open("#{array_name}.cr", "w") { |f|
    f.puts <<-EXPRESSION
    require "./src/Lhacurimosa"

    #{array_name} = ["#{v1}", "#{o1}", "#{s1}", "#{s2}", "#{o2}", "#{v2}"]
    EXPRESSION
    
    f.puts "
new_index = ARGV[0].to_i
encrireln(#{array_name}[new_index])"
  }
end

################################################################################################
#                                    Recursive Awasunu                                         #
################################################################################################
# recursive_method recursive_encrire(data, outfname, outfile), "#{data}", File.open("#{outfname}.awa", "w") { |f|
  # f.puts %Q(encrire #{outfile})
# }

# recursive_method recursive_encrireln(data, outfname, outfile), "#{data}", File.open("#{outfname}.awa", "w") { |f|
#   f.puts %Q(encrireln #{outfile})
# }

## Recursive Encrire
recursive_method encriref(input, outfname), encrire(input), File.open("#{outfname}.awa", "w") { |f| f.puts "encrireln #{input}"}
obelisk_method   encrireo(input, outfname), input, obelisk("./awasunu #{outfname}")

## Recursive Rphrase
recursive_method contrastiff(objet, subjet, verb, outfname), encrire("#{objet} #{subject} #{verb}"), File.open("#{outfname}.awa", "w") { |f| puts "encrire #{object} #{subject} #{verb}." }
obelisk_method   contrastivo(objet, subjet, verb, outfname), "#{objet} #{subject} #{verb}", obelisk("#{objet} #{subjet} #{verb}")

## Recursive Grammar Patterns
recursive_method recursive_osv(o, s, v), puts("#{o} #{s} #{v}"), File.open("#{o}.awa", "w") { |f|
  f.puts %Q(encrireln #{o} #{s} #{v})
}

recursive_method recursive_vos(v, o, s), print("#{v} #{o} #{s}"), File.open("#{v}.awa", "w") { |f|
  f.puts %Q(encrireln #{v} #{o} #{s})
}

recursive_method recursive_osv(s, o, v), print("#{s} #{o} #{v}"), File.open("#{s}.awa", "w") { |f|
  f.puts %Q(encrireln #{s} #{o} #{v})
}

recursive_method recursive_ovs(o, v, s), puts("#{o} #{v} #{s}"), File.open("#{o}.awa", "w") { |f|
  f.puts %Q(encrireln #{o} #{v} #{s})
}

## This function may not need recursive osv, vos, or sov.
recursive_method recursive_expression(phrase_one, phrase_two, outfname), "#{phrase_one} #{phrase_two}", File.open("#{outfname}.awa", "w") { |f|
  f.puts %Q(encrireln #{phrase_one} #{phrase_two})
}

recursive_method recursive_pgram(v, o, s), %Q(["#{v}", "#{o}", "#{s}]"), File.open("#{v}.awa", "w") { |f|
  f.puts %Q(#{v} #{o} #{s})
}

recursive_method recursive_ntupe(v, o, s), %Q("[#{v}", "#{o}", "#{s}]"), File.open("#{v}.awa", "w") { |f|
  f.puts %Q(#{v} #{i} #{s})
}

################################################################################################
#                                      Recursive Grammar                                       #
################################################################################################

################################################################################################
################################################################################################
recursive_method recursive_cat(classified_cat, subject, verb, outfile), encrire("#{classified_cat} #{subject} #{verb}"), File.open("#{outfile}.awa", "a") { |f| f.puts "encrireln #{classified_cat}#{subject} #{verb}" }

def chatte_osv(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_osv(Le.chatte(animal_color), Subject.pronoun(current_pronoun), Verb.mange(action_quantifier))
end

def chatte_sov(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_sov(Subject.pronoun(current_pronoun), Le.chatte(animal_color), Verb.mange(action_quantifier))
end

################################################################################################
################################################################################################
recursive_method recursive_dog(classified_dog, subject, verb, outfile), encrire("#{classified_dog} #{subject} #{verb}"), File.open("#{outfile}.awa", "a") { |f| f.puts "#{classified_dog} #{subject} #{verb}" }

def chienne_osv(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_osv(Le.chatte(animal_color), Subject.pronoun(current_pronoun), Verb.mange(action_quantifier))
end

def chienne_sov(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_sov(Subject.pronoun(current_pronoun), Le.chatte(animal_color), Verb.mange(action_quantifier))
end

################################################################################################
################################################################################################
recursive_method recursive_gpig(classified_gpig, subject, verb, outfile), encrire("#{classified_gpig} #{subject} #{verb}"), File.open("#{outfile}.awa", "a") { |f| f.puts "#{classified_dog} #{subject} #{verb}" }

def gpig_osv(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_osv(Le.chatte(animal_color), Subject.pronoun(current_pronoun), Verb.mange(action_quantifier))
end

def gpig_sov(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_sov(Subject.pronoun(current_pronoun), Le.chatte(animal_color), Verb.mange(action_quantifier))
end

################################################################################################
################################################################################################
recursive_method recursive_hamster(classified_hamster, subject, verb, outfile), encrire("#{classified_hamster} #{subject} #{verb}"), File.open("#{outfile}.awa", "a") { |f| f.puts "#{classified_hamster} #{subject} #{verb}" }

def hamster_osv(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_osv(Le.chatte(animal_color), Subject.pronoun(current_pronoun), Verb.mange(action_quantifier))
end

def hamster_sov(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_sov(Subject.pronoun(current_pronoun), Le.chatte(animal_color), Verb.mange(action_quantifier))
end

################################################################################################
################################################################################################
recursive_method recursive_lapin(classified_lapin, subject, verb, outfile), encrire("#{classified_lapin} #{subject} #{verb}"), File.open("#{outfile}.awa", "a") { |f| f.puts "#{classified_lapin} #{subject} #{verb}" }

def lapine_osv(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_osv(Le.chatte(animal_color), Subject.pronoun(current_pronoun), Verb.mange(action_quantifier))
end

def lapine_sov(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_sov(Subject.pronoun(current_pronoun), Le.chatte(animal_color), Verb.mange(action_quantifier))
end

################################################################################################
################################################################################################
recursive_method recursive_lezard(classified_lezard, subject, verb, outfile), encrire("#{classified_lezard} #{subject} #{verb}"), File.open("#{verb}.awa", "a") { |f| f.puts "#{classified_lezard} #{subject} #{verb}" }

def lezard_osv(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_osv(Le.chatte(animal_color), Subject.pronoun(current_pronoun), Verb.mange(action_quantifier))
end

def lezard_sov(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_sov(Subject.pronoun(current_pronoun), Le.chatte(animal_color), Verb.mange(action_quantifier))
end

################################################################################################
################################################################################################
recursive_method recursive_perroquet(classified_perroquet, subject, verb, outfile), encrire("#{classified_perroquet} #{subject} #{verb}"), File.open("#{outfile}.awa", "a") { |f| f.puts "#{classified_perroquet} #{subject} #{verb}" }

def perroquet_osv(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_osv(Le.chatte(animal_color), Subject.pronoun(current_pronoun), Verb.mange(action_quantifier))
end

def perroquet_sov(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_sov(Subject.pronoun(current_pronoun), Le.chatte(animal_color), Verb.mange(action_quantifier))
end

################################################################################################
################################################################################################
recursive_method recursive_porange(classified_perroquet, subject, verb, outfile), encrire("#{classified_poisson_orange} #{subject} #{verb}"), File.open("#{outfile}.awa", "a") { |f| f.puts "#{classified_poisson_orange} #{subject} #{verb}" }

def porange_osv(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_osv(Le.chatte(animal_color), Subject.pronoun(current_pronoun), Verb.mange(action_quantifier))
end

def porange_sov(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_sov(Subject.pronoun(current_pronoun), Le.chatte(animal_color), Verb.mange(action_quantifier))
end

################################################################################################
################################################################################################
recursive_method recursive_loup(classified_loup, subject, verb, outfile), encrire("#{classified_loup} #{subject} #{verb}"), File.open("#{outfile}.awa", "a") { |f| f.puts "encricreln  #{classified_loup} #{subject} #{verb}" }

def loup_osv(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_osv(Le.chatte(animal_color), Subject.pronoun(current_pronoun), Verb.mange(action_quantifier))
end

def loup_sov(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_sov(Subject.pronoun(current_pronoun), Le.chatte(animal_color), Verb.mange(action_quantifier))
end

################################################################################################
################################################################################################
recursive_method recursive_renard(classified_renard, subject, verb, outfile), encrire("#{classified_renard} #{subject} #{verb}"), File.open("#{outfile}.awa", "a") { |f| f.puts "encricreln  #{classified_renard} #{subject} #{verb}" }

def renard_osv(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_osv(Le.chatte(animal_color), Subject.pronoun(current_pronoun), Verb.mange(action_quantifier))
end

def renard_sov(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_sov(Subject.pronoun(current_pronoun), Le.chatte(animal_color), Verb.mange(action_quantifier))
end

################################################################################################
################################################################################################
recursive_method recursive_agneau(classified_agneau, subject, verb, outfile), encrire("#{classified_agneau} #{subject} #{verb}"), File.open("#{outfile}.awa", "a") { |f| f.puts "encricreln  #{classified_agneau} #{subject} #{verb}" }

def agneau_osv(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_osv(Le.chatte(animal_color), Subject.pronoun(current_pronoun), Verb.mange(action_quantifier))
end

def agneau_sov(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_sov(Subject.pronoun(current_pronoun), Le.chatte(animal_color), Verb.mange(action_quantifier))
end

################################################################################################
################################################################################################
recursive_method recursive_ane(classified_ane, subject, verb, outfile), encrire("#{classified_ane} #{subject} #{verb}"), File.open("#{outfile}.awa", "a") { |f| f.puts "encricreln  #{classified_agneau} #{subject} #{verb}" }

def ane_osv(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_osv(Le.chatte(animal_color), Subject.pronoun(current_pronoun), Verb.mange(action_quantifier))
end

def ane_sov(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_sov(Subject.pronoun(current_pronoun), Le.chatte(animal_color), Verb.mange(action_quantifier))
end

################################################################################################
################################################################################################
recursive_method recursive_canard(classified_canard, subject, verb, outfile), encrire("#{classified_canard} #{subject} #{verb}"), File.open("#{outfile}.awa", "a") { |f| f.puts "encricreln  #{classified_canard} #{subject} #{verb}" }

def canard_osv(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_osv(Le.chatte(animal_color), Subject.pronoun(current_pronoun), Verb.mange(action_quantifier))
end

def canard_sov(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_sov(Subject.pronoun(current_pronoun), Le.chatte(animal_color), Verb.mange(action_quantifier))
end

################################################################################################
################################################################################################
recursive_method recursive_chevre(classified_chevre, subject, verb, outfile), encrire("#{classified_chevre} #{subject} #{verb}"), File.open("#{outfile}.awa", "a") { |f| f.puts "encricreln #{classified_chevre} #{subject} #{verb}" }

def chevre_osv(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_osv(Le.chatte(animal_color), Subject.pronoun(current_pronoun), Verb.mange(action_quantifier))
end

def chevre_sov(*args)
  animal_color, current_pronoun, action_quantifier = args

  recursive_sov(Subject.pronoun(current_pronoun), Le.chatte(animal_color), Verb.mange(action_quantifier))
end

################################################################################################
#                                Conlang Specific Functionality                                #
################################################################################################
define_method      yumemoire(agent, location), "#{agent} has been transported to #{location}."
define_method    posedonokitano(agent, enemy), "#{agent} utilisent le posedonokitano et coupe le #{enemy}."
define_method sanadforutese(sender, reciever), "#{sender} encrivant un lettre pour #{reciever}."

## Describes whether something is haunted, and whether it concentrates yokai.
define_method    yokenozen(agent, location), "#{agent} est en #{location}, c'est yokenozen."
define_method hauntecabine(location, hante),  "#{location} est hante par #{hante}."

### Dialectical differences ( aka aliases )

# Climb hidden latter into cobblestone basement.
define_method entrerokku(agent, entrance, basement), "#{agent} entreroche dans #{basement}."

#### Ninhongo Parlez-Vous
define_method seibetsu(word_class), "#{word_class}"
define_method   ejento(agent_name), "#{agent_name}"
define_method  keiyoshi(adjective),  "#{adjective}"
define_method      shudai(subject),    "#{subject}"
define_method        doshi(action),     "#{action}"
define_method      fukishi(adverb),     "#{adverb}"

define_method nihongo(arg1, arg2, arg3, arg4, arg5, arg6), "#{arg1} #{arg2} #{arg3} #{arg4} #{arg5} #{arg6}"

## Japanese Contrastive
def sore(a, b)
  "Sora wa #{a} #{b}"
  
  sore = [ a, b ]
  
  File.open("data/japanese/positive/sore_a.txt", "a") { |f|
    f.puts sore[0]
  }

  File.open("data/japanese/positive/sore_b.txt", "a") { |f|
    f.puts sore[1]
  }
end

def shikashu(a, b)
  "Shikashi wa #{a} #{b}"
  
  shikashi = [ a, b ]

  File.open("data/japanese/positive/shikashi_a.txt", "a") { |f|
    f.puts shikashi[0]
  }

  File.open("data/japanese/positive/shikashi_b.txt", "a") { |f|
    f.puts shikashi[1]
  }
end

def matawa(a, b, c, d)
  "Matawa sora #{a} ni wa #{b} naishi #{c}, shikashi wa #{c}."

  matawa_nest = [ b, c ]
  matawa_est  = d

  File.open("data/japanese/positive/matawa_nest_a.txt", "a") { |f|
    f.puts matawa_nest[0]
  }

  File.open("data/japanese/positive/matawa_nest_b.txt", "a") { |f|
    f.puts matawa_nest[1]
  }
  
  File.open("data/japanese/positive/matawa_est.txt", "a") { |f|
    f.puts shikashi
  }
end

## Hanten-Ronri
def nisore(a, b)
  "Sono gyaku sora wa #{a} #{b}"
  
  nisore = [ a, b ]

  File.open("data/japanese/negative/nisore_a.txt", "a") { |f|
    f.puts nisore[0]
  }

  File.open("data/japanese/negative/nisore_b.txt", "a") { |f|
    f.puts nisore[1]
  }
end

def nishikashi(a, b)
  "Sono gyaku shikashi wa #{a} #{b}."

  nishikashi = [ a, b ]

  File.open("data/japanese/negative/matawa_nest_a.txt", "a") { |f|
    f.puts nishikashi[0]
  }

  File.open("data/japanese/negative/matawa_nest_b.txt", "a") { |f|
    f.puts nishikashi[1]
  }
end

def nimatawa(a, b, c, d)
  "Sono gyaku matawa sora #{a} wa #{b} naishi #{c}, shikashi wa #{d}"

  nimatawa_nest = [ b, c ]
  nimatawa_est  = d

  File.open("data/japanese/negative/nimatawa_nest_a.txt", "a") { |f|
    f.puts nimatawa_nest[0]
  }

  File.open("data/japanese/negative/nimatawa_nest_b.txt", "a") { |f|
    f.puts nimatawa_nest[1]
  }
  
  File.open("data/japanese/negative/nimatawa_est.txt", "a") { |f|
    f.puts nimatawa_est
  }
end

## Japanese Equivalent constraint logic
def nai(fact_one, fact_two)
  encrire("Nai [ #{fact_one} ] anata [ #{fact_two} ], ")
end

def shikasa(fact_three)
  encrire("shikashi #{fact_three}")
end

################################################################################################
#                                Who What When Where Why How                                   #
################################################################################################
#
################################################################################################
define_method nom(a),                                                 "Mes nom est #{a}."
define_method buttai(b),                                             "C'est un/une #{b}."
define_method temps(c),                                               "Le temp est #{c}."
define_method fukin(d),                                "Je suis en le voisinage de #{d}."
define_method motif(e),                                    "Mes raison pour ce est #{e}."
define_method hono(f),         "Mois methode pour le fabrication mes objectifs est #{f}."
define_method jiko(a, b, c),        "Vous avoir damande moi #{a} a propos #{b} par #{c}."

## Unite specific people at a time and place
define_method     unir(a, b, c), "Je avoir unif avec #{a} avec #{b} a #{c}."
define_method         genkei(a),        "Je suis un etudiant a propos #{a}."
define_method musee_comprime(a),                "cette musee comprime #{a}."
define_method      noremodei(a),               "Cette #{a} est noermodeios."

define_method ninom(a),                                           "Mes nom est ne #{a}."
define_method nibuttai(b),                                      "C'est non un/une #{b}."
define_method netemps(c),                                         "Le temp est ne #{c}."
define_method nifukin(d),                          "Je suis ne en le voisinage de #{d}."
define_method nemotif(e),                              "Mes raison pour ce est ne #{e}."
define_method nihono(f),   "Mois methode pour le fabrication mes objectifs est ne #{f}."

## Disunification
define_method neunir(a, b, c),            "Je ne avoir unif avec #{a} avec #{b} a #{c}."
define_method nijiko(a, b, c),  "Vous ne avoir damande moi #{a} a propos #{b} par #{c}."
define_method     nigenkei(a),                   "Je suis ne un etudiant a propos #{a}."

################################################################################################
#                                  Weaponry And Cursed Items                                   #
################################################################################################
# This defines the DSL for giving recipients cursed items, such as when they reach specific    #
# locations in the Roguelike.                                                                  #
#                                                                                              #
# Traditionally weapon, lamp, and knob smith were considered unclean professions, usually done #
# as a public service when released from colonial prisons. Lamps in particular were the least  #
# clean do them being crafted large enough to function as solitary confinement. This meant     #
# that being able to control the power of a lamp carried connations that don't typically exist #
# in either Japanese or French culture.                                                        #
#                                                                                              #
# Do to the types of animals picked for making soap, more generally the connation of being     #
# washed with that rather than herbal soap, meant the term soap itself being a perjorative for #
# those obsessed more by appearances than being authentic. That's not to say people didn't     #
# clean, but that some soaps were seen as marked with blood.                                   #
################################################################################################
# Cursed weapon smith
define_method kurosumisu(cursed_weapon, recipient),    "#{recipient} avoir un #{cursed_weapon} par anu kurosumisu."

# Cursed lamp smith
define_method coperasumisu(cursed_lamp, recipient),    "#{recipient} avoir un #{cursed_lamp} par anu coperasumisu."

# Cursed knob smith
define_method burasusumisu(crafted_knob, recipient), "#{recipient} avoir un #{crafted_knob} par anu burasusumisu."

## Soap From Meat, ala "Ivory Soap"
define_method vanedesopu(cursed_meat, recipient),        "#{recipient} avoir un #{cursed_meat} par anu vanedesopu."

## Soap from Herbs "Herbal Soap"
define_method erobalisusopa(cursed_herb, recipient),  "#{recipient} avoir un #{cursed_herb} par ana erobalisusopa."

## Soap from books "Whitewashed books"
define_method iverisopa(cursed_book, recipient),          "#{recipient} avoir un #{cursed_book} par ana iverisopa."

################################################################################################
#                                        French Actions                                        #
################################################################################################
define_method    mange(a, b),    "Mange un #{a} en #{b}."
define_method    coupe(a, b),    "Coupe un #{a} en #{b}."
define_method   cuicre(a, b),   "Cuicre un #{a} en #{b}."
define_method baguette(a, b), "Baguette un #{a} en #{b}."

define_method guillotine(verb, subject),       "Guillotine #{verb} #{subject}."
define_method ax_head(verb, subject),    "Tete Du Crescent #{verb} #{subject}."
define_method roboparle(verb, subject),           "Le robo #{verb} #{subject}."

################################################################################################
#                                         Dream Logic                                          #
################################################################################################
# These are functions specifically in reference to dream patterns I've had when studying my    #
# my own subconscious. A clever analyst will notice that dream symbols also frequently overlap #
# with folklore symbols. The difference here is that dream symbols are treated as explicit     #
# anomalies in order to assess what the unincorporated shadow is.                              #
################################################################################################
define_method   parle_a_robo(object, subject, verb, your_name), "#{your_name}: #{subject} #{verb} #{object}"

define_method argue_purpose(a, b, c),           %Q(#{a} has elements of #{b}, but #{c} is primarily composed of #{b}.)
define_method basement_ghost(a, b, c),          %Q(#{a} checks on noise in #{b}, and invited to dinner by #{c}. Don't eat #{c}'s food or you'll never leave #{b}.)
define_method bedroom_coffee_maker(a, b),       %Q(#{a} is a room in the #{b}.)
define_method deer_attack(a, b),                %Q(Deer #{a} attack specimen #{b} as a unit of multiple deer, before #{b} wakes up.)
define_method explore_bedroom(a),               %Q(#{a} explores the current bedroom.)
define_method goat_ride_salamander(a, b, c, d), %Q(#{a} rides #{b} causing the end of the world, survived by #{c}. #{a} is theorized to eat lifestock, and is unknown whether to target #{d}.)

define_method greenhouse_path(a, b), %Q(#{a} is in the greenhouse of #{b}.)
define_method innocent_hour(a),      %Q(#{a} currently in the hour of innocense, and has tiny horns.)
define_method terror_hour(a),        %Q(#{a} currently in the hour of terror, and has long horns.)
define_method is_haunted?(a, b, c),  %Q(#{a} thinks #{c} is haunted, but not #{b}.)

define_method local_reality_zone(a, b, y1, x1, y2, x2), %Q(#{a} is a local reality zone of #{b}, with #{a} having a local y of #{y1} and x of #{x1}. But #{b} itself only has a y of #{y2} and an x of #{x2}.)
define_method specify_reality_zone(a, b, c),            %Q(#{a}, therefore {b} giving it the #{c} classification.)
define_method non_euclid(a, b),                         %Q(You can fit #{a} inside of #{b} because its exact dimensions aren't defined.)
define_method spot_rainbow_elephant(a, b),              %Q(#{a} is featured in #{b} is a rainbow elephant.)

define_method non_uniform_anomaly(a, b, c, d, e, f), %Q(You can fit #{a} inside of #{b} although top floors y is #{c}, and the top floors x is #{d}. The bottom floor is y of #{e} and x of #{f}.)

define_method plant_evidence(a, b, c), %Q(#{a} murders student #{c}, telling #{b} they framed them for their murder.)
define_method        plant_tree(a, b), %Q(Tree #{a} is planted on plot in #{b}.)

define_method   poupee_sassoir(a),    %Q(Je avoir s'assoir en le chaise a #{a}.)
define_method nepoupee_sassoir(a), %Q(Je ne avoir s'assoir en le chaise a #{a}.)

define_method   ravenauka(a, b), %Q(#{a} is chased off to the nevermore of #{b} by a demonic raven.)
define_method      sabofensu(a), %Q(Moi ne avoir un avis de: #{a})

define_method squirrel_dog_beetle(a), %Q(#{a} whom looks like a mix of a squirrel, mangi dog, and beetle.)
define_method talk_to_tree(a, b),     %Q(#{a} chats with tree #{b} about its day.)
define_method tree_yard(a, b, c),     %Q(#{a} #{b} #{c})

define_method    try_on_shoes(a, b), %Q(#{a} tries on shoes #{b}.)
define_method     twirl_baton(a, b), %Q(#{a} twirls #{b} like a baton.)
define_method wander_halls(a, b, c), %Q(#{a} wanders from #{b} to #{c}.)

# That impression of #{a} that has wapred into a black expanse.
define_method ninoremodei(a), "Cette #{a} est anos ninoermodeios."

# forme de gravité
define_method   graviteformee(a, b), "Le #{a} es uni avec #{b}: #{a}#{b}"
define_method negraviteformee(a, b), "Le #{a} es ne uni avec #{b}: #{a}#{b}"

## Turns off the television
define_method incongruisho(a, b, c),   "The #{a} must be taken from #{b} and disposed of at #{c} and forgotten about."
define_method neincongruisho(a, b, c),           "The impact of #{a} from the pattern of #{b} in the context of #{c}."

def ghost_upstairs(a, b)
  ghost_states = [
    [[false, false], [false, true]],
    [[true,  false], [true,  true]],
  ]

  row_options = [0, 1]
  col_options = [0, 1]
  arr_options = [0, 1]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  current_ghost = ghost_states[cur_row][cur_col][cur_arr]
  
  %Q(#{a} is the middle management of #{b}, that has two floors above #{b}, one below the surface floor: #{current_ghost})
end

################################################################################################
#                                       Ternary Logic                                          #
################################################################################################
def nombres
  bot_name = %Q(BIANCA)

  cette_nombre = Proc(Int32, Int32, String).new { | x, interval |
    x > interval ? %Q(#{bot_name}: #{x} has reached the upper limit in growth.) : %Q(#{bot_name}: #{x} has reached the upper limit in growth.)
  }

  maisette_nombre = Proc(Int32, Int32, String).new { | x, interval |
    x < interval ? %Q(#{bot_name}: #{x} has reached the lower limit in growth.) : %Q(#{bot_name}: #{x} has not reached the limit in growth.)
  }

  sinon_nombre = Proc(Int32, Int32, Int32, String).new { | x, first_interval, second_interval |
    x > first_interval && x < second_interval ? %Q(#{bot_name}: #{x} is floating between growth intervals #{first_interval} and #{second_interval}.) : %Q(#{bot_name}: #{x} is not floating between growth intervals #{first_interval} and #{second_interval}.)
  }

  puts cette_nombre.call(ARGV[0].to_i, ARGV[1].to_i)
  puts maisette_nombre.call(ARGV[2].to_i, ARGV[3].to_i)
  puts sinon_nombre.call(ARGV[4].to_i, ARGV[5].to_i, ARGV[6].to_i)
end

def neg_nombres
  bot_name = %Q(BIANCA)

  necette_nombre = Proc(Int32, Int32, String).new { | x, interval |
    x > interval ? %Q(#{bot_name}: #{x} has reached the upper limit in shrinkage.) : %Q(#{bot_name}: #{x} has reached the upper limit in shrinkage.)
  }

  nemaisette_nombre = Proc(Int32, Int32, String).new { | x, interval |
    x < interval ? %Q(#{bot_name}: #{x} has reached the lower limit in shrinkage.) : %Q(#{bot_name}: #{x} has not reached the lower limit in shrinkage.)
  }

  nesinon_nombre = Proc(Int32, Int32, Int32, String).new { | x, first_interval, second_interval |
    x > first_interval && x < second_interval ? %Q(#{bot_name}: #{x} is floating between shrinkage intervals of #{first_interval} and #{second_interval}.) : %Q(#{bot_name}: #{x} is not floating between shrinkage intervals #{first_interval} and #{second_interval})
  }

  puts necette_nombre.call(ARGV[0].to_i, ARGV[1].to_i)
  puts nemaisette_nombre.call(ARGV[2].to_i, ARGV[3].to_i)
  puts nesinon_nombre.call(ARGV[4].to_i, ARGV[5].to_i, ARGV[6].to_i)
end

def kosan
  bot_name = %Q(#{ARGV[0]}) 

  sore_kosan = Proc(Float64, Float64, String).new { | x, probability |
    x > probability ? %Q(#{bot_name}: #{x} has reached the highest limit in probability.) : %Q(#{bot_name}: #{x} has not reached the highest limit in probability.)
  }

  shikashi_kosan = Proc(Float64, Float64, String).new { | x, probability |
    x < probability ? %Q(#{bot_name}: #{x} has reached the lowest limit in probability.) : %Q(#{bot_name}: #{x} has not reached the lowest limit in probability.)
  }

  matawa_kosan = Proc(Float64, Float64, Float64, String).new { | x, first_probability, second_probability |
    x > first_probability && x < second_probability ? %Q(#{bot_name}: #{x} is floating around medium probability.) : %Q(#{bot_name}: #{x} is not floating around medium probability.)
  }
   
  puts sore_kosan.call(ARGV[1].to_f, ARGV[2].to_f)
  puts shikashi_kosan.call(ARGV[3].to_f, ARGV[4].to_f)
  puts matawa_kosan.call(ARGV[5].to_f, ARGV[6].to_f, ARGV[7].to_f)
end

def nikosan
  bot_name = %Q(#{ARGV[0]})

  nisore_kosan = Proc(Float64, Float64, String).new { | x, probability |
    x > probability ? %Q(#{bot_name}: #{x} has reached the limit in negative probability.) : %Q(#{bot_name}: #{x} has not reached the limit in negative probability.)
  }

  nishikashi_kosan = Proc(Float64, Float64, String).new { | x, probability |
    x < probability ? %Q(#{bot_name}: #{x} has reached the limit in negative probability.) : %Q(#{bot_name}: #{x} has not reached the limit in negative probability.)
  }

  nimatawa_kosan = Proc(Float64, Float64, Float64, String).new { | x, first_probability, second_probability |
    x > first_probability && x < second_probability ? %Q(#{bot_name}: #{x} is floating around medium negative probability.) : %Q(#{bot_name}: #{x} is not floating around medium negative probability.)
  }

  puts nisore_kosan.call(ARGV[1].to_f, ARGV[2].to_f)
  puts nishikashi_kosan.call(ARGV[3].to_f, ARGV[4].to_f)
  puts nimatawa_kosan.call(ARGV[5].to_f, ARGV[6].to_f, ARGV[7].to_f)
end

################################################################################################
#                                         Risuto Search                                        #
################################################################################################
def risuto(search_length, a, b, c)
  search_space = ARGV[0].to_i

  a = ARGV[1]
  b = ARGV[2]
  c = ARGV[3]

  matrix = [
    [[a, a, a],
     [a, a, b],
     [a, a, c]],

    [[b, b, a],
     [b, b, b],
     [b, b, c]],

    [[c, c, c],
     [c, c, c],
     [c, c, c]],
  ]

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]

  search_space.times do
    cur_row = row_options.sample
    cur_col = col_options.sample
    cur_arr = arr_options.sample
  
    current_item = matrix[cur_row][cur_col][cur_arr]

    encrireln(current_item)
  end
end

## This brings fortune telling in as a datatype rather than constantly using statistics.
def fortune(*kwargs)
  a, b, c = kwargs

  matrix = [
    [[a, a, a],
     [a, a, b],
     [a, a, c]],

    [[b, b, a],
     [b, b, b],
     [b, b, c]],

    [[c, c, a],
     [c, c, b],
     [c, c, c]],
  ]

  row_options = [-1, -2, -3]
  col_options = [-1, -2, -3]
  arr_options = [-1, -2, -3]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
 
  current_value = matrix[cur_row][cur_col][cur_arr]
  current_value
end

def hfortune(*kwargs)
  a, b, c = kwargs

  matrix = [
    [[[a, a], [a, a], [a, a]],
     [[a, b], [a, a], [b, a]],
     [[a, c], [a, a], [c, a]]],

    [[[b, a], [b, b], [a, b]],
     [[b, b], [b, b], [b, b]],
     [[b, c], [b, b], [c, b]]],

    [[[c, a], [c, c], [a, c]],
     [[c, b], [c, c], [b, c]],
     [[c, c], [c, c], [c, c]]],
  ]

  row_options = [-1, -2, -3]
  col_options = [-1, -2, -3]
  arr_options = [-1, -2, -3]
  lim_options = [-1, -2]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  cur_lim = lim_options.sample
 
  current_value = matrix[cur_row][cur_col][cur_arr][cur_lim]
  current_value
end

def tfortune(*args)
  a, e, i, m, q, u, y,
  b, d, f, h, j, l, n,
  p, r, t, v, x, z, c,
        g, k, o, s, w, z = args

  matrix = [
    [[a, e, i],
     [m, q, u],
     [y, b, d]],

    [[f, h, j],
     [l, n, p],
     [r, t, v]],

    [[x, z, c],
     [g, k, o],
     [s, w, z]],
  ]

  row_options = [-1, -2, -3]
  col_options = [-1, -2, -3]
  arr_options = [-1, -2, -3]

  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
 
  current_value = matrix[cur_row][cur_col][cur_arr]
  current_value
end

## Implementation Examples For Testing
def fexample
  label       = fortune(ARGV[0], ARGV[1], ARGV[2])
  description = fortune(ARGV[3], ARGV[4], ARGV[5])

  low    = ARGV[6].to_f
  medium = ARGV[7].to_f
  high   = ARGV[8].to_f

  initial_estimate = fortune(low, medium, high)
  second_estimate  = fortune(low, medium, high)

  puts %Q([#{label}, "#{description}", #{initial_estimate*second_estimate}])
end

def fhexample
  label       = fortune(ARGV[0], ARGV[1], ARGV[2])
  description = fortune(ARGV[3], ARGV[4], ARGV[5])

  low    = ARGV[6].to_f
  medium = ARGV[7].to_f
  high   = ARGV[8].to_f

  initial_estimate = hfortune(low, medium, high)
  second_estimate  = hfortune(low, medium, high)

  puts %Q([#{label}, "#{description}", #{initial_estimate*second_estimate}])
end

################################################################################################
#                                          Obelisk                                             #
################################################################################################
def obelisk(old_data)
  old_graveyard = File.read_lines("memoricimetiere/urn.txt").shuffle
  size_limit    = old_graveyard.size.to_i
  index = 0

  File.open("memoricimetiere/urn.txt", "w") { |f|
    f.puts old_data
      
    size_limit.times do
      f.puts old_graveyard[index]
 
      index = index + 1
    end
  }
end

def obelisk_awa(old_data)
  old_graveyard = File.read_lines("memoricimetiere/urn.txt").shuffle
  size_limit    = old_graveyard.size.to_i
  index = 0

  File.open("memoricimetiere/urn.txt", "w") { |f|
    f.puts "encrire #{old_data}"
      
    size_limit.times do
      f.puts old_graveyard[index]
 
      index = index + 1
    end
  }
end

def three_plot_burial(father, mother, child)
  buried_fathers  = File.readlines("graveyard/family/father.txt").uniq.sort
  buried_mothers  = File.readlines("graveyard/family/mother.txt").uniq.sort
  buried_children = File.readlines("graveyard/family/child.txt").uniq.sort

  File.open("graveyard/family/father.txt", "w") { |f|
    f.puts father
    f.puts buried_fathers
  }
  
  File.open("graveyard/family/mother.txt", "w") { |f|
    f.puts mother
    f.puts buried_mothers
  }
  
  File.open("graveyard/family/child.txt", "w") { |f|
    f.puts child
    f.puts buried_children
  }
end

def four_plot_burial(father, mother, brother, sister)
  buried_fathers  = File.readlines("graveyard/family/father.txt").uniq.sort
  buried_mothers  = File.readlines("graveyard/family/mother.txt").uniq.sort
  buried_brothers = File.readlines("graveyard/family/brother.txt").uniq.sort
  buried_sisters  = File.readlines("graveyard/family/sister.txt").uniq.sort

  File.open("graveyard/family/father.txt", "w") { |f|
    f.puts father
    f.puts buried_fathers
  }
  
  File.open("graveyard/family/mother.txt", "w") { |f|
    f.puts mother
    f.puts buried_mothers
  }
  
  File.open("graveyard/family/brother.txt", "w") { |f|
    f.puts brother
    f.puts buried_brothers
  }

  File.open("graveyard/family/sister.txt", "w") { |f|
    f.puts sister
    f.puts buried_sisters
  }
end

def scatter_ashes
  old_graveyard = File.read_lines("memoricimetiere/urn.txt").uniq.sort.shuffle
  size_limit    = old_graveyard.size.to_i
  index         = 0
  
  size_limit.times do
    puts old_graveyard[index]
  
    index = index + 1
  end
end

def scatter_and_execute
  old_graveyard = File.read_lines("memoricimetiere/urn.txt").uniq.sort.shuffle
  size_limit    = old_graveyard.size.to_i
  index         = 0
  
  size_limit.times do
    system(old_graveyard[index])
  
    index = index + 1
  end
end

def scash_liminal(a1, a2, b1, b2, c1, c2, search_space)
  search_space.times do
    hyper_statistics(a1, a2,
                     b1, b2,
                     c1, c2)
                   
    dynamic_reward_allocation

    current_probability = File.read("data/statistics/probability/current_probability.txt").to_f
    current_information = File.read("data/statistics/label/current_information.txt")

    if current_probability > 0.999999999999999999
      current_probability = 0.9 / current_probability
    end
	
    obelisk(current_information)

    scatter_ashes
  end
end

def scatter_three_ashes
  old_fathers  = File.read_lines("graveyard/family/father.txt").uniq.sort.shuffle
  old_mothers  = File.read_lines("graveyard/family/mother.txt").uniq.sort.shuffle
  old_children = File.read_lines("graveyard/family/child.txt").uniq.sort.shuffle

  size_limit    = old_fathers.size.to_i
  index         = 0
  
  ## Scatters fathers ashes in the wind.
  size_limit.times do
    puts old_fathers[index]
  
    index = index + 1
  end
  
  ## Scatters mothers ashes in the wind
  size_limit    = old_mothers.size.to_i
  index         = 0
  
  size_limit.times do
    puts old_mothers[index]
  
    index = index + 1
  end

  ## Scatters childrens ashes in the wind.
  size_limit    = old_children.size.to_i
  index         = 0
  
  size_limit.times do
    puts old_children[index]
  
    index = index + 1
  end
end

def scatter_four_ashes
  old_fathers  = File.read_lines("graveyard/family/father.txt").uniq.sort.shuffle
  old_mothers  = File.read_lines("graveyard/family/mother.txt").uniq.sort.shuffle
  old_brothers = File.read_lines("graveyard/family/brother.txt").uniq.sort
  old_sister   = File.read_lines("graveyard/family/sister.txt").uniq.sort

  size_limit    = old_fathers.size.to_i
  index         = 0
  
  ## Scatters fathers ashes in the wind.
  size_limit.times do
    puts old_fathers[index]
  
    index = index + 1
  end
  
  ## Scatters mothers ashes in the wind
  size_limit    = old_mothers.size.to_i
  index         = 0
  
  size_limit.times do
    puts old_mothers[index]
  
    index = index + 1
  end

  ## Scatters brothers ashes in the wind.
  size_limit    = old_brothers.size.to_i
  index         = 0
  
  size_limit.times do
    puts old_brothers[index]
  
    index = index + 1
  end

  ## Scatters sisters ashes in the wind.
  size_limit    = old_sister.size.to_i
  index         = 0
  
  size_limit.times do
    puts old_sister[index]
  
    index = index + 1
  end
end

############################################################################################################
#                                            Maisettemurale                                                #
############################################################################################################
# These commands are for analyzing murals on walls in different parts of the game world.                   #
############################################################################################################
# Analyze painting or mural
define_method muralebunseki(a, b), "Vous avoir analyse #{a} en repos en #{b}."

# Salut and Gaka, or salute the painter, or specifically their painting.
define_method salugaka(a, b), "Vous avoir salute #{a} en photo de #{b}."

def quoi_est_le_poupee(cette, maisette, sinon)
  c = cette("poupee", "victorienne")
  d = maisette("poupee", "barbie")
  e = sinon("poupee", "victorienne", "barbie", "blyth")

  "Est le #{a} avoir un seance en #{b} victorienne? #{c} #{d} #{e}"
end

def est_nom_fausse(a, b, c, d)
  nom_de_plumes = [
    [[a, a, a], [a, a, b], [a, a, c]],
    [[b, b, s], [b, b, b], [b, b, c]],
    [[c, c, a], [c, c, b], [c, c, c]],
  ]
  
  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  new_name = nom_de_plumes[cur_row][cur_col][cur_arr]

  if new_name == d
    "Checking if that Dolly's name might be fake: #{ner_name}. All thing accorded..."   
  else
    "Checking if that Dolly's name might be fake: #{ner_name}. This name seems to be not legitimate."
  end
end

#################################################################################################################
#                                           Maisette De Relatif                                                 #
#################################################################################################################
# This section for analyzing the relationship between individuals and their relative assessment how likely they #
# are to be estranged from each other, or distance do to some other issue.                                      #
#################################################################################################################
## equation de reduction
define_method reduce_equation(a, b, c), "The equation of #{a}, can be reduced down to #{b} and #{c}."

## which_stopped_talking / qui_a_surpasse_les_conversations
define_method qusurp(a, b), "Do #{a} stop talking before #{b}, or #{b} stop talking before #{a}>"

## which_died_first?
define_method  qui_est_mort_en_premier(a, b), "Do #{a} die before #{b}, or #{b} before #{a}>"

## which relative?
define_method quel_relatif(a), "#{a}"

## is_relative_estranged est relative eloigne
define_method est_relative_eloigne(a, b, c), "Is the relative of #{a} estranged from #{b}?: #{c}"

## is_relative_dead?
define_method est_relativement_mort(a, b, c), "Did #{a} find out that the relative #{b} has died?: #{c}"

## qui a surpassé les conversations / Who surpassed conversations?
define_method qui_a_surpasse_les_conversations(a, b), "Did #{a} stop talking before #{b}, or #{b} stop talking before #{a}?"

## qui est mort en premier
define_method qui_est_mort_en_premier?(a, b), "Did #{a} die before #{b}, or #{b} before #{a}?"

## quel relatif
define_method quel_relatif(a), "#{a}"

## est relative eloigne
define_method est_relative_eloigne?(a, b, c), "Is the relative of #{a} estranged from #{b}?: #{c}"

## est relativement mort? 
define_method est_relativement_mort?(a, b, c), "Did #{a} find out that the relative #{b} has died?: #{c}"

#######################################################################################
#                                    Medusahoseki                                     #
#######################################################################################
def proximity_de_medusahoseki(a, b)
  maximum_distance     = b
  distance_probability = a
  
  calculation = maximum_distance - ( maximum_distance * distance_probability )
  calculation = calculation.round
  
  "Distance from Medusahoseki ( Medusa Gem ): #{calculation}"
end

def proximity_de_nemedusahoseki(a, b)
  maximum_distance     = b
  distance_probability = 1 - a
  
  calculation = maximum_distance - ( maximum_distance * distance_probability )
  calculation = calculation.round
  
  "Distance from Nemedusahoseki ( Salamander Riding Goat ): #{calculation}"
end

def proximity_de_memorie(a)
  year_period = 12
  
  calculation = 12 - ( 12 * a )
  calculation = calculation.round
  
  "This memory was from a prior #{calculation} year period"
end

def mperiod_sprox(a, b)
  "#{a} #{b.upcase}"
end

#################################################################################################################
#                                           Scorecard Et Livretude                                              #
#################################################################################################################
def scorecard(rock, paper, scissors)
  max_rock     = 100
  max_paper    = 100
  max_scissors = 100

  final_rock     = rock     / max_rock
  final_paper    = paper    / max_paper
  final_scissors = scissors / max_scissors
  
  score_card = <<-TOTAL
  (require "NeMais")
  
  (defun scorecard (frock fpaper fscissors)
    (setq rock_score         frock)
    (setq paper_score       fpaper)
    (setq scissors_score fscissors)
    
    (princ "\nROCK SCORES\n")
    (princ (sore rock_score       "BIANCA: You achieved the maximum rock score."         "BIANCA: You never achieved a maximum rock score."))
    (princ (shikashi rock_score  " You achieved the medicore paper score."       " You never achieved a medicore paper score."))
    (princ (matawa rock_score " You achieved the minimal scissors score." " You never achieved a minimal scissors score."))

    (princ "\nPAPER SCORES\n")
    (princ (sore paper_score       "BIANCA: You achieved the maximum rock score."         "BIANCA: You never achieved a maximum rock score."))
    (princ (shikashi paper_score  " You achieved the maximum paper score."       " You never achieved a paper score."))
    (princ (matawa paper_score " You achieved the minimal scissors score." " You never achieved a minimal scissors score."))

    (princ "\nSCISSORS SCORES\n")
    (princ (sore scissors_score       "BIANCA: You achieved the maximum rock score."         "BIANCA: You never achieved a maximum rock score."))
    (princ (shikashi scissors_score  " You achieved the medicore paper score."       " You never achieved a medicore paper score."))
    (princ (matawa scissors_score " You achieved the minimal scissors score." " You never achieved a minimal scissors score."))
  )
  
  (scorecard #{final_rock} #{final_paper} #{final_scissors})
  TOTAL
  
  File.open("lisp/scorecard.lisp", "w") { |f|
    f.puts score_card
  }
end

#################################################################################################################
#                                        Expressions That Transpile To Lisp                                     #
#################################################################################################################
# This section specializes in creating functions whose primary purpose is to transpile to valid Lisp exp as a   #
# subset of Awasunu. This will gradually be expanded on, and may end up becoming its on domain specific dialect #
# within the Awasunu ecosystems.                                                                                #
#################################################################################################################
def lisp_statements(*args)
  function, fcall, outfname = args

  do_func = <<-LFUNCTION
  #{function}
  LFUNCTION

  fun_call = <<-LFCALL
  #{fcall}
  LFCALL

  File.open("#{outfname}.lisp", "w") { |f|
    f.puts do_func
    f.puts " "
    f.puts fun_call
  }
end

def ne_lisp(first_noun, second_noun, outfname)
  negations = <<-NEGATIONS
  require "lisp/intermediate/negative_constraints.lisp"

  (ne #{first_noun}, #{second_noun})
  NEGATIONS

  File.open("#{outfname}.lisp", "w") { |f|
    f.puts negations
  }
end

def mais_lisp(third_noun, outfname)
  confirmations = <<-CONFIRMATION
  (mais "third_noun}")
  CONFIRMATION

  File.open("#{outfname}.lisp", "w") { |f|
    f.puts confirmations
  }
end

def estimate_lisp(a1, a2, b1, b2, c1, c2, lisp_name)
  data = <<-DATASET
  ; Sets the random state
  (setq *random-state* (make-random-state t))

  (defvar y (random 3))

  ; Give me a probability
  (defvar probability (random 0.99999999))

  (defvar a y)
  (defvar b y)

  (princ "[ ")
  (princ (nth a `("#{a1}", "#{b1}", "#{c1}")))
  (princ " ")

  (princ (nth b `("#{a2}", "#{b2}", "#{c2}")))

  (princ " ")
  (princ probability)
  (princ " ]")
  DATASET

  File.open("#{lisp_name}.lisp", "w") { |f|
    f.puts data
  }

  File.open("#{lisp_name}.sh", "a") { |f|
    f.puts "clisp #{lisp_name}.lisp"
  }
end
