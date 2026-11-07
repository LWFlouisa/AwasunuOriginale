#alphabet = [
#            "A", "B", "C", "D", "E",
#            "F", "G", "H", "J", "K",
#            "L", "M", "N",
#
#            "O", "P", "Q", "R", "S",
#            "T", "U", "V", "W", "X",
#            "Y", "Z", ".",
#].to_s

word_list = File.readlines("_data/words/word_options.txt")

         #                                          1    1    1    1    1
         #  1    2    3    4    5    6    7    8    9    0    1    2    3 
keys1 = [ 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M',

         # 1    1    1    1    1    1    2    2    2    2    2    2    2
         # 4    5    6    7    8    9    0    1    2    3    4    5    6
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

    puts "Sister order have #{guesses} remaining guesses."
  end

  puts word_prompt.tr alph_1, alph_2

  enemy_guesses = [
    [["EPEE", "EPEE",  "EPEE"],
     ["EPEE", "EPEE",  "ISHI"],
     ["EPEE", "EPEE", "BACHE"]],

    [["ISHI", "ISHI",  "EPEE"],
     ["ISHI", "ISHI",  "ISHI"],
     ["ISHI", "ISHI", "BACHE"]],

    [["BACHE", "BACHE",  "EPEE"],
     ["BACHE", "BACHE",  "ISHI"],
     ["BACHE", "BACHE", "BACHE"]],
  ]

  row_options = [0, 1, 2]
  col_options = [0, 1, 2]
  arr_options = [0, 1, 2]
  
  cur_row = row_options.sample
  cur_col = col_options.sample
  cur_arr = arr_options.sample
  
  new_e_guess = enemy_guesses[cur_row][cur_col][cur_arr]

  puts "Sister order has guessed: #{new_e_guess}."

  if new_e_guess == ai_choice
    puts "Sister Order has correctly guessed the chosen word."

    sleep(1.5)

    abort
  else
    puts "Sister Order guessed incorrectly!"

    guesses = guesses + 1

    sleep(1.5)
  end
end