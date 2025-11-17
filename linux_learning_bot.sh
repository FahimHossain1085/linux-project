#!/bin/bash

# ========== LINUX LEARNING BOT ==========
# Author: Fahim Hossain
# Description: Interactive Linux learning assistant
# ========================================



# Function to display banner
show_banner() {
    clear
    echo "===================================="
    echo "   🐧 Welcome to Linux Learning Bot  "
    echo "===================================="
    echo
}

# Function to greet user
greet_user() {
    echo -n "Enter your name: "
    read name
    echo "Greetings, $name!"
    
    echo "Press Enter to start your Linux Journey"
    read
    main_menu
    
}

# ---------- FUNCTION: Teaching linux commands ----------
teach_basic_commands() {
    clear
    echo "========== BASIC LINUX COMMANDS =========="
    echo
    echo "What is Linux Shell?"
    echo "-------------------------------------------"
    echo "The Linux shell is a command-line interface (CLI) that allows you to interact"
    echo "with the operating system by typing commands. Common shells include bash, zsh,"
    echo "and sh. It's where you run commands like 'ls', 'pwd', or write shell scripts."
    
    echo
    echo "-------------------------------------------"
    echo "Command Explanations"
    echo "-------------------------------------------"
    echo

    echo "pwd (Print Working Directory)"
    echo " > Purpose: Shows your current directory location."
    echo " > Syntax: pwd"
    echo " > Example: pwd → /home/user/Documents"
    echo

    echo "cd (Change Directory)"
    echo " > Purpose: Moves you into another directory."
    echo " > Syntax: cd <directory_name>"
    echo " > Example: cd /home/user/Desktop"
    echo

    echo "ls (List)"
    echo " > Purpose: Lists files and folders in the current directory."
    echo " > Syntax: ls [options]"
    echo " > Example: ls -l → lists details like permissions, owner, size."
    echo

   

    echo "cat (Concatenate and View Files)"
    echo " > Purpose: Displays the content of files on the terminal."
    echo " > Syntax: cat <filename>"
    echo " > Example: cat notes.txt → shows the content of notes.txt"
    echo

    echo "man (Manual Pages)"
    echo " > Purpose: Opens the manual/help page for any command."
    echo " > Syntax: man <command>"
    echo " > Example: man ls → shows documentation for ls"
    echo

    echo "help (Built-in Shell Help)"
    echo " > Purpose: Shows help information for shell built-in commands."
    echo " > Syntax: help <command>"
    echo " > Example: help cd → shows help info about cd"
    echo

  
    
    echo "-------------------------------------------"
    echo "Press ENTER to start a short quiz or type 'menu' to return to main menu"

    while true; do
        read cmd
        
        if [[ -z $cmd ]]; then
            quiz_basic_commands
            break

        elif [[ $cmd == "menu" ]]; then
            main_menu
            break

        else
            echo "Invalid input. Please press ENTER or type 'menu'."
        fi
    done
}

# ---------- FUNCTION: Teaching File Operation ----------
teach_file_operations() {
    clear
    echo "========== BASIC FILE OPERATIONS =========="
    echo
    echo "touch"
    echo " > Purpose: Creates a new empty file or updates a file’s timestamp."
    echo " > Syntax: touch <filename>"
    echo " > Example: touch notes.txt"
    echo
    echo "mkdir (Make Directory)"
    echo " > Purpose: Creates a new directory."
    echo " > Syntax: mkdir <directory_name>"
    echo " > Example: mkdir projects"
    echo
    echo "cp (Copy)"
    echo " > Purpose: Copies files or directories."
    echo " > Syntax: cp <source> <destination>"
    echo " > Example: cp file.txt backup.txt"
    echo
    echo "mv (Move / Rename)"
    echo " > Purpose: Moves or renames files or directories."
    echo " > Syntax: mv <source> <destination>"
    echo " > Example: mv old.txt new.txt"
    echo
    echo "rm (Remove)"
    echo " > Purpose: Deletes files or directories."
    echo " > Syntax: rm <filename>"
    echo " > Example: rm old.txt"
    echo " Be careful! Deleted files usually cannot be recovered."
    echo
    echo "-------------------------------------------"
      echo "Press ENTER to start a short quiz or type 'menu' to return to main menu"

while true; do
    read cmd
    
    if [[ -z $cmd ]]; then
        
        quiz_file_operations
        break

    elif [[ $cmd == "menu" ]]; then
        main_menu
        break

    else
        echo "Invalid input. Please press ENTER or type 'menu'."
    fi
done
   
}

quiz_file_operations() {
    clear
    echo "========== FILE OPERATIONS QUIZ =========="
    echo "There are total five question. Type the correct answer or"
    echo "Type 'menu' to return to main menu or 'back' to return back to previous menu"
    echo
    score=0

    # Question 1
    echo "1. How do you create a file called 'myfile'?"
    echo -n "Your answer: "
    read ans
    if [[ $ans == "touch myfile" ]]; then
        echo "Correct!"
        ((score++))
    elif [[ $ans == 'menu' ]]; then
        main_menu
        return
    elif [[ $ans == 'back' ]]; then
        teach_file_operations
        return
    else
        echo "Wrong! The correct answer is: touch myfile"
    fi
    echo "Current Score: $score"
    echo

    # Question 2
    echo "Which command creates a new directory named 'docs'?"
    echo -n "Your answer: "
    read ans
    if [[ $ans == "mkdir docs" ]]; then
        echo "Correct!"
        ((score++))
    elif [[ $ans == 'menu' ]]; then
        main_menu
        return
    elif [[ $ans == 'back' ]]; then
        teach_file_operations
        return
    else
        echo "Wrong! The correct answer is: mkdir docs"
    fi
    echo "Current Score: $score"
    echo

    # Question 3
    echo "How do you copy a file named 'report.txt' to 'backup.txt'?"
    echo -n "Your answer: "
    read ans
    if [[ $ans == "cp report.txt backup.txt" ]]; then
        echo "Correct!"
        ((score++))
    elif [[ $ans == 'menu' ]]; then
        main_menu
        return
    elif [[ $ans == 'back' ]]; then
        teach_file_operations
        return
    else
        echo "Wrong! The correct answer is: cp report.txt backup.txt"
    fi
    echo "Current Score: $score"
    echo

    # Question 4
    echo "Using the \"mv\" command, how would you rename a file named \"cat\" to \"dog\"?"
    echo -n "Your answer: "
    read ans
    if [[ $ans == "mv cat dog" ]]; then
        echo "Correct!"
        ((score++))
    elif [[ $ans == 'menu' ]]; then
        main_menu
        return
    elif [[ $ans == 'back' ]]; then
        teach_file_operations
        return
    else
        echo "Wrong! The correct answer is: mv cat dog"
    fi
    echo "Current Score: $score"
    echo

    # Question 5
    echo "How do you delete a file named 'old.txt'?"
    echo -n "Your answer: "
    read ans
    if [[ $ans == "rm old.txt" ]]; then
        echo "Correct!"
        ((score++))
    elif [[ $ans == 'menu' ]]; then
        main_menu
        return
    elif [[ $ans == 'back' ]]; then
        teach_file_operations
        return
    else
        echo "Wrong! The correct answer is: rm old.txt"
    fi
    echo "Current Score: $score"
    echo

    echo "-------------------------------------------"
    echo "Your total score: $score / 5"
    echo "-------------------------------------------"

    if [ $score -eq 5 ]; then
        echo "Excellent! You’ve mastered file operations!"
        echo "Press Enter to Return to main menu..."
        read
        main_menu
    else
        echo "You got some answers wrong. Want to try again?"
        echo "Type 'retry' to retake the quiz or 'menu' to go back to the main menu or 'back to previous menu'"

        while true; do
            read choice
            if [[ $choice == "retry" ]]; then
                quiz_file_operations
                break
            elif [[ $choice == "menu" ]]; then
                main_menu
                break
                elif [[ $choice == "back" ]]; then
                teach_file_operations
                break
            else
                echo "Invalid input"
            fi
        done
    fi
}

quiz_basic_commands() {
    clear
    echo "========== BASIC COMMANDS QUIZ =========="
    echo "There are total six questions. Enter correct answer or"
    echo "Type 'menu' to return to main menu or 'back' to return back to previous menu"
    echo
    score=0

    # Question 1
    echo "1. Which command is used to find the directory you are currently in?"
    echo -n "Your answer: "
    read ans
    if [[ $ans == "pwd" ]]; then
        echo "Correct!"
        ((score++))
    elif [[ $ans == "menu" ]]; then
        main_menu
        return
    elif [[ $ans == "back" ]]; then
        teach_basic_commands
        return
    else
        echo "Wrong! The correct answer is 'pwd'."
    fi
    echo "Current Score: $score"
    echo

    # Question 2
    echo "2. Which command is used to change the current directory?"
    echo -n "Your answer: "
    read ans
    if [[ $ans == "cd" ]]; then
        echo "Correct!"
        ((score++))
    elif [[ $ans == "menu" ]]; then
        main_menu
        return
    elif [[ $ans == "back" ]]; then
        teach_basic_commands
        return
    else
        echo "Wrong! The correct answer is 'cd'."
    fi
    echo "Current Score: $score"
    echo

    # Question 3
    echo "3. Which command lists files in the current directory?"
    echo -n "Your answer: "
    read ans
    if [[ $ans == "ls" ]]; then
        echo "Correct!"
        ((score++))
    elif [[ $ans == "menu" ]]; then
        main_menu
        return
    elif [[ $ans == "back" ]]; then
        teach_basic_commands
        return
    else
        echo "Wrong! The correct answer is 'ls'."
    fi
    echo "Current Score: $score"
    echo

    # Question 4 (cat)
    echo "4. Which command is used to display the content of a file?"
    echo -n "Your answer: "
    read ans
    if [[ $ans == "cat" ]]; then
        echo "Correct!"
        ((score++))
    elif [[ $ans == "menu" ]]; then
        main_menu
        return
    elif [[ $ans == "back" ]]; then
        teach_basic_commands
        return
    else
        echo "Wrong! The correct answer is 'cat'."
    fi
    echo "Current Score: $score"
    echo

    # Question 5 (man)
    echo "5. Which command is used to view the manual page of another command?"
    echo -n "Your answer: "
    read ans
    if [[ $ans == "man" ]]; then
        echo "Correct!"
        ((score++))
    elif [[ $ans == "menu" ]]; then
        main_menu
        return
    elif [[ $ans == "back" ]]; then
        teach_basic_commands
        return
    else
        echo "Wrong! The correct answer is 'man'."
    fi
    echo "Current Score: $score"
    echo

    # Question 6 (help)
    echo "6. Which command shows help information about shell built-in commands?"
    echo -n "Your answer: "
    read ans
    if [[ $ans == "help" ]]; then
        echo "Correct!"
        ((score++))
    elif [[ $ans == "menu" ]]; then
        main_menu
        return
    elif [[ $ans == "back" ]]; then
        teach_basic_commands
        return
    else
        echo "Wrong! The correct answer is 'help'."
    fi
    echo "Current Score: $score"
    echo

    echo "-------------------------------------------"
    echo "Your total score: $score / 6"
    echo "-------------------------------------------"

    if [ $score -eq 6 ]; then
        echo "Excellent! You've mastered the basics!"
        echo "Press Enter to return to main menu..."
        read
        main_menu
    else
        echo "Keep practicing! Try reviewing the lesson again."
        echo "Press any key to retry or type 'menu' to go back to main menu."
        read choice
        if [[ $choice == "menu" ]]; then
            main_menu
        else
            quiz_basic_commands
        fi
    fi
}

# ---------- FUNCTION: MAIN MENU ----------
main_menu() {
    while true; do
        clear
        echo "========== MAIN MENU =========="
        echo "1. Study Linux Commands"
        echo "2. Learn Basic Linux Commands"
        echo "3. Study File Operations"
        echo "4. Learn File Operations"
        echo "5. Learn Shell Scripting"
        
        echo "6. Exit"
        echo "==============================="
        echo -n "Choose an option [1-6]: "
        read choice

        case $choice in
            1) teach_basic_commands ;;
            2) learn_basic_commands ;;
            3) teach_file_operations ;;
            4) learn_file_ops ;;
            5) learn_shell_scripting ;;
            6) echo "Goodbye, $name 👋"; exit 0 ;;
            *) echo "Invalid choice! Try again."; sleep 1 ;;
        esac
    done
}

# ---------- learn basic commands ----------
learn_basic_commands() {
    clear
    echo "Basic Linux Commands"
    echo "---------------------------------"
    echo "Try the following commands:"
    echo "1. pwd  -> Print working directory"
    echo "2. ls   -> List files in directory"
    echo "3. whoami -> Display current user"
    echo
    echo "Type any command to try it out (or type 'back' to return):"
    while true; do
        echo -n "> "
        read cmd
        if [ $cmd = "back" ]; then
            return
        elif [ $cmd = "q" ]; then
            echo "Exiting program. Bye!"
            exit 0
        else
            echo "Output:"
            eval "$cmd"
            echo
        fi
    done
}

# ---------- Learn file operation----------
learn_file_ops() {
    clear
    echo "File Operations"
    echo "----------------------------"
    echo "You’ll learn: touch, mkdir, cp, mv, rm"
    echo
    echo "Press ENTER to continue..."
    read
    echo "#1: make a directory using mkdir -> create a directory named new_dir"
    echo
    echo "#2: touch test1.txt -> creates a file named test1.txt"
    echo
    echo "#3: touch another test2.txt -> creates a file named test2.txt"
    echo
    echo "#4: copy the text1.txt file into the directory which you have created"
    echo
    echo "#6: make another directory -> create a directory named another_dir"
    echo
     echo "#7: move the text2.txt file into the second directory which you have created"
    echo
    echo "#8: remove the text1.txt file"
    echo
    
    echo "Try it yourself! Type a command or 'back' to return:"
    while true; do
        echo -n "> "
        read cmd
        if [ $cmd = "back" ]; then
            return
        else
            eval "$cmd"
        fi
    done
}

# ---------- learn shell scripting----------
learn_shell_scripting() {
    clear
    echo "Shell Scripting Basics"
    echo "----------------------------------"
    echo "A shell script is a file with .sh extension that contains commands."
    echo "Example:"
    echo '    #!/bin/bash'
    echo '    echo "Hello World!"'
    echo
    echo "Press ENTER to return to menu..."
    read
}

# ---------- MAIN PROGRAM ----------
show_banner
greet_user
main_menu
