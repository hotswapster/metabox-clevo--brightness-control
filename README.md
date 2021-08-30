# Metabox Flo extended brightness control
Also works for Clevo L140MU

A bash script to adjust the brightness lower than the lowest setting.

## Use
1. Download `bright.sh`
2. Make executable `chmod +x bright.sh`
3. Execute script with a number indicating brightness desired (0 is dark, 1 is bright) `/bright.sh 1` where `1` is the brightness you desire.

Note, this is best used when the lowest brightness setting has been selected on your laptop. In the case of mine, that is 5%.
When you've finished with the dim screen, return the setting to 1.

## Limitations
Numbers higher than one will be accepted. I don't know the consequences of this.
Only works with one connected screen.

This is my first bash script so it won't be perfect.

MIT License.
