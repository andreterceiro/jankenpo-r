# Reading the user choice
readUserChoice <- function() {
    userChoice = ""

    while (userChoice != "p" && userChoice != "r" && userChoice != "s") {
        cat("Please insert 'p' for paper, 'r' for 'rock' or 's' for scissors: ");        
        userChoice <- readLines("stdin", n=1);
    }

    return(userChoice);
}

readComputerChoice <- function() {
    computerChoice <- as.integer(runif(n=1, min=1, max=3.9999999999))

    print (computerChoice)
    if (computerChoice == 1) {
        return("paper");
    } else if (computerChoice == 2) {
        return("rock");
    }
    return("scissors");
}

getCompleteStringOfChoice <- function(choice) {
    if (choice == "p") {
        return("paper");
    } else if (choice == "r") {
        return("rock");
    }
    return("scissors");
}

print("Jankenpo!");
print("=========");
userChoice = getCompleteStringOfChoice(readUserChoice());
computerChoice = readComputerChoice();

if ((userChoice == "paper" && computerChoice == "rock") || (userChoice == "rock" && computerChoice == "scissors") || (userChoice == "scissors" && computerChoice == "paper")) {
    print("You win!")
} else if (userChoice == computerChoice) {
    print("Draw!")
} else {
    print("Computer win!")
}

print(paste("User choice: ",  userChoice))
print(paste("Computer choice: ", computerChoice))