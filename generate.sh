#!/bin/sh

# Due to the limitations of Whiskers and the unusual color format of Mintty,
# this script is required to generate the color codes and remove the brackets as well as the word 'rgb'.

whiskers mintty.tera
whiskers mintty-alt.tera

sed -i 's/rgb//g; s/[()]//g' ./themes/catppuccin-latte ./themes/catppuccin-frappe ./themes/catppuccin-macchiato ./themes/catppuccin-mocha
sed -i 's/rgb//g; s/[()]//g' ./themes/themes-alt/catppuccin-latte-alt ./themes/themes-alt/catppuccin-frappe-alt ./themes/themes-alt/catppuccin-macchiato-alt ./themes/themes-alt/catppuccin-mocha-alt