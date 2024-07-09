#!/bin/bash


# Phind Script
# Path to your tint2 configuration file
CONFIG_FILE=~/.config/tint2/tint2rc

# Temporary configuration file for moving the panel to the top
TEMP_CONFIG_FILE=~/.config/tint2/tint2rc_temp

# Backup the original configuration file
cp $CONFIG_FILE $CONFIG_FILE.bak

# Create a temporary configuration file with the panel at the top
sed 's/panel_position = bottom left/panel_position = top left/' $CONFIG_FILE > $TEMP_CONFIG_FILE

# Restart tint2 with the temporary configuration file
killall tint2 && tint2 -c $TEMP_CONFIG_FILE &

# Wait for 8 seconds
sleep 8

# Restore the original configuration file and restart tint2
cp $CONFIG_FILE.bak $CONFIG_FILE
killall tint2 && tint2 &

# Clean up the temporary configuration file
rm $TEMP_CONFIG_FILE
