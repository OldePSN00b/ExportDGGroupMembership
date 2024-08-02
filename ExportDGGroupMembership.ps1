#Exports a basic information list all members of a specific distribution from from onprem Exchange. Requires EMS.

$DGName = "your distribution group"
Get-DistributionGroupMember -Identity $DGName | Select Name, PrimarySMTPAddress |
Export-CSV "C:\*your export path*\$DGName-List-Members.csv" -NoTypeInformation -Encoding UTF8
