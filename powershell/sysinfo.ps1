#This is a script to send an email with info about our server

#a function that returns an IP address starting with 172
function getIP {
    (get-netipaddress).IPAddress | Select-String "172*"
}

#set the IP variable
$IP=getIP

#set the Body variable
$BODY = "This machine's IP is $IP. User is $USER. Hostname is .... PowerShell Version .... Today's Date is ...."
Write-Host($BODY)

#build and send the email 
#Send-MailMessage -To "botheaj@ucmail.uc.edu" -From "me@mail.com" -Subject "IT3038C Windows SysInfo" -Body $BODY -SmtpServer smtp.gmail.com -Port 587 -UseSsl -Credential (Get-Credential)

#confirm we reached the end
Write-Host("Email sent") 