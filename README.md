# MAC-Address-API

I. File list
------------
1. getMacAddressCode.sh 
This file contains the code to get user input of MAC address and connect to API - https://api.macaddress.io/ to retrieve the Company name associated with that MAC address.

2. Dockerfile
This file contains the code to build a Docker container and copy the getMacAddressCode.sh to it.

3. README.txt

II. Technical Pre-requisites
-----------------------------
Linux OS
Docker 

III. Usage
----------
1. Copy the files getMacAddressCode.sh and Dockerfile to a new directory. 

2. From the editor invoke docker and build the container with the following command, 
docker build -t maccontainer .
Note : The . in the command is to include files in that directory

3. Once the build is successful, run the container, 
docker run -ti maccontainer

4. You will receive the root prompt, execute the code with the following command, 
./getMacAddressCode.sh

5. Enter the MAC address at prompt

6. Do not post any personally identifiable devices MAC address for testing. Use some random or test MAC addresses. 

IV. Sample output
-----------------
root@301c571ab438:/# ./getMacAddressCode.sh
Enter MAC Address :
44:38:39:ff:ef:57
Company name for the provided MAC address is Cumulus Networks, Inc
root@301c571ab438:/#  
