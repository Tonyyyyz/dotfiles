#!/bin/bash

# Define colors for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${BLUE}Starting dotfiles installation...${NC}"

# List of directories to symlink/copy
# Note: I used lowercase 'wofi' here, make sure it matches your folder name!
CONFIG_DIRS=("Wofi" "hypr" "kitty" "waybar" "zsh")

# Create ~/.config if it doesn't exist
mkdir -p "$HOME/.config"

for dir in "${CONFIG_DIRS[@]}"; do
    if [ -d "$dir" ]; then
        # Backup existing config if it exists
        if [ -d "$HOME/.config/$dir" ]; then
            echo -e "${YELLOW}Backing up existing $dir config to ~/.config/${dir}.bak${NC}"
            rm -rf "$HOME/.config/${dir}.bak"
            mv "$HOME/.config/$dir" "$HOME/.config/${dir}.bak"
        fi
        
        echo -e "${GREEN}Installing $dir config...${NC}"
        cp -r "$dir" "$HOME/.config/"
    else
        echo -e "${YELLOW}Warning: Directory $dir not found in repository, skipping...${NC}"
    fi
done

# Handle .zshrc specifically
if [ -f "zsh/.zshrc" ]; then
    echo -e "${GREEN}Installing .zshrc...${NC}"
    [ -f "$HOME/.zshrc" ] && mv "$HOME/.zshrc" "$HOME/.zshrc.bak"
    cp zsh/.zshrc "$HOME/.zshrc"
fi

echo -e "${BLUE}Installation complete! Please restart your window manager.${NC}"
