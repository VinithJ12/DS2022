#!/bin/bash


clear
echo "Let's build a mad-lib!"

#collecting at least eight (8) variables through separate prompts to the user. Each should have a different prompt and a different variable name.

read -p "1. Name a male celebrity: " NOUN1
read -p "2. Name a country: " NOUN2
read -p "3. Name a fruit: " NOUN3
read -p "4. Name a holiday: " NOUN4
read -p "5. Name a color: " NOUN5
read -p "6. Name a kitchen appliance: " NOUN6
read -p "7. Name a pet: " NOUN7
read -p "8. Name a electronic device: " NOUN8
read -p "9. Name a way to get around: " VERB1
read -p "10. Name a way to exercise: " VERB2
read -p "11. Name a way someone would treat a cute animal: " ADVERB1




echo "Guess who I saw yesterday?!! I saw $NOUN1 and he was in $NOUN2."
echo "I saw him with a $NOUN7 and he was petting him $ADVERB1."
echo "However, I also saw him cutting $NOUN3 with a $NOUN6."
echo "I then saw him use his $NOUN5 $NOUN8 for hours because he is addicted to it."
echo "It it's funny because he was $VERB1 on $NOUN4 where all places were closed."
echo "But I've got to say, I was confused on why he was $VERB2 at 2:00 in the morning."
