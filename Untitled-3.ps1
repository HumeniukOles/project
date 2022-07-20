New-ADGroup -Name "SecurityGroupName" -SamAccountName Enter_SG_name -GroupCategory Security -GroupScope Global -DisplayName "SecurityGroupName" -Path "Enter_path_in_AD" -Description "Any description"


Add-ADGroupMember -Identity "SecurityGroupName" -Members (Get-DirectReport -SamAccountName "user_name"  | Sort-Object * -Unique)

Add-ADGroupMember -Identity "SecurityGroupName" -Members user_that_you_want_to_add_to_SC