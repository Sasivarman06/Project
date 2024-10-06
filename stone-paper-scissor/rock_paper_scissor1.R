
computer_choice <- function(){
  vec <- c("rock", "paper", "scissor")
  random_choice <- sample(vec,1)
  return(random_choice)
}


my_choice <- function(){
  user_input <- readline(prompt = "Enter a option - rock/paper/scissor: ")
  
}

determine_winner <- function(){ 
  my_choice <- my_choice()
  computer_choice <- computer_choice()
  if(!(my_choice %in% c("rock","paper","scissor"))){
    print("INVALID OPTION")
    return()
  }
  cat("Computer choice: " ,computer_choice, "\n")
  
  if ((my_choice == "rock" && computer_choice == "scissor") || 
    (my_choice == "scissor" && computer_choice == "paper") ||
    (my_choice == "paper" && computer_choice == "rock" )){
    print("You won!")
  }else if (my_choice == computer_choice){ 
    print("Match tied")
  }else{
    print("You lost!,Computer won")
  } 

}


play_game <- function(){
  determine_winner()
  play_again <- readline(prompt = "play again - y[yes]/n[no]: ")
  if (play_again == "y"){
   return(play_game())
  } else if(play_again == "n"){ 
    print("Thanks for playing")
  } else {
    print("Not a valid option")
  }
    
}

play_game()

