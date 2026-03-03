#Use this to retrieve objects from AD recyclebin
Get-ADDObject -filter {isDeleted -eq $True} -IncludeDeletedObjects -Properties* | Restore Get-ADDObject