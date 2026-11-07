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

  puts current_phrase
