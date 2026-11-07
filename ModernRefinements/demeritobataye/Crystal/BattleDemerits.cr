module Demeritobataye
  class QuipGeneration

    ##############################################################################################
    #                                      AngelScript Dialect                                   #
    ##############################################################################################
    # This dialect of French is influenced by the languages of extraterretrial for over a 1000   #
    # years, making barely resemble Francais as we know it.                                      #
    ##############################################################################################
    def self.from_distant_future # lingua de ange
      a = "He"
      b = "Hu"
      c = "Hosfa"

      word_genders = [
        [[a, a, a], [a, a, b], [a, a, c]],
        [[b, b, a], [b, b, b], [b, b, c]],
        [[c, c, a], [c, c, b], [c, c, c]],
      ]

      row_options = [0, 1, 2]
      col_options = [0, 1, 2]
      arr_options = [0, 1, 2]

      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      current_gender = word_genders[cur_row][cur_col][cur_arr]

      d = "powe"     # pomme
      e = "bau aue"  # banane
      f = "seterone" # citrone

      nouns = [
        [[d, d, d], [d, d, e], [d, d, f]],
        [[e, e, d], [e, e, e], [e, e, f]],
        [[f, f, d], [f, f, e], [f, f, f]],
      ]

      row_options = [0, 1, 2]
      col_options = [0, 1, 2]
      arr_options = [0, 1, 2]

      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      current_noun = nouns[cur_row][cur_col][cur_arr]

      g = "rouge"  # rouge
      h = "vedute" # vert
      i = "na une" # jaune

      adjectives = [
        [[g, g, g], [g, g, h], [g, g, i]],
        [[h, h, g], [h, h, h], [h, h, i]],
        [[i, i, g], [i, i, h], [i, i, i]],
      ]

      row_options = [0, 1, 2]
      col_options = [0, 1, 2]
      arr_options = [0, 1, 2]

      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      current_adjective = adjectives[cur_row][cur_col][cur_arr]

      j =   "ne" # je
      k = "vuse" # vous
      l =   "tu" # tu
      m = "nuse" # nous
      n =  "eye" # elle
      o =  "ehe" # il

      subjects = [
        [[j, j, j, j, j],
         [j, j, j, j, k],
         [j, j, j, j, l],
         [j, j, j, j, m],
         [j, j, j, j, n],
         [j, j, j, j, o]],

        [[k, k, k, k, j],
         [k, k, k, k, k],
         [k, k, k, k, l],
         [k, k, k, k, m],
         [k, k, k, k, n],
         [k, k, k, k, o]],

        [[l, l, l, l, j],
         [l, l, l, l, k],
         [l, l, l, l, l],
         [l, l, l, l, m],
         [l, l, l, l, n],
         [l, l, l, l, o]],

        [[m, m, m, m, j],
         [m, m, m, m, k],
         [m, m, m, m, l],
         [m, m, m, m, m],
         [m, m, m, m, n],
         [m, m, m, m, o]],

        [[n, n, n, n, j],
         [n, n, n, n, k],
         [n, n, n, n, l],
         [n, n, n, n, m],
         [n, n, n, n, n],
         [n, n, n, n, o]],

        [[o, o, o, o, j],
         [o, o, o, o, k],
         [o, o, o, o, l],
         [o, o, o, o, m],
         [o, o, o, o, n],
         [o, o, o, o, o]],
      ]

      row_options = [0, 1, 2, 3, 4]
      col_options = [0, 1, 2, 3, 4]
      arr_options = [0, 1, 2, 3, 4]

      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      current_subjects = subjects[cur_row][cur_col][cur_arr]

      p =    "bode" # boire
      q = "emanage" # mange
      r =    "nute" # jute

      verbs = [
        [[p, p, p], [p, p, q], [p, p, r]],
        [[q, q, p], [q, q, q], [q, q, r]],
        [[r, r, p], [r, r, q], [r, r, r]],
      ]

      row_options = [0, 1, 2]
      col_options = [0, 1, 2]
      arr_options = [0, 1, 2]

      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      current_verbs = verbs[cur_row][cur_col][cur_arr]

      "#{current_gender} #{current_noun} #{current_adjective} #{current_subjects} #{current_verbs}"
    end

    ##############################################################################################
    #                                      Ahuzacos Dialect                                      #
    ##############################################################################################
    # The original dialect of Francais influenced by Japanese, that went on to become its own    #
    # romance language over time.                                                                #
    ##############################################################################################
    def self.from_insanity
      word_classes = [[
        [
          [["Le",  "Le"], ["Le",  "La"], ["Le",  "Les"]],
          [["La",  "Le"], ["La",  "La"], ["La",  "Les"]],
          [["Les", "Le"], ["Les", "La"], ["Les", "Les"]],
        ], [
          [["Anu",  "Anu"], ["Anu",  "Ana"], ["Anu",  "Anos"]],
          [["Ana",  "Anu"], ["Ana",  "Ana"], ["Ana",  "Anos"]],
          [["Anos", "Anu"], ["Anos", "Ana"], ["Anos", "Anus"]],
        ], [
          [["Lanu",  "Lanu"], ["Lanu",  "Lana"], ["Lanu",  "Lanos"]],
          [["Lana",  "Lanu"], ["Lana",  "Lana"], ["Lana",  "Lanos"]],
          [["Lanos", "Lanu"], ["Lanos", "Lana"], ["Lanos", "Lanos"]],
        ],
      ], [
        [
          [["El",  "El"], ["El",  "Al"], ["El",  "Els"]],
          [["Al",  "El"], ["Al",  "Al"], ["Al",  "Els"]],
          [["Els", "El"], ["Els", "Al"], ["Els", "Els"]],
        ], [
          [["Nua",  "Naa"], ["Nua",  "Naa"], ["Nua",  "Nosa"]],
          [["Naa",  "Naa"], ["Naa",  "Naa"], ["Naa",  "Nosa"]],
          [["Nosa", "Naa"], ["Nosa", "Naa"], ["Nosa", "Nosa"]],
        ], [
          [["Nula",  "Nula"], ["Nula",  "Nala"], ["Nula",  "Nosal"]],
          [["Nala",  "Nula"], ["Nala",  "Nala"], ["Nala",  "Nosal"]],
          [["Nosal", "Nula"], ["Nosal", "Nala"], ["Nosal", "Nosal"]],
        ],
      ]]

      context_window = [0, 1, 2]
      row_options    = [0, 1, 2]
      col_options    = [0, 1, 2]
      arr_options    = [0, 1]

      # Modifies word genders based on sanity state.
      current_sanity  = File.read("_data/npc/dialogue/sanity.txt").to_i

      cur_con = context_window.sample
      cur_row =    row_options.sample
      cur_col =    col_options.sample
      cur_arr =    arr_options.sample

      chosen_word_class = word_classes[current_sanity][cur_con][cur_row][cur_col][cur_arr]

      ## This covers the generation of classified nouns.
      ho   = ["homme",      "ommehay"]
      fe   = ["femme",      "emmefay"]
      fi   = ["fille",      "illefay"]
      ga   = ["garcon",        "arcongay"]
      ta   = ["tante",      "antetay"]
      oj   = ["oncle",      "cleoney"]
      cofi = ["cousinfille",   "ousincay illefay"]
      coga = ["cousingarcon", "ousincay arcongay"]
      grm  = [ "grandmere",  "randgay eremay"]
      grp  = [ "grandpere",  "randgay erepay"]

      ct   = [    "chat",  "atchay"]
      ch   = [   "chien",     "ienchay"]
      oi   = [  "oiseau",    "seauoiay"]
      gr   = [  "souris",     "ourisay"]
      ou   = [    "ours",  "ursoay"]
      wo   = [ "orgueil",   "gueiloray"]
      pr   = ["ostritch", "ritchostray"]
      po   = [  "jiraff",    "iraffjay"]
      pi   = ["écureuil",  "ureuilecay"]

      m    = ["maison", "aisonmay"]
      c    = [ "cabin",  "abincay"]
      e    = [ "ecole",   "coleay"]

      oju  = [   "ojijaku",    "jijakuoay"]
      neo  = ["ne ojijaku", "ne jijakuoay"]

      nouns_sanity = [[
        [[ho[0],   ho[0]], [ho[0],   fe[0]], [ho[0],   fi[0]], [ho[0],   ga[0]], [ho[0],   ta[0]], [ho[0],   oj[0]], [ho[0],   cofi[0]], [ho[0],   coga[0]], [ho[0],   grm[0]], [ho[0],   grp[0]]],
        [[fe[0],   ho[0]], [fe[0],   fe[0]], [fe[0],   fi[0]], [fe[0],   ga[0]], [fe[0],   ta[0]], [fe[0],   oj[0]], [fe[0],   cofi[0]], [fe[0],   coga[0]], [fe[0],   grm[0]], [fe[0],   grp[0]]],
        [[fi[0],   ho[0]], [fi[0],   fe[0]], [fi[0],   fi[0]], [fi[0],   ga[0]], [fi[0],   ta[0]], [fi[0],   oj[0]], [fi[0],   cofi[0]], [fi[0],   coga[0]], [fi[0],   grm[0]], [fi[0],   grp[0]]],
        [[ga[0],   ho[0]], [ga[0],   fe[0]], [ga[0],   fi[0]], [ga[0],   ga[0]], [ga[0],   ta[0]], [ga[0],   oj[0]], [ga[0],   cofi[0]], [ga[0],   coga[0]], [ga[0],   grm[0]], [ga[0],   grp[0]]],
        [[ta[0],   ho[0]], [ta[0],   fe[0]], [ta[0],   fi[0]], [ta[0],   ga[0]], [ta[0],   ta[0]], [ta[0],   oj[0]], [ta[0],   cofi[0]], [ta[0],   coga[0]], [ta[0],   grm[0]], [ta[0],   grp[0]]],
        [[oj[0],   ho[0]], [oj[0],   fe[0]], [oj[0],   fi[0]], [oj[0],   ga[0]], [oj[0],   ta[0]], [oj[0],   oj[0]], [oj[0],   cofi[0]], [oj[0],   coga[0]], [oj[0],   grm[0]], [oj[0],   grp[0]]],
        [[cofi[0], ho[0]], [cofi[0], fe[0]], [cofi[0], fi[0]], [cofi[0], ga[0]], [cofi[0], ta[0]], [cofi[0], oj[0]], [cofi[0], cofi[0]], [cofi[0], coga[0]], [cofi[0], grm[0]], [cofi[0], grp[0]]],
        [[coga[0], ho[0]], [coga[0], fe[0]], [coga[0], fi[0]], [coga[0], ga[0]], [coga[0], ta[0]], [coga[0], oj[0]], [coga[0], cofi[0]], [coga[0], coga[0]], [coga[0], grm[0]], [coga[0], grp[0]]],
        [[grm[0],  ho[0]], [grm[0],  fe[0]], [grm[0],  fi[0]], [grm[0],  ga[0]], [grm[0],  ta[0]], [grm[0],  oj[0]], [grm[0],  cofi[0]], [grm[0],  coga[0]], [grm[0],  grm[0]], [grm[0],  grp[0]]],
        [[grp[0],  ho[0]], [grp[0],  fe[0]], [grp[0],  fi[0]], [grp[0],  ga[0]], [grp[0],  ta[0]], [grp[0],  oj[0]], [grp[0],  cofi[0]], [grp[0],  coga[0]], [grp[0],  grm[0]], [grp[0],  grp[0]]],
      ], [
        [[ct[0], ct[0]], [ct[0], ch[0]], [ct[0], oi[0]], [ct[0], gr[0]], [ct[0], wo[0]], [ct[0], ou[0]], [ct[0], pr[0]], [ct[0], po[0]]],
        [[ch[0], ct[0]], [ch[0], ch[0]], [ch[0], oi[0]], [ch[0], gr[0]], [ch[0], wo[0]], [ch[0], ou[0]], [ch[0], pr[0]], [ch[0], po[0]]],
        [[oi[0], ct[0]], [oi[0], ch[0]], [oi[0], oi[0]], [pi[0], gr[0]], [oi[0], wo[0]], [oi[0], ou[0]], [oi[0], pr[0]], [oi[0], po[0]]],
        [[gr[0], ct[0]], [gr[0], ch[0]], [gr[0], oi[0]], [gr[0], gr[0]], [gr[0], wo[0]], [gr[0], ou[0]], [gr[0], pr[0]], [gr[0], po[0]]],
      ], [
        [[m[0], m[0]], [m[0], c[0]], [m[0], e[0]]],
        [[c[0], m[0]], [c[0], c[0]], [c[0], e[0]]],
        [[e[0], m[0]], [e[0], c[0]], [e[0], e[0]]],
      ], [
        [[oju[0], oju[0]], [oju[0], neo[0]]],
        [[neo[0], oju[0]], [neo[0], neo[0]]],
      ]]

      nouns_insanity = [[
        [[ho[1],   ho[1]], [ho[1],   fe[1]], [ho[1],   fi[1]], [ho[1],   ga[1]], [ho[1],   ta[1]], [ho[1],   oj[1]], [ho[1],   cofi[1]], [ho[1],   coga[1]], [ho[1],   grm[1]], [ho[1],   grp[1]]],
        [[fe[1],   ho[1]], [fe[1],   fe[1]], [fe[1],   fi[1]], [fe[1],   ga[1]], [fe[1],   ta[1]], [fe[1],   oj[1]], [fe[1],   cofi[1]], [fe[1],   coga[1]], [fe[1],   grm[1]], [fe[1],   grp[1]]],
        [[fi[1],   ho[1]], [fi[1],   fe[1]], [fi[1],   fi[1]], [fi[1],   ga[1]], [fi[1],   ta[1]], [fi[1],   oj[1]], [fi[1],   cofi[1]], [fi[1],   coga[1]], [fi[1],   grm[1]], [fi[1],   grp[1]]],
        [[ga[1],   ho[1]], [ga[1],   fe[1]], [ga[1],   fi[1]], [ga[1],   ga[1]], [ga[1],   ta[1]], [ga[1],   oj[1]], [ga[1],   cofi[1]], [ga[1],   coga[1]], [ga[1],   grm[1]], [ga[1],   grp[1]]],
        [[ta[1],   ho[1]], [ta[1],   fe[1]], [ta[1],   fi[1]], [ta[1],   ga[1]], [ta[1],   ta[1]], [ta[1],   oj[1]], [ta[1],   cofi[1]], [ta[1],   coga[1]], [ta[1],   grm[1]], [ta[1],   grp[1]]],
        [[oj[1],   ho[1]], [oj[1],   fe[1]], [oj[1],   fi[1]], [oj[1],   ga[1]], [oj[1],   ta[1]], [oj[1],   oj[1]], [oj[1],   cofi[1]], [oj[1],   coga[1]], [oj[1],   grm[1]], [oj[1],   grp[1]]],
        [[cofi[1], ho[1]], [cofi[1], fe[1]], [cofi[1], fi[1]], [cofi[1], ga[1]], [cofi[1], ta[1]], [cofi[1], oj[1]], [cofi[1], cofi[1]], [cofi[1], coga[1]], [cofi[1], grm[1]], [cofi[1], grp[1]]],
        [[coga[1], ho[1]], [coga[1], fe[1]], [coga[1], fi[1]], [coga[1], ga[1]], [coga[1], ta[1]], [coga[1], oj[1]], [coga[1], cofi[1]], [coga[1], coga[1]], [coga[1], grm[1]], [coga[1], grp[1]]],
        [[grm[1],  ho[1]], [grm[1],  fe[1]], [grm[1],  fi[1]], [grm[1],  ga[1]], [grm[1],  ta[1]], [grm[1],  oj[1]], [grm[1],  cofi[1]], [grm[1],  coga[1]], [grm[1],  grm[1]], [grm[1],  grp[1]]],
        [[grp[1],  ho[1]], [grp[1],  fe[1]], [grp[1],  fi[1]], [grp[1],  ga[1]], [grp[1],  ta[1]], [grp[1],  oj[1]], [grp[1],  cofi[1]], [grp[1],  coga[1]], [grp[1],  grm[1]], [grp[1],  grp[1]]],
      ], [
        [[ct[1], ct[1]], [ct[1], ch[1]], [ct[1], oi[1]], [ct[1], gr[1]], [ct[1], wo[1]], [ct[1], ou[1]], [ct[1], pr[1]], [ct[1], po[1]]],
        [[ch[1], ct[1]], [ch[1], ch[1]], [ch[1], oi[1]], [ch[1], gr[1]], [ch[1], wo[1]], [ch[1], ou[1]], [ch[1], pr[1]], [ch[1], po[1]]],
        [[oi[1], ct[1]], [oi[1], ch[1]], [oi[1], oi[1]], [pi[1], gr[1]], [oi[1], wo[1]], [oi[1], ou[1]], [oi[1], pr[1]], [oi[1], po[1]]],
        [[gr[1], ct[1]], [gr[1], ch[1]], [gr[1], oi[1]], [gr[1], gr[1]], [gr[1], wo[1]], [gr[1], ou[1]], [gr[1], pr[1]], [gr[1], po[1]]],
      ], [
        [[m[1], m[1]], [m[1], c[1]], [m[1], e[1]]],
        [[c[1], m[1]], [c[1], c[1]], [c[1], e[1]]],
        [[e[1], m[1]], [e[1], c[1]], [e[1], e[1]]],
      ], [
        [[oju[1], oju[1]], [oju[1], neo[1]]],
        [[neo[1], oju[1]], [neo[1], neo[1]]],
      ]]

      nouns       = [nouns_sanity, nouns_insanity]
      current_sanity  = File.read("_data/npc/dialogue/sanity.txt").to_i # sanity_context.sample

      context_window = [0, 1, 2, 3]
      cur_con    = context_window.sample

      if    cur_con == 0
        row_options    = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
        col_options    = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
        arr_options    = [0, 1]

        #cur_con = context_window.sample
        cur_row =    row_options.sample
        cur_col =    col_options.sample
        cur_arr =    arr_options.sample

        chosen_noun = nouns[current_sanity][cur_con][cur_row][cur_col][cur_arr]  
      elsif cur_con == 1
        row_options    = [0, 1, 2, 3]
        col_options    = [0, 1, 2, 3]
        arr_options    = [0, 1]

        #cur_con = context_window.sample
        cur_row =    row_options.sample
        cur_col =    col_options.sample
        cur_arr =    arr_options.sample

        chosen_noun = nouns[current_sanity][cur_con][cur_row][cur_col][cur_arr]
      elsif cur_con == 2
        row_options    = [0, 1, 2]
        col_options    = [0, 1, 2]
        arr_options    = [0, 1]

        # Modifies word genders based on sanity state.
        #cur_san = 0

        #cur_con = context_window.sample
        cur_row =    row_options.sample
        cur_col =    col_options.sample
        cur_arr =    arr_options.sample

        chosen_noun = nouns[current_sanity][cur_con][cur_row][cur_col][cur_arr]
      elsif cur_con == 3
        row_options    = [0, 1]
        col_options    = [0, 1]
        arr_options    = [0, 1]

        #cur_con = context_window.sample
        cur_row =    row_options.sample
        cur_col =    col_options.sample
        cur_arr =    arr_options.sample

        chosen_noun = nouns[current_sanity][cur_con][cur_row][cur_col][cur_arr]
      end

      ## This covers the adjectives that follows the nouns.
      t  = ["tsin",    "sintway"]
      p  = ["petite",     "etitepay"]
      s1 = ["sucré",       "ucrepay"]
      r  = ["roudy",       "oudyray"]
      l  = ["l'éducation", "ducationley"]
      s2 = ["sages",    "agesay"]

      adjectives_sanity = [[
        [[t[0],  t[0]], [t[0],  p[0]], [t[0],  s1[0]], [t[0],  r[0]], [t[0],  l[0]], [t[0],  s2[0]]],
        [[p[0],  t[0]], [p[0],  p[0]], [p[0],  s1[0]], [p[0],  r[0]], [p[0],  l[0]], [p[0],  s2[0]]],
        [[s1[0], t[0]], [s1[0], p[0]], [s1[0], s1[0]], [s1[0], r[0]], [s1[0], l[0]], [s1[0], s2[0]]],
        [[r[0],  t[0]], [r[0],  p[0]], [r[0],  s1[0]], [r[0],  r[0]], [r[0],  l[0]], [r[0],  s2[0]]],
        [[l[0],  t[0]], [l[0],  p[0]], [l[0],  s1[0]], [l[0],  r[0]], [l[0],  l[0]], [l[0],  s2[0]]],
        [[s2[0], t[0]], [s2[0], p[0]], [s2[0], s1[0]], [s2[0], r[0]], [s2[0], l[0]], [s2[0], s2[0]]],
      ], [
        [[p[0],  t[0]], [p[0],  p[0]], [p[0],  s1[0]], [p[0],  r[0]], [p[0],  l[0]], [p[0],  s2[0]]],
        [[s1[0], t[0]], [s1[0], p[0]], [s1[0], s1[0]], [s1[0], r[0]], [s1[0], l[0]], [s1[0], s2[0]]],
        [[r[0],  t[0]], [r[0],  p[0]], [r[0],  s1[0]], [r[0],  r[0]], [r[0],  l[0]], [r[0],  s2[0]]],
        [[l[0],  t[0]], [l[0],  p[0]], [l[0],  s1[0]], [l[0],  r[0]], [l[0],  l[0]], [l[0],  s2[0]]],
        [[s2[0], t[0]], [s2[0], p[0]], [s2[0], s1[0]], [s2[0], r[0]], [s2[0], l[0]], [s2[0], s2[0]]],
        [[t[0],  t[0]], [t[0],  p[0]], [t[0],  s1[0]], [t[0],  r[0]], [t[0],  l[0]], [t[0],  s2[0]]],
      ], [
        [[s1[0], t[0]], [s1[0], p[0]], [s1[0], s1[0]], [s1[0], r[0]], [s1[0], l[0]], [s1[0], s2[0]]],
        [[r[0],  t[0]], [r[0],  p[0]], [r[0],  s1[0]], [r[0],  r[0]], [r[0],  l[0]], [r[0],  s2[0]]],
        [[l[0],  t[0]], [l[0],  p[0]], [l[0],  s1[0]], [l[0],  r[0]], [l[0],  l[0]], [l[0],  s2[0]]],
        [[s2[0], t[0]], [s2[0], p[0]], [s2[0], s1[0]], [s2[0], r[0]], [s2[0], l[0]], [s2[0], s2[0]]],
        [[t[0],  t[0]], [t[0],  p[0]], [t[0],  s1[0]], [t[0],  r[0]], [t[0],  l[0]], [t[0],  s2[0]]],
        [[p[0],  t[0]], [p[0],  p[0]], [p[0],  s1[0]], [p[0],  r[0]], [p[0],  l[0]], [p[0],  s2[0]]],
      ], [
        [[r[0],  t[0]], [r[0],  p[0]], [r[0],  s1[0]], [r[0],  r[0]], [r[0],  l[0]], [r[0],  s2[0]]],
        [[l[0],  t[0]], [l[0],  p[0]], [l[0],  s1[0]], [l[0],  r[0]], [l[0],  l[0]], [l[0],  s2[0]]],
        [[s2[0], t[0]], [s2[0], p[0]], [s2[0], s1[0]], [s2[0], r[0]], [s2[0], l[0]], [s2[0], s2[0]]],
        [[t[0],  t[0]], [t[0],  p[0]], [t[0],  s1[0]], [t[0],  r[0]], [t[0],  l[0]], [t[0],  s2[0]]],
        [[p[0],  t[0]], [p[0],  p[0]], [p[0],  s1[0]], [p[0],  r[0]], [p[0],  l[0]], [p[0],  s2[0]]],
        [[s1[0], t[0]], [s1[0], p[0]], [s1[0], s1[0]], [s1[0], r[0]], [s1[0], l[0]], [s1[0], s2[0]]],
      ], [
        [[l[0],  t[0]], [l[0],  p[0]], [l[0],  s1[0]], [l[0],  r[0]], [l[0],  l[0]], [l[0],  s2[0]]],
        [[s2[0], t[0]], [s2[0], p[0]], [s2[0], s1[0]], [s2[0], r[0]], [s2[0], l[0]], [s2[0], s2[0]]],
        [[t[0],  t[0]], [t[0],  p[0]], [t[0],  s1[0]], [t[0],  r[0]], [t[0],  l[0]], [t[0],  s2[0]]],
        [[p[0],  t[0]], [p[0],  p[0]], [p[0],  s1[0]], [p[0],  r[0]], [p[0],  l[0]], [p[0],  s2[0]]],
        [[s1[0], t[0]], [s1[0], p[0]], [s1[0], s1[0]], [s1[0], r[0]], [s1[0], l[0]], [s1[0], s2[0]]],
        [[r[0],  t[0]], [r[0],  p[0]], [r[0],  s1[0]], [r[0],  r[0]], [r[0],  l[0]], [r[0],  s2[0]]],
      ], [
        [[s2[0], t[0]], [s2[0], p[0]], [s2[0], s1[0]], [s2[0], r[0]], [s2[0], l[0]], [s2[0], s2[0]]],
        [[t[0],  t[0]], [t[0],  p[0]], [t[0],  s1[0]], [t[0],  r[0]], [t[0],  l[0]], [t[0],  s2[0]]],
        [[p[0],  t[0]], [p[0],  p[0]], [p[0],  s1[0]], [p[0],  r[0]], [p[0],  l[0]], [p[0],  s2[0]]],
        [[s1[0], t[0]], [s1[0], p[0]], [s1[0], s1[0]], [s1[0], r[0]], [s1[0], l[0]], [s1[0], s2[0]]],
        [[r[0],  t[0]], [r[0],  p[0]], [r[0],  s1[0]], [r[0],  r[0]], [r[0],  l[0]], [r[0],  s2[0]]],
        [[l[0],  t[0]], [l[0],  p[0]], [l[0],  s1[0]], [l[0],  r[0]], [l[0],  l[0]], [l[0],  s2[0]]],
      ]]

      adjectives_insanity = [[
        [[t[1],  t[1]], [t[1],  p[1]], [t[1],  s1[1]], [t[1],  r[1]], [t[1],  l[1]], [t[1],  s2[1]]],
        [[p[1],  t[1]], [p[1],  p[1]], [p[1],  s1[1]], [p[1],  r[1]], [p[1],  l[1]], [p[1],  s2[1]]],
        [[s1[1], t[1]], [s1[1], p[1]], [s1[1], s1[1]], [s1[1], r[1]], [s1[1], l[1]], [s1[1], s2[1]]],
        [[r[1],  t[1]], [r[1],  p[1]], [r[1],  s1[1]], [r[1],  r[1]], [r[1],  l[1]], [r[1],  s2[1]]],
        [[l[1],  t[1]], [l[1],  p[1]], [l[1],  s1[1]], [l[1],  r[1]], [l[1],  l[1]], [l[1],  s2[1]]],
        [[s2[1], t[1]], [s2[1], p[1]], [s2[1], s1[1]], [s2[1], r[1]], [s2[1], l[1]], [s2[1], s2[1]]],
      ], [
        [[p[1],  t[1]], [p[1],  p[1]], [p[1],  s1[1]], [p[1],  r[1]], [p[1],  l[1]], [p[1],  s2[1]]],
        [[s1[1], t[1]], [s1[1], p[1]], [s1[1], s1[1]], [s1[1], r[1]], [s1[1], l[1]], [s1[1], s2[1]]],
        [[r[1],  t[1]], [r[1],  p[1]], [r[1],  s1[1]], [r[1],  r[1]], [r[1],  l[1]], [r[1],  s2[1]]],
        [[l[1],  t[1]], [l[1],  p[1]], [l[1],  s1[1]], [l[1],  r[1]], [l[1],  l[1]], [l[1],  s2[1]]],
        [[s2[1], t[1]], [s2[1], p[1]], [s2[1], s1[1]], [s2[1], r[1]], [s2[1], l[1]], [s2[1], s2[1]]],
        [[t[1],  t[1]], [t[1],  p[1]], [t[1],  s1[1]], [t[1],  r[1]], [t[1],  l[1]], [t[1],  s2[1]]],
      ], [
        [[s1[1], t[1]], [s1[1], p[1]], [s1[1], s1[1]], [s1[1], r[1]], [s1[1], l[1]], [s1[1], s2[1]]],
        [[r[1],  t[1]], [r[1],  p[1]], [r[1],  s1[1]], [r[1],  r[1]], [r[1],  l[1]], [r[1],  s2[1]]],
        [[l[1],  t[1]], [l[1],  p[1]], [l[1],  s1[1]], [l[1],  r[1]], [l[1],  l[1]], [l[1],  s2[1]]],
        [[s2[1], t[1]], [s2[1], p[1]], [s2[1], s1[1]], [s2[1], r[1]], [s2[1], l[1]], [s2[1], s2[1]]],
        [[t[1],  t[1]], [t[1],  p[1]], [t[1],  s1[1]], [t[1],  r[1]], [t[1],  l[1]], [t[1],  s2[1]]],
        [[p[1],  t[1]], [p[1],  p[1]], [p[1],  s1[1]], [p[1],  r[1]], [p[1],  l[1]], [p[1],  s2[1]]],
      ], [
        [[r[1],  t[1]], [r[1],  p[1]], [r[1],  s1[1]], [r[1],  r[1]], [r[1],  l[1]], [r[1],  s2[1]]],
        [[l[1],  t[1]], [l[1],  p[1]], [l[1],  s1[1]], [l[1],  r[1]], [l[1],  l[1]], [l[1],  s2[1]]],
        [[s2[1], t[1]], [s2[1], p[1]], [s2[1], s1[1]], [s2[1], r[1]], [s2[1], l[1]], [s2[1], s2[1]]],
        [[t[1],  t[1]], [t[1],  p[1]], [t[1],  s1[1]], [t[1],  r[1]], [t[1],  l[1]], [t[1],  s2[1]]],
        [[p[1],  t[1]], [p[1],  p[1]], [p[1],  s1[1]], [p[1],  r[1]], [p[1],  l[1]], [p[1],  s2[1]]],
        [[s1[1], t[1]], [s1[1], p[1]], [s1[1], s1[1]], [s1[1], r[1]], [s1[1], l[1]], [s1[1], s2[1]]],
      ], [
        [[l[1],  t[1]], [l[1],  p[1]], [l[1],  s1[1]], [l[1],  r[1]], [l[1],  l[1]], [l[1],  s2[1]]],
        [[s2[1], t[1]], [s2[1], p[1]], [s2[1], s1[1]], [s2[1], r[1]], [s2[1], l[1]], [s2[1], s2[1]]],
        [[t[1],  t[1]], [t[1],  p[1]], [t[1],  s1[1]], [t[1],  r[1]], [t[1],  l[1]], [t[1],  s2[1]]],
        [[p[1],  t[1]], [p[1],  p[1]], [p[1],  s1[1]], [p[1],  r[1]], [p[1],  l[1]], [p[1],  s2[1]]],
        [[s1[1], t[1]], [s1[1], p[1]], [s1[1], s1[1]], [s1[1], r[1]], [s1[1], l[1]], [s1[1], s2[1]]],
        [[r[1],  t[1]], [r[1],  p[1]], [r[1],  s1[1]], [r[1],  r[1]], [r[1],  l[1]], [r[1],  s2[1]]],
      ], [
        [[s2[1], t[1]], [s2[1], p[1]], [s2[1], s1[1]], [s2[1], r[1]], [s2[1], l[1]], [s2[1], s2[1]]],
        [[t[1],  t[1]], [t[1],  p[1]], [t[1],  s1[1]], [t[1],  r[1]], [t[1],  l[1]], [t[1],  s2[1]]],
        [[p[1],  t[1]], [p[1],  p[1]], [p[1],  s1[1]], [p[1],  r[1]], [p[1],  l[1]], [p[1],  s2[1]]],
        [[s1[1], t[1]], [s1[1], p[1]], [s1[1], s1[1]], [s1[1], r[1]], [s1[1], l[1]], [s1[1], s2[1]]],
        [[r[1],  t[1]], [r[1],  p[1]], [r[1],  s1[1]], [r[1],  r[1]], [r[1],  l[1]], [r[1],  s2[1]]],
        [[l[1],  t[1]], [l[1],  p[1]], [l[1],  s1[1]], [l[1],  r[1]], [l[1],  l[1]], [l[1],  s2[1]]],
      ]]

      adjectives = [ adjectives_sanity, adjectives_insanity ]

      context_window = [0, 1, 2, 3, 4, 5]

      row_options    = [0, 1, 2, 3, 4, 5]
      col_options    = [0, 1, 2, 3, 4, 5]
      arr_options    = [0, 1]

      # Modifies word genders based on sanity state.
      current_sanity  = File.read("_data/npc/dialogue/sanity.txt").to_i # sanity_context.sample

      cur_con = context_window.sample
      cur_row =    row_options.sample
      cur_col =    col_options.sample
      cur_arr =    arr_options.sample

      chosen_adjective = adjectives[current_sanity][cur_con][cur_row][cur_col][cur_arr].strip

      subjects = [[
        [["es",    "es"], ["es",    "es ne"]],
        [["es ne", "es"], ["es ne", "es ne"]],
      ], [
        [["es",    "es"], ["es",    "es ne"]],
        [["es ne", "es"], ["es ne", "es ne"]],
      ]]
  
      context_window = [0, 1]

      row_options    = [0, 1]
      col_options    = [0, 1]
      arr_options    = [0, 1]

      cur_con = context_window.sample
      cur_row =    row_options.sample
      cur_col =    col_options.sample
      cur_arr =    arr_options.sample

      chosen_subject = subjects[cur_con][cur_row][cur_col][cur_arr]

      ## This covers the verbs that come before the adverbs.
      avo = ["avoir",        "voiray"]
      cou = ["coupe",       "oupecay"]
      ser = ["serrure",       "erruresay"]
      dev = ["deverrouillage", "everrouillageday"]

      verbs_sanity = [[
        [[avo[0], avo[0]], [avo[0], cou[0]], [avo[0], ser[0]], [avo[0], dev[0]]],
        [[cou[0], avo[0]], [cou[0], cou[0]], [cou[0], ser[0]], [cou[0], dev[0]]],
        [[ser[0], avo[0]], [ser[0], cou[0]], [ser[0], ser[0]], [ser[0], dev[0]]],
        [[dev[0], avo[0]], [dev[0], cou[0]], [dev[0], ser[0]], [dev[0], dev[0]]],
      ], [
        [[cou[0], avo[0]], [cou[0], cou[0]], [cou[0], ser[0]], [cou[0], dev[0]]],
        [[ser[0], avo[0]], [ser[0], cou[0]], [ser[0], ser[0]], [ser[0], dev[0]]],
        [[dev[0], avo[0]], [dev[0], cou[0]], [dev[0], ser[0]], [dev[0], dev[0]]],
        [[avo[0], avo[0]], [avo[0], cou[0]], [avo[0], ser[0]], [avo[0], dev[0]]],
      ], [
        [[ser[0], avo[0]], [ser[0], cou[0]], [ser[0], ser[0]], [ser[0], dev[0]]],
        [[dev[0], avo[0]], [dev[0], cou[0]], [dev[0], ser[0]], [dev[0], dev[0]]],
        [[avo[0], avo[0]], [avo[0], cou[0]], [avo[0], ser[0]], [avo[0], dev[0]]],
        [[cou[0], avo[0]], [cou[0], cou[0]], [cou[0], ser[0]], [cou[0], dev[0]]],
      ], [
        [[dev[0], avo[0]], [dev[0], cou[0]], [dev[0], ser[0]], [dev[0], dev[0]]],
        [[avo[0], avo[0]], [avo[0], cou[0]], [avo[0], ser[0]], [avo[0], dev[0]]],
        [[cou[0], avo[0]], [cou[0], cou[0]], [cou[0], ser[0]], [cou[0], dev[0]]],
        [[ser[0], avo[0]], [ser[0], cou[0]], [ser[0], ser[0]], [ser[0], dev[0]]],
      ]]

      verbs_insanity = [[
        [[avo[1], avo[1]], [avo[1], cou[1]], [avo[1], ser[1]], [avo[1], dev[1]]],
        [[cou[1], avo[1]], [cou[1], cou[1]], [cou[1], ser[1]], [cou[1], dev[1]]],
        [[ser[1], avo[1]], [ser[1], cou[1]], [ser[1], ser[1]], [ser[1], dev[1]]],
        [[dev[1], avo[1]], [dev[1], cou[1]], [dev[1], ser[1]], [dev[1], dev[1]]],
      ], [
        [[cou[1], avo[1]], [cou[1], cou[1]], [cou[1], ser[1]], [cou[1], dev[1]]],
        [[ser[1], avo[1]], [ser[1], cou[1]], [ser[1], ser[1]], [ser[1], dev[1]]],
        [[dev[1], avo[1]], [dev[1], cou[1]], [dev[1], ser[1]], [dev[1], dev[1]]],
        [[avo[1], avo[1]], [avo[1], cou[1]], [avo[1], ser[1]], [avo[1], dev[1]]],
      ], [
        [[ser[1], avo[1]], [ser[1], cou[1]], [ser[1], ser[1]], [ser[1], dev[1]]],
        [[dev[1], avo[1]], [dev[1], cou[1]], [dev[1], ser[1]], [dev[1], dev[1]]],
        [[avo[1], avo[1]], [avo[1], cou[1]], [avo[1], ser[1]], [avo[1], dev[1]]],
        [[cou[1], avo[1]], [cou[1], cou[1]], [cou[1], ser[1]], [cou[1], dev[1]]],
      ], [
        [[dev[1], avo[1]], [dev[1], cou[1]], [dev[1], ser[1]], [dev[1], dev[1]]],
        [[avo[1], avo[1]], [avo[1], cou[1]], [avo[1], ser[1]], [avo[1], dev[1]]],
        [[cou[1], avo[1]], [cou[1], cou[1]], [cou[1], ser[1]], [cou[1], dev[1]]],
        [[ser[1], avo[1]], [ser[1], cou[1]], [ser[1], ser[1]], [ser[1], dev[1]]],
      ]]

      verbs = [ verbs_sanity, verbs_insanity]

      # Modifies word genders based on sanity state.
      current_sanity  = File.read("_data/npc/dialogue/sanity.txt").to_i # sanity_context.sample

      context_window = [0, 1, 2, 3]
      row_options    = [0, 1, 2, 3]
      col_options    = [0, 1, 2, 3]
      arr_options    = [0, 1]

      # Modifies word genders based on sanity state.
      cur_san = 0

      cur_con = context_window.sample
      cur_row =    row_options.sample
      cur_col =    col_options.sample
      cur_arr =    arr_options.sample

      chosen_verb = verbs[current_sanity][cur_con][cur_row][cur_col][cur_arr]

      r = ["rapidement.",     "apidementray."]
      l = ["lentement.",    "tementelay."]
      a = ["assurement.",     "surementasay."]
      t = ["tranquillement.", "quillementtranay."]

      adverbs_sanity   = [[
        [[r[0], r[0]], [r[0], l[0]], [r[0], a[0]], [r[0], t[0]]],
        [[l[0], r[0]], [l[0], l[0]], [l[0], a[0]], [l[0], t[0]]],
        [[a[0], r[0]], [a[0], l[0]], [a[0], a[0]], [a[0], t[0]]],
        [[t[0], r[0]], [t[0], l[0]], [t[0], a[0]], [t[0], t[0]]],
      ], [
        [[l[0], r[0]], [l[0], l[0]], [l[0], a[0]], [l[0], t[0]]],
        [[a[0], r[0]], [a[0], l[0]], [a[0], a[0]], [a[0], t[0]]],
        [[t[0], r[0]], [t[0], l[0]], [t[0], a[0]], [t[0], t[0]]],
        [[r[0], r[0]], [r[0], l[0]], [r[0], a[0]], [r[0], t[0]]],
      ], [
        [[a[0], r[0]], [a[0], l[0]], [a[0], a[0]], [a[0], t[0]]],
        [[t[0], r[0]], [t[0], l[0]], [t[0], a[0]], [t[0], t[0]]],
        [[r[0], r[0]], [r[0], l[0]], [r[0], a[0]], [r[0], t[0]]],
        [[l[0], r[0]], [l[0], l[0]], [l[0], a[0]], [l[0], t[0]]],
      ], [
        [[t[0], r[0]], [t[0], l[0]], [t[0], a[0]], [t[0], t[0]]],
        [[r[0], r[0]], [r[0], l[0]], [r[0], a[0]], [r[0], t[0]]],
        [[l[0], r[0]], [l[0], l[0]], [l[0], a[0]], [l[0], t[0]]],
        [[a[0], r[0]], [a[0], l[0]], [a[0], a[0]], [a[0], t[0]]],
      ]]

      adverbs_insanity = [[
        [[r[1], r[1]], [r[1], l[1]], [r[1], a[1]], [r[1], t[1]]],
        [[l[1], r[1]], [l[1], l[1]], [l[1], a[1]], [l[1], t[1]]],
        [[a[1], r[1]], [a[1], l[1]], [a[1], a[1]], [a[1], t[1]]],
        [[t[1], r[1]], [t[1], l[1]], [t[1], a[1]], [t[1], t[1]]],
      ], [
        [[l[1], r[1]], [l[1], l[1]], [l[1], a[1]], [l[1], t[1]]],
        [[a[1], r[1]], [a[1], l[1]], [a[1], a[1]], [a[1], t[1]]],
        [[t[1], r[1]], [t[1], l[1]], [t[1], a[1]], [t[1], t[1]]],
        [[r[1], r[1]], [r[1], l[1]], [r[1], a[1]], [r[1], t[1]]],
      ], [
        [[a[1], r[1]], [a[1], l[1]], [a[1], a[1]], [a[1], t[1]]],
        [[t[1], r[1]], [t[1], l[1]], [t[1], a[1]], [t[1], t[1]]],
        [[r[1], r[1]], [r[1], l[1]], [r[1], a[1]], [r[1], t[1]]],
        [[l[1], r[1]], [l[1], l[1]], [l[1], a[1]], [l[1], t[1]]],
      ], [
        [[t[1], r[1]], [t[1], l[1]], [t[1], a[1]], [t[1], t[1]]],
        [[r[1], r[1]], [r[1], l[1]], [r[1], a[1]], [r[1], t[1]]],
        [[l[1], r[1]], [l[1], l[1]], [l[1], a[1]], [l[1], t[1]]],
        [[a[1], r[1]], [a[1], l[1]], [a[1], a[1]], [a[1], t[1]]],
      ]]

      adverbs     = [ adverbs_sanity, adverbs_insanity ]
      current_sanity  = File.read("_data/npc/dialogue/sanity.txt").to_i # sanity_context.sample

      context_window = [0, 1, 2, 3]
      row_options    = [0, 1, 2, 3]
      col_options    = [0, 1, 2, 3]
      arr_options    = [0, 1]

      cur_con = context_window.sample
      cur_row =    row_options.sample
      cur_col =    col_options.sample
      cur_arr =    arr_options.sample

      chosen_adverb = adverbs[current_sanity][cur_con][cur_row][cur_col][cur_arr]

      current_phrase = "#{chosen_word_class} #{chosen_noun} #{chosen_adjective}#{chosen_subject} #{chosen_verb} #{chosen_adverb}"
  
      current_phrase
    end
  end

  class DefeatSequences
    def self.parallel_statistics(b1, b2, c1, c2, d1, d2, f1, f2, g1, g2, h1, h2, j1, j2,
                                 k1, k2, n1, n2, p1, p2, q1, q2, s1, s2, t1, t2, v1, v2,
                                 w1, w2, x1, x2, y1, y2, a1, a2, e1, e2, i1, i2, o1, o2) 

      b = b1, b2
      c = c1, c2
      d = d1, d2
      f = f1, f2
      g = g1, g2
      h = h1, h2
      j = j1, j2
      k = k1, k2
      n = n1, n2
      u = o1, o2
      q = p1, p2
      s = s1, s2
      t = t1, t2
      v = v1, v2
      w = w1, w2
      x = x1, x2
      y = y1, y2
      a = a1, a2
      e = e1, e2
      i = i1, i2
      o = o1, o2

      ## Node 1
      matrice_une = [
        [[b[0], b[0], b[0]],
         [b[0], b[0], c[0]],
         [b[0], b[0], d[0]]],
   
        [[c[0], c[0], b[0]],
         [c[0], c[0], c[0]],
         [c[0], c[0], d[0]]],
   
        [[d[0], d[0], b[0]],
         [d[0], d[0], c[0]],
         [d[0], d[0], d[0]]],
      ], [
        [[b[1], b[1], b[1]],
         [b[1], b[1], c[1]],
         [b[1], b[1], d[1]]],
   
        [[c[1], c[1], b[1]],
         [c[1], c[1], c[1]],
         [c[1], c[1], d[1]]],
   
        [[d[1], d[1], b[1]],
         [d[1], d[1], c[1]],
         [d[1], d[1], d[1]]],
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

      ## Node 2
      matrice_deux = [
        [[f[0], f[0], f[0]],
         [f[0], f[0], g[0]],
         [f[0], f[0], h[0]]],
   
        [[g[0], g[0], f[0]],
         [g[0], g[0], g[0]],
         [g[0], g[0], h[0]]],
   
        [[h[0], h[0], f[0]],
         [h[0], h[0], g[0]],
         [h[0], h[0], h[0]]],
      ], [
        [[f[1], f[1], f[1]],
         [f[1], f[1], g[1]],
         [f[1], f[1], h[1]]],
   
        [[g[1], g[1], f[1]],
         [g[1], g[1], g[1]],
         [g[1], g[1], h[1]]],
   
        [[h[1], h[1], f[1]],
         [h[1], h[1], g[1]],
         [h[1], h[1], h[1]]],
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

      ## Node 3
      matrice_trois = [
        [[j[0], j[0], j[0]],
         [j[0], j[0], k[0]],
         [j[0], j[0], n[0]]],
   
        [[k[0], k[0], j[0]],
         [k[0], k[0], k[0]],
         [k[0], k[0], n[0]]],
   
        [[n[0], n[0], j[0]],
         [n[0], n[0], k[0]],
         [n[0], n[0], n[0]]],
      ], [
        [[j[1], j[1], j[1]],
         [j[1], j[1], k[1]],
         [j[1], j[1], n[1]]],
   
        [[k[1], k[1], j[1]],
         [k[1], k[1], k[1]],
         [k[1], k[1], n[1]]],
   
        [[n[1], n[1], j[1]],
         [n[1], n[1], k[1]],
         [n[1], n[1], n[1]]],
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

      ## Node 4
      matrice_quatre = [
        [[u[0], u[0], u[0]],
         [u[0], u[0], q[0]],
         [u[0], u[0], s[0]]],
   
        [[q[0], q[0], u[0]],
         [q[0], q[0], q[0]],
         [q[0], q[0], s[0]]],
   
        [[s[0], s[0], u[0]],
         [s[0], s[0], q[0]],
         [s[0], s[0], s[0]]],
      ], [
        [[u[1], u[1], u[1]],
         [u[1], u[1], q[1]],
         [u[1], u[1], s[1]]],
   
        [[q[1], q[1], u[1]],
         [q[1], q[1], q[1]],
         [q[1], q[1], s[1]]],
   
        [[s[1], s[1], u[1]],
         [s[1], s[1], q[1]],
         [s[1], s[1], s[1]]],
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

      ## Node 5
      matrice_cinq = [
        [[t[0], t[0], t[0]],
         [t[0], t[0], v[0]],
         [t[0], t[0], w[0]]],
   
        [[v[0], v[0], t[0]],
         [v[0], v[0], v[0]],
         [v[0], v[0], w[0]]],
   
        [[w[0], w[0], t[0]],
         [w[0], w[0], v[0]],
         [w[0], w[0], w[0]]],
      ], [
        [[t[1], t[0], t[0]],
         [t[1], t[0], v[0]],
         [t[1], t[0], w[0]]],
   
        [[v[1], v[0], t[0]],
         [v[1], v[0], v[0]],
         [v[1], v[0], w[0]]],
   
        [[w[1], w[1], t[0]],
         [w[1], w[1], v[0]],
         [w[1], w[1], w[0]]],
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

      ## Node 6
      matrice_six = [
        [[x[0], x[0], x[0]],
         [x[0], x[0], y[0]],
         [x[0], x[0], a[0]]],
   
        [[y[0], y[0], x[0]],
         [y[0], y[0], y[0]],
         [y[0], y[0], a[0]]],
   
        [[a[0], a[0], x[0]],
         [a[0], a[0], y[0]],
         [a[0], a[0], a[0]]],
      ], [
        [[x[1], x[1], x[1]],
         [x[1], x[1], y[1]],
         [x[1], x[1], a[1]]],
   
        [[y[1], y[1], x[1]],
         [y[1], y[1], y[1]],
         [y[1], y[1], a[1]]],
   
        [[a[1], a[1], x[1]],
         [a[1], a[1], y[1]],
         [a[1], a[1], a[1]]],
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

      matrice_sept = [
        [[e[0], e[0], e[0]],
         [e[0], e[0], i[0]],
         [e[0], e[0], o[0]]],
   
        [[i[0], i[0], e[0]],
         [i[0], i[0], i[0]],
         [i[0], i[0], o[0]]],
   
        [[o[0], o[0], e[0]],
         [o[0], o[0], i[0]],
         [o[0], o[0], o[0]]],
      ], [
        [[e[1], e[1], e[1]],
         [e[1], e[1], i[1]],
         [e[1], e[1], o[1]]],
   
        [[i[1], i[1], e[1]],
         [i[1], i[1], i[1]],
         [i[1], i[1], o[1]]],
   
        [[o[1], o[1], e[1]],
         [o[1], o[1], i[1]],
         [o[1], o[1], o[1]]],
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

      ## For all matrice types, this is the base probability of rows and cols.
      row_probability = 0.33
      col_probability = 0.33

      ## Graph selection probability
      graph_selection = row_probability * col_probability
  
      ## Covers the first matrice
      label_type1       = matrice_une[0]
      definition_type1  = matrice_une[1]
      probability_type1 = matrice_une[2]

      row_options = [0, 1, 2]
      col_options = [0, 1, 2]
      arr_options = [0, 1, 2]
  
      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      current_label1       = label_type1[cur_row][cur_col][cur_arr]
      current_definition1  = definition_type1[cur_row][cur_col][cur_arr]
      current_probability1 = probability_type1[cur_row][cur_col][cur_arr] * graph_selection
  
      "I'm confident it is not [ #{current_label1} #{current_definition1} ] as it has only #{current_probability1} probability."
  
      current_symbol1       = current_label1
      current_definition1  = current_definition1
      current_probability1 = current_probability1 + current_probability1
      current_information1 = "#{current_label1} #{current_definition1}"

      File.write("data/statistics/probability/first_probability/current_probability1.txt", "#{current_probability1}")
      File.write("data/statistics/label/first_information/current_information1.txt",            current_information1)
      File.write("data/statistics/description/first_description/current_description1.txt",       current_definition1)
      File.write("data/statistics/symbol/first_symbol/current_symbol1.txt",                          current_symbol1)  

      ## Covers the second matrice
      label_type2       = matrice_deux[0]
      definition_type2  = matrice_deux[1]
      probability_type2 = matrice_deux[2]

      row_options = [0, 1, 2]
      col_options = [0, 1, 2]
      arr_options = [0, 1, 2]
  
      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      current_label2       = label_type2[cur_row][cur_col][cur_arr]
      current_definition2  = definition_type2[cur_row][cur_col][cur_arr]
      current_probability2 = probability_type2[cur_row][cur_col][cur_arr] * graph_selection
  
      "I'm confident it is not [ #{current_label2} #{current_definition2} ] as it has only #{current_probability2} probability."
  
      current_symbol2      = current_label2
      current_definition2  = current_definition2
      current_probability2 = current_probability2 + current_probability2
      current_information2 = "#{current_label2} #{current_definition2}"

      File.write("data/statistics/probability/second_probability/current_probability2.txt", "#{current_probability2}")
      File.write("data/statistics/label/second_information/current_information2.txt",            current_information2)
      File.write("data/statistics/description/second_description/current_definition2.txt",        current_definition2)
      File.write("data/statistics/symbol/second_symbol/current_symbol2.txt",                          current_symbol2)  

      ## Covers the third matrice
      label_type3       = matrice_trois[0]
      definition_type3  = matrice_trois[1]
      probability_type3 = matrice_trois[2]

      row_options = [0, 1, 2]
      col_options = [0, 1, 2]
      arr_options = [0, 1, 2]
  
      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      current_label3       = label_type3[cur_row][cur_col][cur_arr]
      current_definition3  = definition_type3[cur_row][cur_col][cur_arr]
      current_probability3 = probability_type3[cur_row][cur_col][cur_arr] * graph_selection
  
      "I'm confident it is not [ #{current_label3} #{current_definition3} ] as it has only #{current_probability3} probability."
  
      current_symbol3      = current_label3
      current_definition3  = current_definition3
      current_probability3 = current_probability3 + current_probability3
      current_information3 = "#{current_label3} #{current_definition3}"

      File.write("data/statistics/probability/third_probability/current_probability3.txt", "#{current_probability3}")
      File.write("data/statistics/label/third_information/current_information3.txt",            current_information3)
      File.write("data/statistics/description/third_description/current_definition3.txt",        current_definition3)
      File.write("data/statistics/symbol/third_symbol/current_symbol3.txt",                          current_symbol3)  

      ## Covers the fourth matrice
      label_type4       = matrice_quatre[0]
      definition_type4  = matrice_quatre[1]
      probability_type4 = matrice_quatre[2]

      row_options = [0, 1, 2]
      col_options = [0, 1, 2]
      arr_options = [0, 1, 2]
  
      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      current_label4       = label_type4[cur_row][cur_col][cur_arr]
      current_definition4  = definition_type4[cur_row][cur_col][cur_arr]
      current_probability4 = probability_type4[cur_row][cur_col][cur_arr] * graph_selection
  
      "I'm confident it is not [ #{current_label4} #{current_definition4} ] as it has only #{current_probability4} probability."
  
      current_symbol4      = current_label4
      current_definition4  = current_definition4
      current_probability4 = current_probability4 + current_probability4
      current_information4 = "#{current_label4} #{current_definition4}"

      File.write("data/statistics/probability/fourth_probability/current_probability4.txt", "#{current_probability4}")
      File.write("data/statistics/label/fourth_information/current_information4.txt",            current_information4)
      File.write("data/statistics/description/fourth_description/current_description4.txt",       current_definition4)
      File.write("data/statistics/symbol/fourth_symbol/current_symbol4.txt",                          current_symbol4) 

      ## Covers the fifth matrice
      label_type5       = matrice_cinq[0]
      definition_type5  = matrice_cinq[1]
      probability_type5 = matrice_cinq[2]

      row_options = [0, 1, 2]
      col_options = [0, 1, 2]
      arr_options = [0, 1, 2]
  
      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      current_label5       = label_type5[cur_row][cur_col][cur_arr]
      current_definition5  = definition_type5[cur_row][cur_col][cur_arr]
      current_probability5 = probability_type5[cur_row][cur_col][cur_arr] * graph_selection
  
      "I'm confident it is not [ #{current_label5} #{current_definition5} ] as it has only #{current_probability5} probability."
  
      current_symbol5      = current_label5
      current_definition5  = current_definition5
      current_probability5 = current_probability5 + current_probability5
      current_information5 = "#{current_label4} #{current_definition5}"

      File.write("data/statistics/probability/fifth_probability/current_probability5.txt", "#{current_probability5}")
      File.write("data/statistics/label/fifth_information/current_information5.txt",            current_information5)
      File.write("data/statistics/description/fifth_description/current_description5.txt",       current_definition5)
      File.write("data/statistics/symbol/fifth_symbol/current_symbol5.txt",                          current_symbol5) 

      ## Covers the sixth matrice
      label_type6       = matrice_six[0]
      definition_type6  = matrice_six[1]
      probability_type6 = matrice_six[2]

      row_options = [0, 1, 2]
      col_options = [0, 1, 2]
      arr_options = [0, 1, 2]
  
      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      current_label6       = label_type6[cur_row][cur_col][cur_arr]
      current_definition6  = definition_type6[cur_row][cur_col][cur_arr]
      current_probability6 = probability_type6[cur_row][cur_col][cur_arr] * graph_selection
  
      "I'm confident it is not [ #{current_label6} #{current_definition6} ] as it has only #{current_probability6} probability."
  
      current_symbol6      = current_label6
      current_definition6  = current_definition6
      current_probability6 = current_probability6 + current_probability6
      current_information6 = "#{current_label4} #{current_definition6}"

      File.write("data/statistics/probability/sixth_probability/current_probability6.txt", "#{current_probability6}")
      File.write("data/statistics/label/sixth_information/current_information6.txt",            current_information6)
      File.write("data/statistics/description/sixth_description/current_description6.txt",       current_definition6)
      File.write("data/statistics/symbol/sixth_symbol/current_symbol6.txt",                          current_symbol6) 
  
      ## Covers the seventh matrice
      label_type7       = matrice_sept[0]
      definition_type7  = matrice_sept[1]
      probability_type7 = matrice_sept[2]

      row_options = [0, 1, 2]
      col_options = [0, 1, 2]
      arr_options = [0, 1, 2]
  
      cur_row = row_options.sample
      cur_col = col_options.sample
      cur_arr = arr_options.sample

      current_label7       = label_type7[cur_row][cur_col][cur_arr]
      current_definition7  = definition_type7[cur_row][cur_col][cur_arr]
      current_probability7 = probability_type7[cur_row][cur_col][cur_arr] * graph_selection
  
      "I'm confident it is not [ #{current_label7} #{current_definition7} ] as it has only #{current_probability7} probability."
  
      current_symbol7      = current_label7
      current_definition7  = current_definition7
      current_probability7 = current_probability7 + current_probability7
      current_information7 = "#{current_label7} #{current_definition7}"

      File.write("data/statistics/probability/seventh_probability/current_probability7.txt", "#{current_probability7}")
      File.write("data/statistics/label/seventh_information/current_information7.txt",            current_information7)
      File.write("data/statistics/description/seventh_description/current_description7.txt",       current_definition7)
      File.write("data/statistics/symbol/seventh_symbol/current_symbol7.txt",                          current_symbol7) 
    end

    def self.gain
      ## First Merit
      current_probability1 = File.read("data/statistics/probability/first_probability/current_probability1.txt").to_f
      current_information1 = File.read("data/statistics/label/first_information/current_information1.txt")

      if current_probability1 > 0.999999999999999999
        current_probability1 = 0.9 / current_probability1
      end
  
      case current_probability1
      when 0.003921569000000000..0.287225000000000000
        puts "I'm confident it is not [ #{current_information1} ] as its only #{current_probability1}."
      when 0.287225000000000001..0.522225000000000000
        puts "I'm less unconfident it is not [ #{current_information1} ] as its only #{current_probability1}."
      when 0.522225000000000001..0.756112500000000000
        puts "I'm almost sure it is [ #{current_information1} ] because it has #{current_probability1}."
      when 0.756112500000000001..0.999999999999999999
        puts "I'm sure it is [ #{current_information1} ] after all it has #{current_probability1}."

      else
        puts "The probability is either to low or to large, so I can't determine exactly."
      end
  
      current_probability1 = current_probability1 + current_probability1
  
      File.write("data/statistics/probability/first_probability/current_probability1.txt", "#{current_probability1}")
      File.write("data/statistics/label/first_information/current_information1.txt",            current_information1)

      ## Second Merit
      current_probability2 = File.read("data/statistics/probability/second_probability/current_probability2.txt").to_f
      current_information2 = File.read("data/statistics/label/second_information/current_information2.txt")

      if current_probability2 > 0.999999999999999999
        current_probability2 = 0.9 / current_probability2
      end
  
      case current_probability2
      when 0.003921569000000000..0.287225000000000000
        puts "I'm confident it is not [ #{current_information2} ] as its only #{current_probability2}."
      when 0.287225000000000001..0.522225000000000000
        puts "I'm less unconfident it is not [ #{current_information2} ] as its only #{current_probability2}."
      when 0.522225000000000001..0.756112500000000000
        puts "I'm almost sure it is [ #{current_information2} ] because it has #{current_probability2}."
      when 0.756112500000000001..0.999999999999999999
        puts "I'm sure it is [ #{current_information2} ] after all it has #{current_probability2}."

      else
        puts "The probability is either to low or to large, so I can't determine exactly."
      end
  
      current_probability2 = current_probability2 + current_probability2
  
      File.write("data/statistics/probability/first_probability/current_probability2.txt", "#{current_probability2}")
      File.write("data/statistics/label/first_information/current_information2.txt",            current_information2)

      ## Third Merit
      current_probability3 = File.read("data/statistics/probability/second_probability/current_probability3.txt").to_f
      current_information3 = File.read("data/statistics/label/second_information/current_information3.txt")

      if current_probability3 > 0.999999999999999999
        current_probability3 = 0.9 / current_probability3
      end
  
      case current_probability3
      when 0.003921569000000000..0.287225000000000000
        puts "I'm confident it is not [ #{current_information3} ] as its only #{current_probability3}."
      when 0.287225000000000001..0.522225000000000000
        puts "I'm less unconfident it is not [ #{current_information3} ] as its only #{current_probability3}."
      when 0.522225000000000001..0.756112500000000000
        puts "I'm almost sure it is [ #{current_information3} ] because it has #{current_probability3}."
      when 0.756112500000000001..0.999999999999999999
        puts "I'm sure it is [ #{current_information3} ] after all it has #{current_probability3}."

      else
        puts "The probability is either to low or to large, so I can't determine exactly."
      end
  
      current_probability3 = current_probability3 + current_probability3
  
      File.write("data/statistics/probability/first_probability/current_probability3.txt", "#{current_probability3}")
      File.write("data/statistics/label/first_information/current_information3.txt",            current_information3)

      ## Fourth Merit
      current_probability4 = File.read("data/statistics/probability/second_probability/current_probability4.txt").to_f
      current_information4 = File.read("data/statistics/label/second_information/current_information4.txt")

      if current_probability4 > 0.999999999999999999
        current_probability4 = 0.9 / current_probability4
      end
  
      case current_probability4
      when 0.003921569000000000..0.287225000000000000
        puts "I'm confident it is not [ #{current_information4} ] as its only #{current_probability4}."
      when 0.287225000000000001..0.522225000000000000
        puts "I'm less unconfident it is not [ #{current_information4} ] as its only #{current_probability4}."
      when 0.522225000000000001..0.756112500000000000
        puts "I'm almost sure it is [ #{current_information4} ] because it has #{current_probability4}."
      when 0.756112500000000001..0.999999999999999999
        puts "I'm sure it is [ #{current_information4} ] after all it has #{current_probability4}."

      else
        puts "The probability is either to low or to large, so I can't determine exactly."
      end
  
      current_probability4 = current_probability4 + current_probability4
  
      File.write("data/statistics/probability/first_probability/current_probability4.txt", "#{current_probability4}")
      File.write("data/statistics/label/first_information/current_information4.txt",            current_information4)

      ## Fifth Merit
      current_probability5 = File.read("data/statistics/probability/second_probability/current_probability5.txt").to_f
      current_information5 = File.read("data/statistics/label/second_information/current_information5.txt")

      if current_probability5 > 0.999999999999999999
        current_probability5 = 0.9 / current_probability5
      end
  
      case current_probability5
      when 0.003921569000000000..0.287225000000000000
        puts "I'm confident it is not [ #{current_information5} ] as its only #{current_probability5}."
      when 0.287225000000000001..0.522225000000000000
        puts "I'm less unconfident it is not [ #{current_information5} ] as its only #{current_probability5}."
      when 0.522225000000000001..0.756112500000000000
        puts "I'm almost sure it is [ #{current_information5} ] because it has #{current_probability5}."
      when 0.756112500000000001..0.999999999999999999
        puts "I'm sure it is [ #{current_information5} ] after all it has #{current_probability5}."

      else
        puts "The probability is either to low or to large, so I can't determine exactly."
      end
  
      current_probability5 = current_probability5 + current_probability5
  
      File.write("data/statistics/probability/first_probability/current_probability5.txt", "#{current_probability5}")
      File.write("data/statistics/label/first_information/current_information5.txt",            current_information5)

      ## Sixth Merit
      current_probability6 = File.read("data/statistics/probability/second_probability/current_probability6.txt").to_f
      current_information6 = File.read("data/statistics/label/second_information/current_information5.txt")

      if current_probability5 > 0.999999999999999999
        current_probability5 = 0.9 / current_probability5
      end
  
      case current_probability6
      when 0.003921569000000000..0.287225000000000000
        puts "I'm confident it is not [ #{current_information6} ] as its only #{current_probability5}."
      when 0.287225000000000001..0.522225000000000000
        puts "I'm less unconfident it is not [ #{current_information6} ] as its only #{current_probability5}."
      when 0.522225000000000001..0.756112500000000000
        puts "I'm almost sure it is [ #{current_information6} ] because it has #{current_probability5}."
      when 0.756112500000000001..0.999999999999999999
        puts "I'm sure it is [ #{current_information6} ] after all it has #{current_probability5}."

      else
        puts "The probability is either to low or to large, so I can't determine exactly."
      end
  
      current_probability6 = current_probability6 + current_probability6
  
      File.write("data/statistics/probability/first_probability/current_probability5.txt", "#{current_probability6}")
      File.write("data/statistics/label/first_information/current_information6.txt",            current_information5)

      ## Seventh Merit
      current_probability7 = File.read("data/statistics/probability/second_probability/current_probability7.txt").to_f
      current_information7 = File.read("data/statistics/label/second_information/current_information7.txt")

      if current_probability7 > 0.999999999999999999
        current_probability7 = 0.9 / current_probability7
      end
  
      case current_probability7
      when 0.003921569000000000..0.287225000000000000
        puts "I'm confident it is not [ #{current_information7} ] as its only #{current_probability5}."
      when 0.287225000000000001..0.522225000000000000
        puts "I'm less unconfident it is not [ #{current_information7} ] as its only #{current_probability5}."
      when 0.522225000000000001..0.756112500000000000
        puts "I'm almost sure it is [ #{current_information7} ] because it has #{current_probability5}."
      when 0.756112500000000001..0.999999999999999999
        puts "I'm sure it is [ #{current_information7} ] after all it has #{current_probability5}."

      else
        puts "The probability is either to low or to large, so I can't determine exactly."
      end
  
      current_probability7 = current_probability7 + current_probability7
  
      File.write("data/statistics/probability/first_probability/current_probability7.txt", "#{current_probability7}")
      File.write("data/statistics/label/first_information/current_probability7.txt",            current_probability7)
    end

    def self.loss
      ## First Merit
      current_probability1 = File.read("data/statistics/probability/first_probability/current_probability1.txt").to_f
      current_information1 = File.read("data/statistics/label/first_information/current_information1.txt")

      if current_probability1 > 0.999999999999999999
        current_probability1 = 0.9 / current_probability1
      end
  
      case current_probability1
      when 0.003921569000000000..0.287225000000000000
        puts "I'm confident it is not [ #{current_information1} ] as its only #{current_probability1}."
      when 0.287225000000000001..0.522225000000000000
        puts "I'm less unconfident it is not [ #{current_information1} ] as its only #{current_probability1}."
      when 0.522225000000000001..0.756112500000000000
        puts "I'm almost sure it is [ #{current_information1} ] because it has #{current_probability1}."
      when 0.756112500000000001..0.999999999999999999
        puts "I'm sure it is [ #{current_information1} ] after all it has #{current_probability1}."

      else
        puts "The probability is either to low or to large, so I can't determine exactly."
      end
  
      current_probability1 = current_probability1 + current_probability1
  
      File.write("data/statistics/probability/first_probability/current_probability1.txt", "#{current_probability1}")
      File.write("data/statistics/label/first_information/current_information1.txt",            current_information1)

      ## Second Merit
      current_probability2 = File.read("data/statistics/probability/second_probability/current_probability2.txt").to_f
      current_information2 = File.read("data/statistics/label/second_information/current_information2.txt")

      if current_probability2 > 0.999999999999999999
        current_probability2 = 0.9 / current_probability2
      end
  
      case current_probability2
      when 0.003921569000000000..0.287225000000000000
        puts "I'm confident it is not [ #{current_information2} ] as its only #{current_probability2}."
      when 0.287225000000000001..0.522225000000000000
        puts "I'm less unconfident it is not [ #{current_information2} ] as its only #{current_probability2}."
      when 0.522225000000000001..0.756112500000000000
        puts "I'm almost sure it is [ #{current_information2} ] because it has #{current_probability2}."
      when 0.756112500000000001..0.999999999999999999
        puts "I'm sure it is [ #{current_information2} ] after all it has #{current_probability2}."

      else
        puts "The probability is either to low or to large, so I can't determine exactly."
      end
  
      current_probability2 = current_probability2 + current_probability2
  
      File.write("data/statistics/probability/first_probability/current_probability2.txt", "#{current_probability2}")
      File.write("data/statistics/label/first_information/current_information2.txt",            current_information2)

      ## Third Merit
      current_probability3 = File.read("data/statistics/probability/second_probability/current_probability3.txt").to_f
      current_information3 = File.read("data/statistics/label/second_information/current_information3.txt")

      if current_probability3 > 0.999999999999999999
        current_probability3 = 0.9 / current_probability3
      end
  
      case current_probability3
      when 0.003921569000000000..0.287225000000000000
        puts "I'm confident it is not [ #{current_information3} ] as its only #{current_probability3}."
      when 0.287225000000000001..0.522225000000000000
        puts "I'm less unconfident it is not [ #{current_information3} ] as its only #{current_probability3}."
      when 0.522225000000000001..0.756112500000000000
        puts "I'm almost sure it is [ #{current_information3} ] because it has #{current_probability3}."
      when 0.756112500000000001..0.999999999999999999
        puts "I'm sure it is [ #{current_information3} ] after all it has #{current_probability3}."

      else
        puts "The probability is either to low or to large, so I can't determine exactly."
      end
  
      current_probability3 = current_probability3 + current_probability3
  
      File.write("data/statistics/probability/first_probability/current_probability3.txt", "#{current_probability3}")
      File.write("data/statistics/label/first_information/current_information3.txt",            current_information3)

      ## Fourth Merit
      current_probability4 = File.read("data/statistics/probability/second_probability/current_probability4.txt").to_f
      current_information4 = File.read("data/statistics/label/second_information/current_information4.txt")

      if current_probability4 > 0.999999999999999999
        current_probability4 = 0.9 / current_probability4
      end
  
      case current_probability4
      when 0.003921569000000000..0.287225000000000000
        puts "I'm confident it is not [ #{current_information4} ] as its only #{current_probability4}."
      when 0.287225000000000001..0.522225000000000000
        puts "I'm less unconfident it is not [ #{current_information4} ] as its only #{current_probability4}."
      when 0.522225000000000001..0.756112500000000000
        puts "I'm almost sure it is [ #{current_information4} ] because it has #{current_probability4}."
      when 0.756112500000000001..0.999999999999999999
        puts "I'm sure it is [ #{current_information4} ] after all it has #{current_probability4}."

      else
        puts "The probability is either to low or to large, so I can't determine exactly."
      end
  
      current_probability4 = current_probability4 + current_probability4
  
      File.write("data/statistics/probability/first_probability/current_probability4.txt", "#{current_probability4}")
      File.write("data/statistics/label/first_information/current_information4.txt",            current_information4)

      ## Fifth Merit
      current_probability5 = File.read("data/statistics/probability/second_probability/current_probability5.txt").to_f
      current_information5 = File.read("data/statistics/label/second_information/current_information5.txt")

      if current_probability5 > 0.999999999999999999
        current_probability5 = 0.9 / current_probability5
      end
  
      case current_probability5
      when 0.003921569000000000..0.287225000000000000
        puts "I'm confident it is not [ #{current_information5} ] as its only #{current_probability5}."
      when 0.287225000000000001..0.522225000000000000
        puts "I'm less unconfident it is not [ #{current_information5} ] as its only #{current_probability5}."
      when 0.522225000000000001..0.756112500000000000
        puts "I'm almost sure it is [ #{current_information5} ] because it has #{current_probability5}."
      when 0.756112500000000001..0.999999999999999999
        puts "I'm sure it is [ #{current_information5} ] after all it has #{current_probability5}."

      else
        puts "The probability is either to low or to large, so I can't determine exactly."
      end
  
      current_probability5 = current_probability5 + current_probability5
  
      File.write("data/statistics/probability/first_probability/current_probability5.txt", "#{current_probability5}")
      File.write("data/statistics/label/first_information/current_information5.txt",            current_information5)

      ## Sixth Merit
      current_probability6 = File.read("data/statistics/probability/second_probability/current_probability6.txt").to_f
      current_information6 = File.read("data/statistics/label/second_information/current_information5.txt")

      if current_probability5 > 0.999999999999999999
        current_probability5 = 0.9 / current_probability5
      end
  
      case current_probability6
      when 0.003921569000000000..0.287225000000000000
        puts "I'm confident it is not [ #{current_information6} ] as its only #{current_probability5}."
      when 0.287225000000000001..0.522225000000000000
        puts "I'm less unconfident it is not [ #{current_information6} ] as its only #{current_probability5}."
      when 0.522225000000000001..0.756112500000000000
        puts "I'm almost sure it is [ #{current_information6} ] because it has #{current_probability5}."
      when 0.756112500000000001..0.999999999999999999
        puts "I'm sure it is [ #{current_information6} ] after all it has #{current_probability5}."

      else
        puts "The probability is either to low or to large, so I can't determine exactly."
      end
  
      current_probability6 = current_probability6 + current_probability6
  
      File.write("data/statistics/probability/first_probability/current_probability5.txt", "#{current_probability6}")
      File.write("data/statistics/label/first_information/current_information6.txt",            current_information5)

      ## Seventh Merit
      current_probability7 = File.read("data/statistics/probability/second_probability/current_probability7.txt").to_f
      current_information7 = File.read("data/statistics/label/second_information/current_information7.txt")

      if current_probability7 > 0.999999999999999999
        current_probability7 = 0.9 / current_probability7
      end
  
      case current_probability7
      when 0.003921569000000000..0.287225000000000000
        puts "I'm confident it is not [ #{current_information7} ] as its only #{current_probability5}."
      when 0.287225000000000001..0.522225000000000000
        puts "I'm less unconfident it is not [ #{current_information7} ] as its only #{current_probability5}."
      when 0.522225000000000001..0.756112500000000000
        puts "I'm almost sure it is [ #{current_information7} ] because it has #{current_probability5}."
      when 0.756112500000000001..0.999999999999999999
        puts "I'm sure it is [ #{current_information7} ] after all it has #{current_probability5}."

      else
        puts "The probability is either to low or to large, so I can't determine exactly."
      end
  
      current_probability7 = current_probability7 + current_probability7
  
      File.write("data/statistics/probability/first_probability/current_probability7.txt", "#{current_probability7}")
      File.write("data/statistics/label/first_information/current_probability7.txt",            current_probability7)
    end

    def self.dynamic_reward_allocation
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

      if    current_reward_structure == l1_reasses; gain
      elsif current_reward_structure == l2_reasses; 2.times do gain end
      elsif current_reward_structure == l3_reasses; 3.times do gain end
      elsif current_reward_structure == l4_reasses; 4.times do gain end
      else
        gain
      end
    end

    def self.dynamic_guillotine_allocation
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

      if    current_reward_structure == l1_reasses; loss
      elsif current_reward_structure == l2_reasses; 2.times do loss end
      elsif current_reward_structure == l3_reasses; 3.times do loss end
      elsif current_reward_structure == l4_reasses; 4.times do loss end
      else
        loss
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

      if    current_mode == "deposit"; dynamic_reward_allocation
      elsif current_mode == "extract"; dynamic_guillotine_allocation
      else
        dynamic_guillotine_allocation
      end
    end

    ##############################################################################################
    #                               Non Real Time Demerite Scaling                               #
    ##############################################################################################
    def self.batailledemeritto_hardcore # Demeritobataye
      system("clear")
  
      puts "Démérite De Bataille / Sento no demeritto"
      puts "You've been taken through the rafters! Your life vessles are now legally forfeit."

      sleep(1.5)

      print "HP: #{$player_hp} => "
      $player_hp     = $player_hp     * $current_probability1
      puts "#{$player_hp.round}"
  
      print "ATK: #{$player_atk} => "
      $player_atk    = $player_atk     * $current_probability2
      puts "#{$player_atk.round}"
  
      print "DEF: #{$player_def} => "
      $player_def     = $player_def     * $current_probability3
      puts "#{$player_def.round}"
  
      print "HEAL: #{$player_heal} => "
      $player_heal     = $player_heal     * $current_probability4
      puts "#{$player_heal.round}"

      print "TRUST: #{$player_tru} => "
      $player_tru     = $player_tru     * $current_probability5
      puts "#{$player_tru.round}"

      print "SANITY: #{$player_san} => "
      $player_san     = $player_san     * $current_probability6
      puts "#{$player_san.round}"
    end

    def self.batailledemeritto_difficult # Demeritobataye
      system("clear")
  
      puts "Démérite De Bataille / Sento no demeritto"
      puts "You've been taken through the rafters! Your life vessles are now legally forfeit."

      sleep(1.5)

      print "HP: #{$player_hp} => "
      $player_hp     = $player_hp     * 0.27
      puts "#{$player_hp.round}"
  
      print "ATK: #{$player_atk} => "
      $player_atk    = $player_atk     * 0.27
      puts "#{$player_atk.round}"
  
      print "DEF: #{$player_def} => "
      $player_def     = $player_def     * 0.27
      puts "#{$player_def.round}"
  
      print "HEAL: #{$player_heal} => "
      $player_heal     = $player_heal     * 0.27
      puts "#{$player_heal.round}"

      print "TRUST: #{$player_tru} => "
      $player_tru     = $player_tru     * 0.27
      puts "#{$player_tru.round}"

      print "SANITY: #{$player_san} => "
      $player_san     = $player_san     * 0.27
      puts "#{$player_san.round}"
    end

    def self.batailledemeritto_intermediate # Demeritobataye
      system("clear")
  
      puts "Démérite De Bataille / Sento no demeritto"
      puts "You've been taken through the rafters! Your life vessles are now legally forfeit."

      sleep(1.5)

      print "HP: #{$player_hp} => "
      $player_hp     = $player_hp     * 0.47
      puts "#{$player_hp.round}"
  
      print "ATK: #{$player_atk} => "
      $player_atk    = $player_atk     * 0.47
      puts "#{$player_atk.round}"
  
      print "DEF: #{$player_def} => "
      $player_def     = $player_def     * 0.47
      puts "#{$player_def.round}"
  
      print "HEAL: #{$player_heal} => "
      $player_heal     = $player_heal     * 0.47
      puts "#{$player_heal.round}"

      print "TRUST: #{$player_tru} => "
      $player_tru     = $player_tru     * 0.47
      puts "#{$player_tru.round}"

      print "SANITY: #{$player_san} => "
      $player_san     = $player_san     * 0.47
      puts "#{$player_san.round}"
    end
    
    def self.batailledemeritto_adv_beginner # Demeritobataye
      system("clear")
  
      puts "Démérite De Bataille / Sento no demeritto"
      puts "You've been taken through the rafters! Your life vessles are now legally forfeit."

      sleep(1.5)

      print "HP: #{$player_hp} => "
      $player_hp     = $player_hp     * 0.54
      puts "#{$player_hp.round}"
  
      print "ATK: #{$player_atk} => "
      $player_atk    = $player_atk     * 0.54
      puts "#{$player_atk.round}"
  
      print "DEF: #{$player_def} => "
      $player_def     = $player_def     * 0.54
      puts "#{$player_def.round}"
  
      print "HEAL: #{$player_heal} => "
      $player_heal     = $player_heal     * 0.54
      puts "#{$player_heal.round}"

      print "TRUST: #{$player_tru} => "
      $player_tru     = $player_tru     * 0.54
      puts "#{$player_tru.round}"

      print "SANITY: #{$player_san} => "
      $player_san     = $player_san     * 0.54
      puts "#{$player_san.round}"
    end
    
    def self.batailledemeritto_rookie # Demeritobataye
      system("clear")
  
      puts "Démérite De Bataille / Sento no demeritto"
      puts "You've been taken through the rafters! Your life vessles are now legally forfeit."

      sleep(1.5)

      print "HP: #{$player_hp} => "
      $player_hp     = $player_hp     * 0.67
      puts "#{$player_hp.round}"
  
      print "ATK: #{$player_atk} => "
      $player_atk    = $player_atk     * 0.67
      puts "#{$player_atk.round}"
  
      print "DEF: #{$player_def} => "
      $player_def     = $player_def     * 0.67
      puts "#{$player_def.round}"
  
      print "HEAL: #{$player_heal} => "
      $player_heal     = $player_heal     * 0.67
      puts "#{$player_heal.round}"

      print "TRUST: #{$player_tru} => "
      $player_tru     = $player_tru     * 0.67
      puts "#{$player_tru.round}"

      print "SANITY: #{$player_san} => "
      $player_san     = $player_san     * 0.67
      puts "#{$player_san.round}"
    end
  end
end