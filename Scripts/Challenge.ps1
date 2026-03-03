#1. Creates an Organizational Unit (OU) named "London" if it does not exist. If it does exist 
# Write a message to the console stating that it already exists. 
# HINT: Use IF ELSE logic 
# HINT: Use IF ELSE logic 
# Use these variables: 
#$OUName = "London" 
#$DomainDN = "DC=Adatum,DC=com" 
#$OUPath = "OU=$OUName,$DomainDN" 

Get-ADOrganizationalUnit -Filter "name -eq  'OU-London,DC=Adatum,DC=com'" #<<#Verify if OU is exists w/out varable

#Make a Varable
$OUName = "London"
$DomainDN ="DC=Adatum,DC=com"
$OUPath = "OU=$OUName =DomainDN"

$OU = Get-ADOrganizationalUnit -Filter "Name -eq '$OUName'" -SearchBase $DomainDN 
   
#Create the OU with if #<# Action to perform if the condition is true #>

if ($OUName -eq $null) {
    New-ADOrganizationalUnit -Name $OUName -Path $DomainDN
    Write-Host "OU '$OUName" }
    else {
        Write-Host "OU '$OUName' already exists. clown... =)"
    }





