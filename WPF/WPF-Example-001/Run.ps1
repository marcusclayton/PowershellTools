    #ERASE ALL THIS AND PUT XAML BELOW between the @" "@ 
$inputXML = @"
<Window x:Class="WPF_Example_001.MainWindow"
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        xmlns:d="http://schemas.microsoft.com/expression/blend/2008"
        xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
        xmlns:local="clr-namespace:WPF_Example_001"
        mc:Ignorable="d"
        Title="MainWindow" Height="345" Width="450">
    <Grid>
        <TabControl x:Name="tabControl">
            <TabItem Header="ComputerName" Margin="-2,-2,-9,0">
                <Grid>
                    <Grid.Background>
                        <LinearGradientBrush EndPoint="0.5,1" MappingMode="RelativeToBoundingBox" StartPoint="0.5,0">
                            <GradientStop Color="Black" Offset="0.743"/>
                            <GradientStop Color="#FF2F647C" Offset="0.32"/>
                        </LinearGradientBrush>
                    </Grid.Background>
                    <Image x:Name="image1" HorizontalAlignment="Left" Height="32" Margin="219,237,0,0" VerticalAlignment="Top" Width="32" Source="C:\GitRepos\PowershellTools\WPF\WPF-Example-001\Resources\GitHub-Mark-32px.png" Grid.Column="1"/>
                    <TextBlock x:Name="textBlock" HorizontalAlignment="Left" Height="67" Margin="27,18,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="272" FontWeight="Bold" Foreground="White" Grid.ColumnSpan="2"><Run Text="This is the official MC Automation tool. "/><LineBreak/><Run Text="To begin using this tool, first verify the "/><LineBreak/><Run Text="system is online, and proceed to Activity 1."/></TextBlock>
                    <TextBox x:Name="ComputerName" HorizontalAlignment="Left" Height="19" Margin="27,129,0,0" TextWrapping="Wrap" Text="TextBox" VerticalAlignment="Top" Width="225" Grid.ColumnSpan="2"/>
                    <Button x:Name="Verify_button" Content="Verify Online" HorizontalAlignment="Left" Height="20" Margin="130,153,0,0" VerticalAlignment="Top" Width="89" Grid.Column="1"/>
                    <TextBlock x:Name="textBlock1" HorizontalAlignment="Left" Height="31" Margin="253,245,0,0" TextWrapping="Wrap" VerticalAlignment="Top" Width="132" FontWeight="Bold" FontSize="18" Text="/marcusclayton" Foreground="#FF3C3C3C" Grid.Column="1"/>
                </Grid>
            </TabItem>
            <TabItem Header="Tab-Activity-1" IsEnabled="False" Margin="12,0,-50,-2">
                <Grid>
                    <Grid.Background>
                        <LinearGradientBrush EndPoint="0.5,1" MappingMode="RelativeToBoundingBox" StartPoint="0.5,0">
                            <GradientStop Color="Black" Offset="0.743"/>
                            <GradientStop Color="#FF2F647C" Offset="0.32"/>
                        </LinearGradientBrush>
                    </Grid.Background>
                    <Button x:Name="Load_diskinfo_button" Content="get-DiskInfo" HorizontalAlignment="Left" Height="24" Margin="10,10,0,0" VerticalAlignment="Top" Width="77"/>
                    <ListView x:Name="disk_listView" HorizontalAlignment="Left" Height="115" Margin="10,40,0,0" VerticalAlignment="Top" Width="325" RenderTransformOrigin="0.498,0.169">
                        <ListView.View>
                            <GridView>
                                <GridViewColumn Header="Drive Letter" DisplayMemberBinding ="{Binding 'Drive Letter'}" Width="80"/>
                                <GridViewColumn Header="Drive Label" DisplayMemberBinding ="{Binding 'Drive Label'}" Width="80"/>
                                <GridViewColumn Header="Size(MB)" DisplayMemberBinding ="{Binding Size(MB)}" Width="80"/>
                                <GridViewColumn Header="FreeSpace%" DisplayMemberBinding ="{Binding FreeSpace%}" Width="80"/>
                            </GridView>
                        </ListView.View>
                        <Label x:Name="DiskLabel" Content="Disk info for system: " HorizontalAlignment="Left" Height="24" Margin="117,10,0,0" VerticalAlignment="Top" Width="197" Foreground="#FFFAFAFA"/>
                    </ListView>
                </Grid>
            </TabItem>
            <TabItem Header="Tab-Activity-2" IsEnabled="False" HorizontalAlignment="Right" Height="20" VerticalAlignment="Top" Width="84" Margin="0,0,-53,0">
                <Grid>
                    <Grid.Background>
                        <LinearGradientBrush EndPoint="0.5,1" MappingMode="RelativeToBoundingBox" StartPoint="0.5,0">
                            <GradientStop Color="Black" Offset="0.743"/>
                            <GradientStop Color="#FF2F647C" Offset="0.32"/>
                        </LinearGradientBrush>
                    </Grid.Background>
                    <Button x:Name="Load_services" Content="Load Services" HorizontalAlignment="Left" Height="24" Margin="10,10,0,0" VerticalAlignment="Top" Width="77"/>
                    <ListView x:Name="service_listView" HorizontalAlignment="Left" Height="115" Margin="10,40,0,0" VerticalAlignment="Top" Width="355">
                        <ListView.View>
                            <GridView>
                                <GridViewColumn Header="Name" DisplayMemberBinding ="{Binding ServiceName}" Width="80"/>
                                <GridViewColumn Header="DisplayName" DisplayMemberBinding ="{Binding 'DisplayName'}" Width="100"/>
                                <GridViewColumn Header="Status" DisplayMemberBinding ="{Binding 'Status'}" Width="80"/>
                                <GridViewColumn Header="AutoStart" DisplayMemberBinding ="{Binding 'AutoStart'}" Width="80"/>
                            </GridView>
                        </ListView.View>
                    </ListView>
                    <Button x:Name="Stop_service" Content="Stop Service" HorizontalAlignment="Left" Height="24" Margin="129,10,0,0" VerticalAlignment="Top" Width="77"/>
                    <Button x:Name="Start_service" Content="Start Service" HorizontalAlignment="Left" Height="24" Margin="258,10,0,0" VerticalAlignment="Top" Width="77"/>
                </Grid>
            </TabItem>
            <TabItem Header="Tab-Activity-3" IsEnabled="False"  HorizontalAlignment="Left" Height="20" VerticalAlignment="Top" Width="106" Margin="57,0,-57,0">
                <Grid>
                    <Grid.Background>
                        <LinearGradientBrush EndPoint="0.5,1" MappingMode="RelativeToBoundingBox" StartPoint="0.5,0">
                            <GradientStop Color="Black" Offset="0.743"/>
                            <GradientStop Color="#FF2F647C" Offset="0.32"/>
                        </LinearGradientBrush>
                    </Grid.Background>
                    <TextBlock Name="processes_text" TextWrapping="WrapWithOverflow" VerticalAlignment="Top" Height="89" Width="314" Background="#00000000" Foreground="#FFFFF7F7" Margin="10,10,150.4,0" >
    Do something interesting :)
                    </TextBlock>
                </Grid>
            </TabItem>
        </TabControl>

    </Grid>
</Window>

"@ 

$inputXML = $inputXML -replace 'mc:Ignorable="d"','' -replace "x:N",'N' -replace '^<Win.*', '<Window'
[void][System.Reflection.Assembly]::LoadWithPartialName('presentationframework')
[xml]$XAML = $inputXML
#Read XAML

    $reader=(New-Object System.Xml.XmlNodeReader $xaml) 
  try{$Form=[Windows.Markup.XamlReader]::Load( $reader )}
catch [System.Management.Automation.MethodInvocationException] {
    Write-Warning "We ran into a problem with the XAML code.  Check the syntax for this control..."
    write-host $error[0].Exception.Message -ForegroundColor Red
    if ($error[0].Exception.Message -like "*button*"){
        write-warning "Ensure your &lt;button in the `$inputXML does NOT have a Click=ButtonClick property.  PS can't handle this`n`n`n`n"}
}
catch{#if it broke some other way :D
    Write-Host "Unable to load Windows.Markup.XamlReader. Double-check syntax and ensure .net is installed."
        }

#===========================================================================
# Store Form Objects In PowerShell
#===========================================================================

$xaml.SelectNodes("//*[@Name]") | %{Set-Variable -Name "WPF$($_.Name)" -Value $Form.FindName($_.Name)}

Function Get-FormVariables{
if ($global:ReadmeDisplay -ne $true){Write-host "If you need to reference this display again, run Get-FormVariables" -ForegroundColor Yellow;$global:ReadmeDisplay=$true}
write-host "Found the following interactable elements from our form" -ForegroundColor Cyan
get-variable WPF*
}

Get-FormVariables

#===========================================================================
# Use this space to add code to the various form elements in your GUI
#===========================================================================
                                                                   
$Form.Add_Loaded({$WPFComputerName.Text = $env:COMPUTERNAME})    

$WPFVerify_button.Add_Click({if (Test-Connection $WPFComputerName.Text -Count 1 -Quiet){
    write-host "$($WPFComputerName.Text ) responded, unlocking"
    $WPFtabControl.Items[1..3] | % {$_.IsEnabled = $true}
    }
    else{
    write-host "$($WPFComputerName.Text ) did not respond, staying locked"
    $WPFtabControl.Items[1..3] | % {$_.IsEnabled = $false}
    }
})

$WPFVerify_button.add_MouseEnter({Write-Host "Mouse On."})
$WPFVerify_button.add_MouseLeave({Write-Host "Mouse Off."})

$WPFLoad_diskinfo_button.Add_Click({
Function Get-DiskInfo {
param($computername =$env:COMPUTERNAME)
 
Get-WMIObject Win32_logicaldisk -ComputerName $computername | Select-Object @{Name='ComputerName';Ex={$computername}},`
                                                                    @{Name=‘Drive Letter‘;Expression={$_.DeviceID}},`
                                                                    @{Name=‘Drive Label’;Expression={$_.VolumeName}},`
                                                                    @{Name=‘Size(MB)’;Expression={[int]($_.Size / 1MB)}},`
                                                                    @{Name=‘FreeSpace%’;Expression={[math]::Round($_.FreeSpace / $_.Size,2)*100}}
                                                                 }
                                                                  

Get-DiskInfo -computername $WPFComputerName.Text | % {$WPFdisk_listView.AddChild($_)}
$WPFDiskLabel.Content = "Disk info for system $($WPFComputerName.Text)"

})

$WPFLoad_services.Add_Click({
    $WPFservice_listView.Items.Clear()
    get-service -ComputerName $WPFComputerName.Text | % {$WPFservice_listView.AddChild($_)}
    })

$WPFStart_service.Add_Click({
    $WPFservice_listView.SelectedItems | % {
        write-host "Starting $($_.ServiceName) on $($WPFComputerName.Text)"
        ($stat = gwmi Win32_Service -ComputerName $WPFComputerName.Text | ? Name -like $_.ServiceName).StartService()
            if ($stat -eq 0){write-host "--Success"}
            elseif ($stat -eq 2){
            write-host "--need elevated perms"
            }
            else{
            write-host "--error"
            }

        }

    write-host "Refreshing Services on $($WPFComputerName.Text)"
     $WPFservice_listView.Items.Clear()
    get-service -ComputerName $WPFComputerName.Text | % {$WPFservice_listView.AddChild($_)}
})

$WPFStop_service.Add_Click({
    $WPFservice_listView.SelectedItems | % {
        write-host "Stopping $($_.ServiceName) on $($WPFComputerName.Text)"
        ($stat = gwmi Win32_Service -ComputerName $WPFComputerName.Text | ? Name -like $_.ServiceName).StopService()
            if ($stat -eq 0){write-host "--Success"}
            elseif ($stat -eq 2){
            write-host "--need elevated perms"
            }
            else{
            write-host "--error"
            }

        }

    write-host "Refreshing Services on $($WPFComputerName.Text)"
     $WPFservice_listView.Items.Clear()
    get-service -ComputerName $WPFComputerName.Text | % {$WPFservice_listView.AddChild($_)}
})



#Adding items to a dropdown/combo box
    #$vmpicklistView.items.Add([pscustomobject]@{'VMName'=($_).Name;Status=$_.Status;Other="Yes"})
    
#Setting the text of a text box to the current PC name    
    #$WPFtextBox.Text = $env:COMPUTERNAME
    
#Adding code to a button, so that when clicked, it pings a system
# $WPFbutton.Add_Click({ Test-connection -count 1 -ComputerName $WPFtextBox.Text
# })
#===========================================================================
# Shows the form
#===========================================================================
write-host "To show the form, run the following" -ForegroundColor Cyan
'$Form.ShowDialog() | out-null'

$Form.ShowDialog() | out-null