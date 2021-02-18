#!/bin/bash

# By: Kenji Miyamoto
# I made this for an office joke. Please don't actually use this as an excuse
# to play 10fastfingers or something.

GREEN='\033[0;32m'
NC='\033[0m'
LOAD_TIME=$(jot -r 1 1 3)

sleep LOAD_TIME

printf "Running via Spring preloader in process ${$}\n"

example_count=0
for (( i=0; i<30; ++i)); do
  sample_count=$(jot -r 1 1 9)
  example_count=$((example_count + sample_count))

  for (( y=0; y<$sample_count; ++y )); do
    printf "${GREEN}."
    s=$(jot -r -p 5 1 0.01 .5)

    # Old implementation
    # s=0.0
    # rand_num=$(jot -r 1 0 1)
    # rand_num2=$(jot -r 1 0 100)
    # s="${s}${rand_num}"

    sleep $s
  done

  # Old implementation
  # s=0.
  # rand_num=$(jot -r 1 0 2)
  # rand_num2=$(jot -r 1 0 100)
  # s="${s}${rand_num}${rand_num2}"
  # sleep $s
done

printf "\n\n"
#TODO: Time the whole thing to actually
printf "${NC}Finished in 7 minutes 21 seconds (files took 3.32 seconds to load)\n"
printf "${GREEN}${example_count} examples, 0 failures\n"
printf "\n"
printf "${NC}Coverage report generated for RSpec to ${PWD}/coverage. "
#TODO: A more believable covarage report

LOC=$(jot -r 1 100 900)
echo "${LOC} / ${LOC} (100.0%) covered."
