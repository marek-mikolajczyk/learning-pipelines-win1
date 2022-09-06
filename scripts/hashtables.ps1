$global:list_of_users = "ala","ola","ela"

$global:myupdate = @{}
$global:status = @{}

$list_of_users | ForEach-Object {
    $result = $(Get-Random -minimum 0 -maximum 2)
    write-output "my name is $_ and my number is $result "
    
    $status.Add($_, $result)


    }

write-output "summary"
$status

$list_of_users | ForEach-Object {
    write-output "status for user $_ is $($status["$_"])"
    }
