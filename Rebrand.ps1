param($path = "D:\Visual Studio Projects\Rebranding via PowerShell\Rebranding via PowerShell\Program.cs",
$pattern = "*private static string CustomName = *",
$customname = "");

(Get-Content $path) | ForEach-Object{
    if($_ -like $pattern){
        # We have found the matching line
        '		private static string CustomName = "{0}";' -f $customname
    } else {
        # Output line as is
        $_
    }
} | Set-Content $path