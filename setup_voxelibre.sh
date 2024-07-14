#!/bin/bash

# Navigate to the .minetest directory in the home directory
cd /var/games/minetest-server/.minetest

# Create a directory named "games" if it doesn't already exist
mkdir -p games

# Navigate to the "games" directory
cd games

# Clone the repository from the given URL
git clone https://git.minetest.land/VoxeLibre/VoxeLibre.git