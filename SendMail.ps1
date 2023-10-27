$From = "mmtaipei@outlook.com"
$To = "misadmin@costco.com.tw"
#$Copy = "misadmin@costco.com.tw"
#$Attachment = "C:\Temp\file.jpg"

#auto input user name and password before send mail
$User = "mmtaipei@outlook.com"
$PWord = ConvertTo-SecureString -String "P@ssword" -AsPlainText -Force
$Credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $User, $PWord

$Date = Get-date

$Subject = "[Upload Success] " + $Date
$Body = "Upload Success."
$SMTPServer = "smtp-mail.outlook.com"
$SMTPPort = "587"

Send-MailMessage -To $To -From $From  -Subject $Subject -Body $Body  -Credential $Credential -SmtpServer $SMTPServer -Port $SMTPPort -UseSSL