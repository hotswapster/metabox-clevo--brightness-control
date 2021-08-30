#!/bin/bash
# sp = setpoint
# display = reads out the connected display
# b4 = brightness before change
# as = brightness after change

# get new setpoint
sp=$1

# Count how many displays are bconnected
displayno=$(xrandr --verbose | grep "\bconnected\b" |awk '{print $1}'|wc -l)
# Find active display
display=$(xrandr --verbose | grep "\bconnected\b" |awk '{print $1}')



if [ $displayno -eq 1 ]
  then
    echo "There is $displayno display connected."

    # Get current brightness level
    b4=$(xrandr --verbose | grep Brightness | awk '{print $2}')

    # Set new brightness level
    xrandr --output $display --brightness $sp

    # Get brightness level after change
    as=$(xrandr --verbose | grep Brightness | awk '{print $2}')

    # Tell the user what was done
    echo "The brightness was changed from $b4 to $as on display $display"
  else
    echo "There are $displayno displays connected. This script isn't smart enough to deal with more than one display. The displays connected are: $display."
    echo "If you'd like to change a display manually, type the following command the replace 'your_display' with the the display name, and the number with a number from 0.1 - 1."
    echo "xrandr --output your_display --brightness 1"
fi
