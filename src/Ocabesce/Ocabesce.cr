class Filters
  # wane bhineb [ window pane shines brightly ]
  # bat larts [ black cat farts loudly ]
  # wlays qhess [ winona plays chess quietly ]
  # lookshelf parries [ large bookshelf carries pamphlets ]
  # boffee rug [ big coffee mug rests ]
  # brinks silk [ bianca drinks milk shakes ]
  # sright qarkens [ starlight bright darkens quickly ]
  # wat fuman [ werebears eat human flesh ]

  def self.floating_finger(a, b)
    right = [":right_finger", a.split(" ")]
    left  = [":left_finger",  b.split(" ")]

    floating = [":floating_finger", right[1][1], left[1][0]]

    puts "#{floating[0]} #{floating[1]}_#{floating[2]}"
  end

  def self.spooney(first_word, second_word)
    first_replacement = first_word.split("")
    second_replacement = second_word.split("")

    spooned_first = first_word.tr first_replacement[0], second_replacement[0]
    spooned_second = second_word.tr second_replacement[0], first_replacement[0]

    "#{spooned_first} #{spooned_second}"
  end

  def self.transpile(file_name, file_contents)
    new_file = <<-TRANSPILE
    #{file_contents}
    TRANSPILE

    File.open(file_contents, "w") { |f|
      f.puts new_file
    }
  end

  # The collission between floating fingers and spoonerisms.
  def self.ocasbesce(a, b, c, d) # ocaoh_sbeliskr
    if a.nil?
      puts "Erreur: Il y es ne ocasbesce de [A]."
    end

    if b.nil?
      puts "Erreur: Il y es ne ocasbesce de [B]."
    end

    if c.nil?
      puts "Erreur: Il y es ne ocasbesce de [C]."
    end

    if d.nil?
      puts "Erreur: Il y es ne ocasbesce de [D]."
    end

    floating_finger(spooney(a, b), spooney(c, d))
  end

  def self.cana_sunos(a, b, c, d)
    if a.nil?
      puts "Erreur: Il y es ne cana_sunos de [A]."
    end

    if b.nil?
      puts "Erreur: Il y es ne cana_sunos de [B]."
    end

    if c.nil?
      puts "Erreur: Il y es ne cana_sunos de [C]."
    end

    if d.nil?
      puts "Erreur: Il y es ne cana_sunos de [D]."
    end

    floating_finger(spooney(a, b), spooney(c, d))
  end

  def self.ocatfasba(a, b, c, d)
    if a.nil?
      puts "Erreur: Il y es ne ocatfasba de [A]."
    end

    if b.nil?
      puts "Erreur: Il y es ne ocatfasba de [B]."
    end

    if c.nil?
      puts "Erreur: Il y es ne ocatfasba de [C]."
    end

    if d.nil?
      puts "Erreur: Il y es ne ocatfasba de [D]."
    end

    floating_finger(spooney(a, b), spooney(c, d))
  end

  def self.predict_spoon(*args)
    search_space, file_name, a, b, c, d,
                             e, f, g, h,
                             i, j, k, l = args

    first_finger  = floating_finger(spooney(a, b), spooney(c, d))
    second_finger = floating_finger(spooney(e, f), spooney(g, h))
    third_finger  = floating_finger(spooney(i, j), spooney(k, l))

    Filters.transpile(file_name, "hlim #{search_space} #{first_finger} #{second_finger} #{third_finger}")
  end
end
