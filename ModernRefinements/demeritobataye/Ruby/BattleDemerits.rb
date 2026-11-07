module Demeritobataye
  class DefeatSequences
    def self.lingua_de_ange
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
  
      $current_label1       = current_label1
      $current_definition1  = current_definition1
      $current_probability1 = current_probability1 + current_probability1
      $current_information1 = "#{current_label1} #{current_definition1}"

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
  
      $current_label2       = current_label2
      $current_definition2  = current_definition2
      $current_probability2 = current_probability2 + current_probability2
      $current_information2 = "#{current_label2} #{current_definition2}"

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
  
      $current_label3       = current_label3
      $current_definition3  = current_definition3
      $current_probability3 = current_probability3 + current_probability3
      $current_information3 = "#{current_label3} #{current_definition3}"

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
  
      $current_label4       = current_label4
      $current_definition4  = current_definition4
      $current_probability4 = current_probability4 + current_probability4
      $current_information4 = "#{current_label4} #{current_definition4}"

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
  
      $current_label5       = current_label5
      $current_definition5  = current_definition5
      $current_probability5 = current_probability5 + current_probability5
      $current_information5 = "#{current_label5} #{current_definition5}"

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
  
      $current_label6       = current_label6
      $current_definition6  = current_definition6
      $current_probability6 = current_probability6 + current_probability6
      $current_information6 = "#{current_label6} #{current_definition6}"
  
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
  
      $current_label7       = current_label7
      $current_definition7  = current_definition7
      $current_probability7 = current_probability7 + current_probability7
      $current_information7 = "#{current_label7} #{current_definition7}"
    end

    def self.reasses    
      if $current_probability1 > 0.999999999999999999
        $current_probability1 = 0.9 / $current_probability1
      end

      if $current_probability2 > 0.999999999999999999
        $current_probability2 = 0.9 / $current_probability2
      end

      if $current_probability3 > 0.999999999999999999
        $current_probability3 = 0.9 / $current_probability3
      end

      if $current_probability4 > 0.999999999999999999
        $current_probability4 = 0.9 / $current_probability4
      end

      if $current_probability5 > 0.999999999999999999
        $current_probability5 = 0.9 / $current_probability5
      end

      if $current_probability6 > 0.999999999999999999
        $current_probability6 = 0.9 / $current_probability6
      end

      if $current_probability7 > 0.999999999999999999
        $current_probability7 = 0.9 / $current_probability7
      end
  
      case $current_probability1
      when 0.003921569000000000..0.287225000000000000
        "I'm confident it is not [ #{$current_information1} ] because it has #{$current_probability1}."
      when 0.287225000000000001..0.522225000000000000
        "I'm less unconfident it is not [ #{$current_information1} ] because it has #{$current_probability1}."
      when 0.522225000000000001..0.756112500000000000
        "I'm almost sure it is [ #{$current_information1} ] because it has #{$current_probability1}."
      when 0.756112500000000001..0.999999999999999999
        "I'm sure it is [ #{$current_information1} ] because it has #{$current_probability1}."

      else
        "The probability is either to low or to large, so I can't determine exactly."
      end
  
      $current_probability1 = $current_probability1 + $current_probability1

      case $current_probability2
      when 0.003921569000000000..0.287225000000000000
        "I'm confident it is not [ #{$current_information2} ] because it has #{$current_probability2}."
      when 0.287225000000000001..0.522225000000000000
        "I'm less unconfident it is not [ #{$current_information2} ] because it has #{$current_probability2}."
      when 0.522225000000000001..0.756112500000000000
        "I'm almost sure it is [ #{$current_information2} ] because it has #{$current_probability2}."
      when 0.756112500000000001..0.999999999999999999
        "I'm sure it is [ #{$current_information2} ] because it has #{$current_probability2}."

      else
        "The probability is either to low or to large, so I can't determine exactly."
      end
  
      $current_probability2 = $current_probability2 + $current_probability2

      case $current_probability3
      when 0.003921569000000000..0.287225000000000000
        "I'm confident it is not [ #{$current_information3} ] because it has #{$current_probability3}."
      when 0.287225000000000001..0.522225000000000000
        "I'm less unconfident it is not [ #{$current_information3} ] because it has #{$current_probability3}."
      when 0.522225000000000001..0.756112500000000000
        "I'm almost sure it is [ #{$current_information3} ] because it has #{$current_probability3}."
      when 0.756112500000000001..0.999999999999999999
        "I'm sure it is [ #{$current_information3} ] because it has #{$current_probability3}."

      else
        "The probability is either to low or to large, so I can't determine exactly."
      end
  
      $current_probability3 = $current_probability3 + $current_probability3

      case $current_probability4
      when 0.003921569000000000..0.287225000000000000
        "I'm confident it is not [ #{$current_information4} ] because it has #{$current_probability4}."
      when 0.287225000000000001..0.522225000000000000
        "I'm less unconfident it is not [ #{$current_information4} ] because it has #{$current_probability4}."
      when 0.522225000000000001..0.756112500000000000
        "I'm almost sure it is [ #{$current_information4} ] because it has #{$current_probability4}."
      when 0.756112500000000001..0.999999999999999999
        "I'm sure it is [ #{$current_information4} ] because it has #{$current_probability4}."

      else
        "The probability is either to low or to large, so I can't determine exactly."
      end
  
      $current_probability4 = $current_probability4 + $current_probability4  

      case $current_probability5
      when 0.003921569000000000..0.287225000000000000
        "I'm confident it is not [ #{$current_information5} ] because it has #{$current_probability5}."
      when 0.287225000000000001..0.522225000000000000
        "I'm less unconfident it is not [ #{$current_information5} ] because it has #{$current_probability5}."
      when 0.522225000000000001..0.756112500000000000
        "I'm almost sure it is [ #{$current_information5} ] because it has #{$current_probability5}."
      when 0.756112500000000001..0.999999999999999999
        "I'm sure it is [ #{$current_information5} ] because it has #{$current_probability5}."

      else
        "The probability is either to low or to large, so I can't determine exactly."
      end
  
      $current_probability5 = $current_probability5 + $current_probability5

      case $current_probability6
      when 0.003921569000000000..0.287225000000000000
        "I'm confident it is not [ #{$current_information6} ] because it has #{$current_probability6}."
      when 0.287225000000000001..0.522225000000000000
        "I'm less unconfident it is not [ #{$current_information6} ] because it has #{$current_probability6}."
      when 0.522225000000000001..0.756112500000000000
        "I'm almost sure it is [ #{$current_information6} ] because it has #{$current_probability6}."
      when 0.756112500000000001..0.999999999999999999
        "I'm sure it is [ #{$current_information6} ] because it has #{$current_probability6}."

      else
        "The probability is either to low or to large, so I can't determine exactly."
      end
  
      $current_probability6 = $current_probability6 + $current_probability6

      case $current_probability7
      when 0.003921569000000000..0.287225000000000000
        "I'm confident it is not [ #{$current_information7} ] because it has #{$current_probability7}."
      when 0.287225000000000001..0.522225000000000000
        "I'm less unconfident it is not [ #{$current_information7} ] because it has #{$current_probability7}."
      when 0.522225000000000001..0.756112500000000000
        "I'm almost sure it is [ #{$current_information7} ] because it has #{$current_probability7}."
      when 0.756112500000000001..0.999999999999999999
        "I'm sure it is [ #{$current_information7} ] because it has #{$current_probability7}."

      else
        "The probability is either to low or to large, so I can't determine exactly."
      end
  
      $current_probability7 = $current_probability7 + $current_probability7

      if $current_probability1 > 0.999999999999999999
        $current_probability1 = 0.9 / $current_probability1
      end

      if $current_probability2 > 0.999999999999999999
        $current_probability2 = 0.9 / $current_probability2
      end

      if $current_probability3 > 0.999999999999999999
        $current_probability3 = 0.9 / $current_probability3
      end

      if $current_probability4 > 0.999999999999999999
        $current_probability4 = 0.9 / $current_probability4
      end

      if $current_probability5 > 0.999999999999999999
        $current_probability5 = 0.9 / $current_probability5
      end

      if $current_probability6 > 0.999999999999999999
        $current_probability6 = 0.9 / $current_probability6
      end

      if $current_probability7 > 0.999999999999999999
        $current_probability7 = 0.9 / $current_probability7
      end
    end

    def self.reconsider
      if $current_probability1 > 0.999999999999999999
        $current_probability1 = 0.9 / $current_probability1
      end

      if $current_probability2 > 0.999999999999999999
        $current_probability2 = 0.9 / $current_probability2
      end

      if $current_probability3 > 0.999999999999999999
        $current_probability3 = 0.9 / $current_probability3
      end

      if $current_probability4 > 0.999999999999999999
        $current_probability4 = 0.9 / $current_probability4
      end

      if $current_probability5 > 0.999999999999999999
        $current_probability5 = 0.9 / $current_probability5
      end

      if $current_probability6 > 0.999999999999999999
        $current_probability6 = 0.9 / $current_probability6
      end

      if $current_probability7 > 0.999999999999999999
        $current_probability7 = 0.9 / $current_probability7
      end
  
      case $current_probability1
      when 0.003921569000000000..0.287225000000000000
        "I'm confident it is not [ #{$current_information1} ] because it has #{$current_probability1}."
      when 0.287225000000000001..0.522225000000000000
        "I'm less unconfident it is not [ #{$current_information1} ] because it has #{$current_probability1}."
      when 0.522225000000000001..0.756112500000000000
        "I'm almost sure it is [ #{$current_information1} ] because it has #{$current_probability1}."
      when 0.756112500000000001..0.999999999999999999
        "I'm sure it is [ #{$current_information1} ] because it has #{$current_probability1}."

      else
        "The probability is either to low or to large, so I can't determine exactly."
      end
  
      $current_probability1 = $current_probability1 * 0.15

      case $current_probability
      when 0.003921569000000000..0.287225000000000000
        "I'm confident it is not [ #{$current_information2} ] because it has #{$current_probability2}."
      when 0.287225000000000001..0.522225000000000000
        "I'm less unconfident it is not [ #{$current_information2} ] because it has #{$current_probability2}."
      when 0.522225000000000001..0.756112500000000000
        "I'm almost sure it is [ #{$current_information2} ] because it has #{$current_probability2}."
      when 0.756112500000000001..0.999999999999999999
        "I'm sure it is [ #{$current_information2} ] because it has #{$current_probability2}."

      else
        "The probability is either to low or to large, so I can't determine exactly."
      end
  
      $current_probability2 = $current_probability2 * 0.15

      case $current_probability3
      when 0.003921569000000000..0.287225000000000000
        "I'm confident it is not [ #{$current_information3} ] because it has #{$current_probability3}."
      when 0.287225000000000001..0.522225000000000000
        "I'm less unconfident it is not [ #{$current_information3} ] because it has #{$current_probability3}."
      when 0.522225000000000001..0.756112500000000000
        "I'm almost sure it is [ #{$current_information3} ] because it has #{$current_probability3}."
      when 0.756112500000000001..0.999999999999999999
        "I'm sure it is [ #{$current_information3} ] because it has #{$current_probability3}."

      else
        "The probability is either to low or to large, so I can't determine exactly."
      end
  
      $current_probability3 = $current_probability3 * 0.15

      case $current_probability4
      when 0.003921569000000000..0.287225000000000000
        "I'm confident it is not [ #{$current_information4} ] because it has #{$current_probability4}."
      when 0.287225000000000001..0.522225000000000000
        "I'm less unconfident it is not [ #{$current_information4} ] because it has #{$current_probability4}."
      when 0.522225000000000001..0.756112500000000000
        "I'm almost sure it is [ #{$current_information4} ] because it has #{$current_probability4}."
      when 0.756112500000000001..0.999999999999999999
        "I'm sure it is [ #{$current_information4} ] because it has #{$current_probability4}."

      else
        "The probability is either to low or to large, so I can't determine exactly."
      end
  
      $current_probability4 = $current_probability4 * 0.15

      case $current_probability5
      when 0.003921569000000000..0.287225000000000000
        "I'm confident it is not [ #{$current_information5} ] because it has #{$current_probability5}."
      when 0.287225000000000001..0.522225000000000000
        "I'm less unconfident it is not [ #{$current_information5} ] because it has #{$current_probability5}."
      when 0.522225000000000001..0.756112500000000000
        "I'm almost sure it is [ #{$current_information5} ] because it has #{$current_probability5}."
      when 0.756112500000000001..0.999999999999999999
        "I'm sure it is [ #{$current_information5} ] because it has #{$current_probability5}."

      else
        "The probability is either to low or to large, so I can't determine exactly."
      end
  
      $current_probability5 = $current_probability5 * 0.15

      case $current_probability6
      when 0.003921569000000000..0.287225000000000000
        "I'm confident it is not [ #{$current_information6} ] because it has #{$current_probability6}."
      when 0.287225000000000001..0.522225000000000000
        "I'm less unconfident it is not [ #{$current_information6} ] because it has #{$current_probability6}."
      when 0.522225000000000001..0.756112500000000000
        "I'm almost sure it is [ #{$current_information6} ] because it has #{$current_probability6}."
      when 0.756112500000000001..0.999999999999999999
        "I'm sure it is [ #{$current_information6} ] because it has #{$current_probability6}."

      else
        "The probability is either to low or to large, so I can't determine exactly."
      end
  
      $current_probability6 = $current_probability6 * 0.15

      case $current_probability7
      when 0.003921569000000000..0.287225000000000000
        "I'm confident it is not [ #{$current_information7} ] because it has #{$current_probability7}."
      when 0.287225000000000001..0.522225000000000000
        "I'm less unconfident it is not [ #{$current_information7} ] because it has #{$current_probability7}."
      when 0.522225000000000001..0.756112500000000000
        "I'm almost sure it is [ #{$current_information7} ] because it has #{$current_probability7}."
      when 0.756112500000000001..0.999999999999999999
        "I'm sure it is [ #{$current_information7} ] because it has #{$current_probability7}."

      else
        "The probability is either to low or to large, so I can't determine exactly."
      end
  
      $current_probability7 = $current_probability7 * $current_probability7
  
      if $current_probability1 > 0.999999999999999999
        $current_probability1 = 0.9 / $current_probability1
      end

      if $current_probability2 > 0.999999999999999999
        $current_probability2 = 0.9 / $current_probability2
      end

      if $current_probability3 > 0.999999999999999999
        $current_probability3 = 0.9 / $current_probability3
      end

      if $current_probability4 > 0.999999999999999999
        $current_probability4 = 0.9 / $current_probability4
      end

      if $current_probability5 > 0.999999999999999999
        $current_probability5 = 0.9 / $current_probability5
      end

      if $current_probability6 > 0.999999999999999999
        $current_probability6 = 0.9 / $current_probability6
      end

      if $current_probability7 > 0.999999999999999999
        $current_probability7 = 0.9 / $current_probability7
      end
    end

    def dynamic_reward_allocation
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

      if    current_reward_structure == l1_reasses; reasses
      elsif current_reward_structure == l2_reasses; 2.times do reasses end
      elsif current_reward_structure == l3_reasses; 3.times do reasses end
      elsif current_reward_structure == l4_reasses; 4.times do reasses end
      else
        reasses
      end
    end

    def dynamic_guillotine_allocation
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

      if    current_reward_structure == l1_reasses; reconsider
      elsif current_reward_structure == l2_reasses; 2.times do reconsider end
      elsif current_reward_structure == l3_reasses; 3.times do reconsider end
      elsif current_reward_structure == l4_reasses; 4.times do reconsider end
      else
        reconsider
      end
    end

    def dynamic_mode_switcher
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
    
    def self.take_down_rafters
      require "NeoPathfinding"
 
      a = Demeritobataye::DefeatSequences.lingua_de_ange
      b = Demeritobataye::DefeatSequences.lingua_de_ange
      c = Demeritobataye::DefeatSequences.lingua_de_ange
 
      2.times do
        get_statistics(:quip1,    "Vous sont mangeon pour te Vampidu.",
                       :quip2,    "Vous sont mangeon pour ta Vampida.",
                       :quip3, "Vous sont mangeon pour deso Vampidos.")
    
                       dynamic_reward_allocation
      end
  
      current_defeat_probability = $current_probability
  
      current_defeat_probability = sore_float($current_probability > 0.8) do
        puts "Your battle reward: [ #{$current_defintion} ] was unsuccessfully mitigated."

        ## Enemy is distracted by something else.    
        Demeritobataye::DefeatSequences.batailledemeritto
      end

      current_defeat_probability = shikashi_float(current_defeat_probability, $current_probability < 0.2) do
        puts "Your battle reward: [ #{$current_defintion} ] was not unsuccessfully mitigated."
    
        #$current_probability = $current_probability * $current_probability
   
        ## Battle Mechanics right here.
        Demeritobataye::DefeatSequences.batailledemeritto
      end
      
      current_defeat_probability = sonota_float(current_defeat_probability) do
        puts "Your battle reward: [ #{$current_defintion} ] was partially unsuccessfully mitigated."

        ## Battle Mechanics focused on player advantage.
        Demeritobataye::DefeatSequences.batailledemeritto
      end
    end
  end
end