readUserInput <- function() {
    userChoice = ""

    while (userChoice != "p" && userChoice != "r" && userChoice != "s") {
        cat("Please insert 'p' for paper, 'r' for 'rock' or 's' for scissors: ");        
        userChoice <- readLines("stdin", n=1);
    }

    return(userChoice);
}

print("Jankenpo!");
print("=========");
userInput = readUserInput();

