New-ADGroup -Name "SC_OHumeniuk" -SamAccountName SC_OHumeniuk -GroupCategory Security -GroupScope Domain local -DisplayName "SC_OHumeniuk" -Path "OU=OHUMENIUK" -Description "Something"


Add-ADGroupMember -Identity "SC_OHumeniuk" -Members (Get-DirectReport -SamAccountName "oles_humeniuk"  | Sort-Object * -Unique)

#Add-ADGroupMember -Identity "SecurityGroupName" -Members user_that_you_want_to_add_to_SC