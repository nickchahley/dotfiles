#!/bin/bash
# pacmd set-source-volume alsa_input.pci-0000_00_1f.3.analog-stereo 13107
input="alsa_input.pci-0000_00_1f.3.analog-stereo"
level=8000

echo "Will attempt to circumvent chromium auto gain by setting microphone level over 100 ms while this script is active"
echo "input device: ${input}"

# 65535 is 100% (which is EXTREMELY LOUD)
while sleep 0.1; do pacmd set-source-volume "$input" "$level"; done


