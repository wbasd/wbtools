#!/bin/bash
echo "***************************************************"
echo "*************** WEST BRANCH PASSWORD **************"
echo "***************   UPDATE TOOL V1.0   **************"
echo "***************************************************"
echo
echo "Please follow the prompts to update your WB Account"
echo "----------------------------------------------------"
echo
echo "Please enter your username (EX: 101830 OR jsmith)"
read user
smbpasswd -U $user -r [SERVER-ADDRESS]
exit
