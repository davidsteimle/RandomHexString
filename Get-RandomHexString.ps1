function Get-RandomHexString{
    param(
        [int]$Count = 1
    )

    $HexChain = @(0,1,2,3,4,5,6,7,8,9,'A','B','C','D','E','F')

    $i = 1
    $Return = $null

    while($i -le $Count){
        $Return += [string]$($HexChain | Get-Random)
        $i++
    }
    $Return
}

# Example "Fake UUID  : $(Get-RandomHexString -Count 8)-$(Get-RandomHexString -Count 4)-$(Get-RandomHexString -Count 4)-$(Get-RandomHexString -Count 4)-$(Get-RandomHexString -Count 12)"
