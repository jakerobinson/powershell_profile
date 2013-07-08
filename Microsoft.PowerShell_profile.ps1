$snapins = @(
    "VMware.VimAutomation.Core","vmware.vimautomation.cloud"
)
$snapins | ForEach-Object { 
  if ( Get-PSSnapin -Registered $_ -ErrorAction SilentlyContinue ) {
    Add-PSSnapin $_
  }
}

function prompt
{
    "PS>"
}