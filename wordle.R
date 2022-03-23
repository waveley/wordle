
str_vec <- function(word){
  str_vec <- NULL
  
for (i in 1:str_length(word)) {
    str_vec[i] <- substr(word, i, i)
  }
  return(str_vec)
}

wordle <- function(word){
  
  i <- 0
  
  letter_bank <- 
    c("a", "b", "c", "d", "e", "f", "g", "h",
      "i", "j", "k", "l", "m", "n", "o", "p", 
      "q", "r", "s", "t", "u", "v", "w", "x", 
      "y","z")
  
  vec_word <- str_vec(word)
  
  
  while (i < 6) {
    i = i + 1
    prompt = paste("This is round", i, ". Your guess, please: ")
    guess <- readline(prompt = prompt)
    
    if (str_length(guess) > 5) {
      prompt = paste("A five-letter guess, please: ")
      guess <- readline(prompt = prompt)
    }
    
    if (guess == word) {
      winning_message <- paste("Congratulations, you've guessed the word! You did this in ", i, "rounds.")
      print(wiinning_message)
      return()
    }
    
    if (guess != word) {
      for (i in 1:str_length(guess)) {
        vec_guess <- str_vec(guess)
        cur_char <- vec_guess[i]
        
        
      }
    }
    
  }
  
}

test <- "abc"



str_vec(test)














