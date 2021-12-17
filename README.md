# Anagram/antigram checker

#### By Frank Proulx

#### This is a program that allows the user to check for anagrams and antigrams by entering two words or phrases, it then returns a string indicating the result.

## Technologies Used

* Ruby
* Gems
* Rspec
* Bundler
* Sinatra
* Capybara

## Description

This program will prompt the user to enter two strings, either words or phrases, it filters out spaces and non letter characters in order to check only the letters. It uses the dictionary_lookup gem to check if the words are actual words. If the letters match exactly from the two entries it returns a string indicating they've entered anagrams. If no letters match it returns a string indicating antigrams. If none of those conditions are true it returns a string informing how many and which letters matched.

## Setup/Installation Requirements

* Create and/or navigate to the directory you would like to contain this project on your computer.
* Initialize a git repository by typing **git init** in the terminal.
* Type **git clone https://github.com/Frank-Proulx/w8_anagrams** to clone the repository to your local machine.
* Navigate into project directory by typing cd w8_anagrams  
* Type bundler in the terminal to populate gems
* Type rspec in the terminal to confirm passing of all tests
* Type ruby ./anagrams_script.rb to run the program

## Known Bugs

Dictionary_lookup sometimes returns no result for pluralized words and proper nouns, in order to account for this I added an option to bypass the dictionary_lookup and see the results anyway.

## License

[MIT](https://opensource.org/licenses/MIT)

If you have any issues, questions, ideas or concerns, please reach out to me at my email and/or make a contribution to the code via GitHub.

Copyright (c) 2021 Frank Proulx