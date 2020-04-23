
#!/bin/bash

getApiValue()
{
   # Connect to the API to fetch the MAC Address details
   macAddress=$1
   myResponse=`curl -s --request GET 'https://api.macaddress.io/v1?apiKey=at_RJiv1CrY9k9KUeo0L17zuiVQO529L&output=json&search='$macAddress`
   echo $myResponse
}

getInput()
{
   # Get user input from command line
   echo "Enter MAC Address : "
   read macAddress
}

getCompanyName()
{
   # Extract the Company name from the API response
   myResponse=$1
   if [[ $myResponse = *'companyName'* ]]; then
        companyName=`echo $myResponse | grep -Po 'companyName":"\K[^"]*'`
        echo "Company name for the provided MAC address is " $companyName
   elif [[ $myResponse = *'error'* ]]; then
        echo "Error in API response" $myResponse
        exit
   else
        echo "Company name details not found in the API response"
   fi
}

######## Main Function start ########
getInput
myResponse=`getApiValue $macAddress`
companyName=`getCompanyName "$myResponse"`
echo $companyName

